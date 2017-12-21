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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;
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
INSERT INTO `employeetbl` (`id`, `name`, `rate`, `address1`, `address2`, `city`, `state`, `zip`, `phone`, `email`, `status`) VALUES (6,'Deb Norton',30.00,'','','',NULL,'','','',0);
INSERT INTO `employeetbl` (`id`, `name`, `rate`, `address1`, `address2`, `city`, `state`, `zip`, `phone`, `email`, `status`) VALUES (7,'April Richard',30.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1);
INSERT INTO `employeetbl` (`id`, `name`, `rate`, `address1`, `address2`, `city`, `state`, `zip`, `phone`, `email`, `status`) VALUES (8,'Kelly Cook',30.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1);
INSERT INTO `employeetbl` (`id`, `name`, `rate`, `address1`, `address2`, `city`, `state`, `zip`, `phone`, `email`, `status`) VALUES (9,'Marta Witthoft',30.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1);
INSERT INTO `employeetbl` (`id`, `name`, `rate`, `address1`, `address2`, `city`, `state`, `zip`, `phone`, `email`, `status`) VALUES (10,'Shirly Inns',30.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1);
INSERT INTO `employeetbl` (`id`, `name`, `rate`, `address1`, `address2`, `city`, `state`, `zip`, `phone`, `email`, `status`) VALUES (11,'Kerry Favazza',30.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1);
INSERT INTO `employeetbl` (`id`, `name`, `rate`, `address1`, `address2`, `city`, `state`, `zip`, `phone`, `email`, `status`) VALUES (12,'Ellen Porter',30.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1);
INSERT INTO `employeetbl` (`id`, `name`, `rate`, `address1`, `address2`, `city`, `state`, `zip`, `phone`, `email`, `status`) VALUES (13,'Jackie Amero',30.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1);
INSERT INTO `employeetbl` (`id`, `name`, `rate`, `address1`, `address2`, `city`, `state`, `zip`, `phone`, `email`, `status`) VALUES (14,'Susan Pisano',30.00,'','','',NULL,'','','',1);
INSERT INTO `employeetbl` (`id`, `name`, `rate`, `address1`, `address2`, `city`, `state`, `zip`, `phone`, `email`, `status`) VALUES (15,'Joane Demetra',30.00,'','','',NULL,'','','',1);
INSERT INTO `employeetbl` (`id`, `name`, `rate`, `address1`, `address2`, `city`, `state`, `zip`, `phone`, `email`, `status`) VALUES (16,'Jackie Blachette',30.00,'','','',NULL,'','','',1);
INSERT INTO `employeetbl` (`id`, `name`, `rate`, `address1`, `address2`, `city`, `state`, `zip`, `phone`, `email`, `status`) VALUES (17,'Jane Edwards',30.00,'','','',NULL,'','','',1);
INSERT INTO `employeetbl` (`id`, `name`, `rate`, `address1`, `address2`, `city`, `state`, `zip`, `phone`, `email`, `status`) VALUES (18,'Kathy Clark',30.00,'','','',NULL,'','','',1);
INSERT INTO `employeetbl` (`id`, `name`, `rate`, `address1`, `address2`, `city`, `state`, `zip`, `phone`, `email`, `status`) VALUES (19,'Toby McCormack',30.00,'','','','?','','','',1);
INSERT INTO `employeetbl` (`id`, `name`, `rate`, `address1`, `address2`, `city`, `state`, `zip`, `phone`, `email`, `status`) VALUES (20,'Stephane Blanchette',30.00,'','','',NULL,'','','',1);
INSERT INTO `employeetbl` (`id`, `name`, `rate`, `address1`, `address2`, `city`, `state`, `zip`, `phone`, `email`, `status`) VALUES (21,'Lois Lane',30.00,'','','',NULL,'','','',1);
INSERT INTO `employeetbl` (`id`, `name`, `rate`, `address1`, `address2`, `city`, `state`, `zip`, `phone`, `email`, `status`) VALUES (22,'Administrative Cost',1.00,'','','','?','','','',1);
INSERT INTO `employeetbl` (`id`, `name`, `rate`, `address1`, `address2`, `city`, `state`, `zip`, `phone`, `email`, `status`) VALUES (23,'Credit',-1.00,'','','','?','','','',1);
INSERT INTO `employeetbl` (`id`, `name`, `rate`, `address1`, `address2`, `city`, `state`, `zip`, `phone`, `email`, `status`) VALUES (24,'Holiday Hours',45.00,'','','','?','','','',1);
INSERT INTO `employeetbl` (`id`, `name`, `rate`, `address1`, `address2`, `city`, `state`, `zip`, `phone`, `email`, `status`) VALUES (25,'Carrie Jerome',30.00,'','','','?','','','',1);
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
  `hours` decimal(5,2) DEFAULT '0.00',
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
  `status` int(11) DEFAULT NULL,
  `enterdate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=311 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `timesheettbl`
--

LOCK TABLES `timesheettbl` WRITE;
/*!40000 ALTER TABLE `timesheettbl` DISABLE KEYS */;
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (10,1,1,27.50,'','2017-03-31 00:00:00',NULL,'2017-12-08 00:02:10');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (11,1,6,18.00,'','2017-03-31 00:00:00',NULL,'2017-12-08 00:02:26');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (12,1,7,6.00,'','2017-03-31 00:00:00',NULL,'2017-12-08 00:02:42');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (13,1,10,18.00,'','2017-03-31 00:00:00',NULL,'2017-12-08 00:03:01');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (14,1,2,26.00,'','2017-03-31 00:00:00',NULL,'2017-12-08 00:03:20');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (15,1,11,13.00,'','2017-03-31 00:00:00',NULL,'2017-12-08 00:03:34');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (16,1,12,6.00,'','2017-03-31 00:00:00',NULL,'2017-12-08 00:03:48');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (17,1,3,11.00,'','2017-03-31 00:00:00',NULL,'2017-12-08 00:04:00');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (18,1,13,13.00,'','2017-03-31 00:00:00',NULL,'2017-12-08 00:04:14');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (19,1,9,5.00,'','2017-03-31 00:00:00',NULL,'2017-12-08 00:04:29');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (20,1,8,6.00,'','2017-03-31 00:00:00',NULL,'2017-12-08 00:04:45');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (21,1,1,12.00,'','2017-03-24 00:00:00',NULL,'2017-12-08 00:16:05');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (22,1,7,5.00,'','2017-03-24 00:00:00',NULL,'2017-12-08 00:17:42');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (23,1,10,56.00,'','2017-03-24 00:00:00',NULL,'2017-12-08 00:17:54');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (24,1,5,3.00,'','2017-03-24 00:00:00',NULL,'2017-12-08 00:18:09');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (25,1,2,26.00,'','2017-03-24 00:00:00',NULL,'2017-12-08 00:18:26');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (26,1,3,59.00,'','2017-03-24 00:00:00',NULL,'2017-12-08 00:19:03');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (27,1,5,5.00,'','2017-03-24 00:00:00',NULL,'2017-12-08 00:19:24');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (28,1,1,6.00,'','2017-03-17 00:00:00',NULL,'2017-12-08 00:21:46');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (29,1,6,65.00,'','2017-03-17 00:00:00',NULL,'2017-12-08 00:25:22');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (30,1,8,7.00,'','2017-03-17 00:00:00',NULL,'2017-12-08 00:25:36');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (31,1,2,13.00,'','2017-03-17 00:00:00',NULL,'2017-12-08 00:25:47');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (32,1,3,11.00,'','2017-03-17 00:00:00',NULL,'2017-12-08 00:26:02');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (33,1,10,56.00,'','2017-03-17 00:00:00',NULL,'2017-12-08 00:26:38');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (34,1,9,10.00,'','2017-03-17 00:00:00',NULL,'2017-12-08 00:26:50');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (35,1,1,18.00,'','2017-03-10 00:00:00',NULL,'2017-12-08 00:27:55');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (36,1,6,60.00,'','2017-03-10 00:00:00',NULL,'2017-12-08 00:28:18');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (37,1,10,37.00,'','2017-03-10 00:00:00',NULL,'2017-12-08 00:28:38');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (38,1,5,15.00,'','2017-03-10 00:00:00',NULL,'2017-12-08 00:28:53');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (39,1,2,26.00,'','2017-03-10 00:00:00',NULL,'2017-12-08 00:29:11');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (40,1,8,5.00,'','2017-03-10 00:00:00',NULL,'2017-12-08 00:29:55');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (41,1,9,6.00,'','2017-03-10 00:00:00',NULL,'2017-12-08 00:30:07');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (42,1,1,12.00,'','2017-03-03 00:00:00',NULL,'2017-12-08 00:31:20');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (43,1,6,36.00,'','2017-03-03 00:00:00',NULL,'2017-12-08 00:31:30');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (44,1,10,42.00,'','2017-03-03 00:00:00',NULL,'2017-12-08 00:31:42');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (45,1,5,25.00,'','2017-03-03 00:00:00',NULL,'2017-12-08 00:31:55');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (46,1,2,12.00,'','2017-03-03 00:00:00',NULL,'2017-12-08 00:32:13');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (47,1,1,19.50,'','2017-04-21 00:00:00',NULL,'2017-12-09 14:31:28');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (48,1,2,25.00,'','2017-04-21 00:00:00',NULL,'2017-12-09 14:31:41');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (49,1,3,30.00,'','2017-04-21 00:00:00',NULL,'2017-12-09 14:31:57');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (50,1,4,34.50,'','2017-04-21 00:00:00',NULL,'2017-12-09 14:32:10');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (51,1,5,13.50,'','2017-04-21 00:00:00',NULL,'2017-12-09 14:32:28');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (52,1,6,36.00,'','2017-04-21 00:00:00',NULL,'2017-12-09 14:32:39');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (53,1,3,13.00,'3/31 notation','2017-04-21 00:00:00',NULL,'2017-12-09 14:33:08');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (54,1,1,9.00,'','2017-04-14 00:00:00',NULL,'2017-12-09 14:35:09');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (55,1,6,36.50,'','2017-04-14 00:00:00',NULL,'2017-12-09 14:35:23');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (56,1,5,15.00,'','2017-04-14 00:00:00',NULL,'2017-12-09 14:36:06');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (57,1,7,18.50,'','2017-04-14 00:00:00',NULL,'2017-12-09 14:36:41');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (58,1,2,26.00,'','2017-04-14 00:00:00',NULL,'2017-12-09 14:36:54');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (59,1,4,36.00,'','2017-04-14 00:00:00',NULL,'2017-12-09 14:37:04');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (60,1,3,19.50,'','2017-04-14 00:00:00',NULL,'2017-12-09 14:37:18');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (61,1,8,6.00,'','2017-04-14 00:00:00',NULL,'2017-12-09 14:37:33');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (62,1,9,5.00,'','2017-04-14 00:00:00',NULL,'2017-12-09 14:37:46');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (63,1,14,20.50,'','2017-03-03 00:00:00',NULL,'2017-12-09 14:41:34');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (64,1,14,30.00,'','2017-02-24 00:00:00',NULL,'2017-12-09 14:42:03');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (65,1,6,54.00,'','2017-02-24 00:00:00',NULL,'2017-12-09 14:42:13');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (66,1,5,29.00,'','2017-02-24 00:00:00',NULL,'2017-12-09 14:42:26');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (67,1,1,5.50,'','2017-02-17 00:00:00',NULL,'2017-12-09 14:43:09');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (68,1,5,20.00,'','2017-02-17 00:00:00',NULL,'2017-12-09 14:43:23');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (69,1,6,36.50,'','2017-02-17 00:00:00',NULL,'2017-12-09 14:43:35');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (70,1,14,25.00,'','2017-02-17 00:00:00',NULL,'2017-12-09 14:43:49');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (71,1,4,66.00,'','2017-02-17 00:00:00',NULL,'2017-12-09 14:44:00');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (72,1,1,3.00,'','2017-02-10 00:00:00',NULL,'2017-12-09 14:44:23');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (73,1,6,42.50,'','2017-02-10 00:00:00',NULL,'2017-12-09 14:44:38');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (74,1,5,34.00,'','2017-02-10 00:00:00',NULL,'2017-12-09 14:44:53');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (75,1,4,54.00,'','2017-02-10 00:00:00',NULL,'2017-12-09 14:45:03');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (76,1,8,4.00,'','2017-02-10 00:00:00',NULL,'2017-12-09 14:45:19');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (77,1,14,20.50,'','2017-02-10 00:00:00',NULL,'2017-12-09 14:45:29');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (78,1,15,8.00,'','2017-02-10 00:00:00',NULL,'2017-12-09 14:48:15');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (79,1,1,15.00,'','2017-02-03 00:00:00',NULL,'2017-12-09 14:48:55');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (80,1,6,36.00,'','2017-02-03 00:00:00',NULL,'2017-12-09 14:49:05');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (81,1,5,29.00,'','2017-02-03 00:00:00',NULL,'2017-12-09 14:49:15');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (82,1,16,6.00,'','2017-02-03 00:00:00',NULL,'2017-12-09 19:29:05');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (83,1,4,70.00,'','2017-02-03 00:00:00',NULL,'2017-12-09 19:29:20');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (84,1,15,3.00,'','2017-02-03 00:00:00',NULL,'2017-12-09 19:29:37');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (85,1,8,6.00,'','2017-02-03 00:00:00',NULL,'2017-12-09 19:29:52');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (86,1,14,3.00,'','2017-02-03 00:00:00',NULL,'2017-12-09 19:30:05');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (87,1,1,11.00,'','2017-01-13 00:00:00',NULL,'2017-12-09 19:30:34');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (88,1,16,9.00,'','2017-01-13 00:00:00',NULL,'2017-12-09 19:30:44');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (89,1,8,30.00,'','2017-01-13 00:00:00',NULL,'2017-12-09 19:30:56');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (90,1,4,43.00,'','2017-01-13 00:00:00',NULL,'2017-12-09 19:31:12');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (91,1,5,15.50,'','2017-01-13 00:00:00',NULL,'2017-12-09 19:31:32');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (92,1,6,41.00,'','2017-01-13 00:00:00',NULL,'2017-12-10 17:05:59');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (93,1,1,11.00,'','2017-01-06 00:00:00',NULL,'2017-12-09 19:33:48');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (94,1,6,23.00,'','2017-01-06 00:00:00',NULL,'2017-12-09 19:33:58');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (95,1,5,20.00,'','2017-01-06 00:00:00',NULL,'2017-12-09 19:34:11');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (96,1,16,17.00,'','2017-01-06 00:00:00',NULL,'2017-12-09 19:34:23');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (97,1,8,13.00,'','2017-01-06 00:00:00',NULL,'2017-12-09 19:34:33');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (98,1,4,60.00,'','2017-01-06 00:00:00',NULL,'2017-12-09 19:34:46');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (99,1,1,12.00,'','2016-12-30 00:00:00',NULL,'2017-12-09 19:36:12');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (100,1,6,23.00,'','2016-12-30 00:00:00',NULL,'2017-12-09 19:36:21');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (101,1,5,13.50,'','2016-12-30 00:00:00',NULL,'2017-12-09 19:36:33');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (102,1,8,26.00,'','2016-12-30 00:00:00',NULL,'2017-12-09 19:36:45');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (103,1,4,36.00,'','2016-12-30 00:00:00',NULL,'2017-12-09 19:36:59');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (104,1,16,6.00,'','2016-12-30 00:00:00',NULL,'2017-12-09 19:37:10');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (105,1,17,2.00,'','2016-12-30 00:00:00',NULL,'2017-12-09 19:38:38');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (106,1,5,17.00,'','2017-07-28 00:00:00',NULL,'2017-12-09 19:45:43');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (107,1,1,17.00,'','2017-07-28 00:00:00',NULL,'2017-12-09 19:45:55');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (108,1,12,31.00,'','2017-07-28 00:00:00',NULL,'2017-12-09 19:46:07');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (109,1,4,44.00,'','2017-07-28 00:00:00',NULL,'2017-12-09 19:46:24');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (110,1,3,33.00,'','2017-07-28 00:00:00',NULL,'2017-12-09 19:46:34');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (111,1,13,25.00,'','2017-07-28 00:00:00',NULL,'2017-12-09 19:46:50');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (112,1,1,16.50,'','2017-07-21 00:00:00',NULL,'2017-12-09 19:47:15');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (113,1,3,40.00,'','2017-07-21 00:00:00',NULL,'2017-12-09 19:47:26');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (114,1,12,24.00,'','2017-07-21 00:00:00',NULL,'2017-12-09 19:47:36');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (115,1,5,20.00,'','2017-07-21 00:00:00',NULL,'2017-12-09 19:47:51');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (116,1,4,44.00,'','2017-07-21 00:00:00',NULL,'2017-12-09 19:48:13');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (117,1,13,26.00,'','2017-07-21 00:00:00',NULL,'2017-12-09 19:48:27');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (118,1,1,21.00,'','2017-07-14 00:00:00',NULL,'2017-12-09 19:48:52');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (119,1,5,17.00,'','2017-07-14 00:00:00',NULL,'2017-12-09 19:49:02');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (120,1,4,69.00,'','2017-07-14 00:00:00',NULL,'2017-12-09 19:49:21');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (121,1,3,17.00,'','2017-07-14 00:00:00',NULL,'2017-12-09 19:49:34');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (122,1,12,44.00,'','2017-07-14 00:00:00',NULL,'2017-12-09 19:49:42');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (123,1,1,18.00,'','2017-07-07 00:00:00',NULL,'2017-12-09 19:50:03');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (124,1,5,17.00,'','2017-07-07 00:00:00',NULL,'2017-12-09 19:50:16');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (125,1,4,56.00,'','2017-07-07 00:00:00',NULL,'2017-12-09 19:50:26');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (126,1,13,13.00,'','2017-07-07 00:00:00',NULL,'2017-12-09 19:50:39');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (127,1,3,32.50,'','2017-07-07 00:00:00',NULL,'2017-12-09 19:50:52');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (128,1,12,31.50,'','2017-07-07 00:00:00',NULL,'2017-12-09 19:51:03');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (129,1,1,17.00,'','2017-06-30 00:00:00',NULL,'2017-12-09 19:51:35');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (130,1,5,17.00,'','2017-06-30 00:00:00',NULL,'2017-12-09 19:51:54');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (131,1,13,13.00,'','2017-06-30 00:00:00',NULL,'2017-12-09 19:52:03');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (132,1,3,34.00,'','2017-06-30 00:00:00',NULL,'2017-12-09 19:52:15');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (133,1,4,51.00,'','2017-06-30 00:00:00',NULL,'2017-12-09 19:52:29');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (134,1,12,36.00,'','2017-06-30 00:00:00',NULL,'2017-12-09 19:52:39');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (135,1,1,14.00,'','2017-06-23 00:00:00',NULL,'2017-12-09 19:53:02');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (136,1,5,12.00,'','2017-06-23 00:00:00',NULL,'2017-12-09 19:53:11');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (137,1,4,52.00,'','2017-06-23 00:00:00',NULL,'2017-12-09 19:55:02');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (138,1,3,47.00,'','2017-06-23 00:00:00',NULL,'2017-12-09 19:53:40');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (139,1,12,31.00,'','2017-06-23 00:00:00',NULL,'2017-12-09 19:53:47');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (140,1,13,13.00,'','2017-06-23 00:00:00',NULL,'2017-12-09 19:53:57');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (141,1,1,12.00,'','2017-06-16 00:00:00',NULL,'2017-12-09 19:56:07');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (142,1,1,6.00,'5/26','2017-06-16 00:00:00',NULL,'2017-12-09 19:56:22');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (143,1,1,5.00,'6/2','2017-06-16 00:00:00',NULL,'2017-12-09 19:56:39');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (144,1,5,19.00,'','2017-06-16 00:00:00',NULL,'2017-12-09 19:56:55');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (145,1,12,31.00,'','2017-06-16 00:00:00',NULL,'2017-12-09 19:57:06');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (146,1,3,38.00,'','2017-06-16 00:00:00',NULL,'2017-12-09 19:57:22');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (147,1,13,13.00,'','2017-06-16 00:00:00',NULL,'2017-12-09 19:57:34');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (148,1,4,56.00,'','2017-06-16 00:00:00',NULL,'2017-12-09 19:57:43');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (149,1,17,17.00,'','2017-06-09 00:00:00',NULL,'2017-12-09 19:58:07');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (150,1,6,36.00,'','2017-06-09 00:00:00',NULL,'2017-12-09 19:58:19');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (151,1,5,22.50,'','2017-06-09 00:00:00',NULL,'2017-12-09 19:58:38');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (152,1,3,28.00,'','2017-06-09 00:00:00',NULL,'2017-12-09 19:58:51');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (153,1,12,13.00,'','2017-06-09 00:00:00',NULL,'2017-12-09 19:59:00');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (154,1,4,51.00,'','2017-06-09 00:00:00',NULL,'2017-12-09 19:59:15');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (155,1,1,12.00,'','2017-06-02 00:00:00',NULL,'2017-12-09 19:59:33');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (156,1,6,32.00,'','2017-06-02 00:00:00',NULL,'2017-12-09 19:59:41');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (157,1,5,12.00,'','2017-06-02 00:00:00',NULL,'2017-12-09 19:59:54');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (158,1,4,43.00,'','2017-06-02 00:00:00',NULL,'2017-12-09 20:00:11');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (159,1,3,38.00,'','2017-06-02 00:00:00',NULL,'2017-12-09 20:00:22');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (160,1,12,26.00,'','2017-06-02 00:00:00',NULL,'2017-12-09 20:00:35');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (161,1,1,11.00,'','2017-05-26 00:00:00',NULL,'2017-12-09 20:01:16');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (162,1,6,36.00,'','2017-05-26 00:00:00',NULL,'2017-12-09 20:01:25');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (163,1,5,12.00,'','2017-05-26 00:00:00',NULL,'2017-12-09 20:01:37');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (164,1,4,43.00,'','2017-05-26 00:00:00',NULL,'2017-12-09 20:02:09');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (165,1,12,26.00,'','2017-05-26 00:00:00',NULL,'2017-12-09 20:02:19');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (166,1,3,41.00,'','2017-05-26 00:00:00',NULL,'2017-12-09 20:02:30');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (167,1,1,11.00,'','2017-05-19 00:00:00',NULL,'2017-12-09 20:03:02');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (168,1,5,14.00,'','2017-05-19 00:00:00',NULL,'2017-12-09 20:03:12');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (169,1,4,55.00,'','2017-05-19 00:00:00',NULL,'2017-12-09 20:03:21');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (170,1,3,41.00,'','2017-05-19 00:00:00',NULL,'2017-12-09 20:03:36');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (171,1,12,26.00,'','2017-05-19 00:00:00',NULL,'2017-12-09 20:03:48');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (172,1,6,18.00,'','2017-05-19 00:00:00',NULL,'2017-12-09 20:03:58');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (173,1,1,11.50,'','2017-05-12 00:00:00',NULL,'2017-12-09 20:04:26');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (174,1,6,36.00,'','2017-05-12 00:00:00',NULL,'2017-12-09 20:04:36');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (175,1,5,13.00,'','2017-05-12 00:00:00',NULL,'2017-12-09 20:05:20');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (176,1,12,26.00,'','2017-05-12 00:00:00',NULL,'2017-12-09 20:05:30');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (177,1,4,15.50,'','2017-05-12 00:00:00',NULL,'2017-12-09 20:05:46');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (178,1,3,15.00,'','2017-05-12 00:00:00',NULL,'2017-12-09 20:05:54');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (179,1,1,12.00,'','2017-05-05 00:00:00',NULL,'2017-12-09 20:06:17');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (180,1,3,20.50,'','2017-05-05 00:00:00',NULL,'2017-12-09 20:06:28');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (181,1,4,24.00,'','2017-05-05 00:00:00',NULL,'2017-12-09 20:06:41');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (182,1,5,12.00,'','2017-05-05 00:00:00',NULL,'2017-12-09 20:06:57');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (183,1,6,18.00,'','2017-05-05 00:00:00',NULL,'2017-12-09 20:07:05');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (184,1,12,13.00,'','2017-05-05 00:00:00',NULL,'2017-12-09 20:07:13');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (185,1,1,18.00,'','2017-04-28 00:00:00',NULL,'2017-12-09 20:07:38');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (186,1,5,12.00,'','2017-04-28 00:00:00',NULL,'2017-12-09 20:07:48');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (187,1,6,36.00,'','2017-04-28 00:00:00',NULL,'2017-12-09 20:08:23');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (188,1,4,48.00,'','2017-04-28 00:00:00',NULL,'2017-12-09 20:08:14');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (189,1,3,28.00,'','2017-04-28 00:00:00',NULL,'2017-12-09 20:08:42');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (190,1,2,26.00,'','2017-04-28 00:00:00',NULL,'2017-12-10 17:11:49');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (191,1,1,18.00,'','2017-11-10 00:00:00',NULL,'2017-12-09 20:15:20');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (192,1,18,4.00,'','2017-11-10 00:00:00',NULL,'2017-12-09 20:16:49');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (193,1,5,18.00,'','2017-11-10 00:00:00',NULL,'2017-12-09 20:17:00');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (194,1,3,63.00,'1 hr extra, sat 11/4 turned clock back 13hr nite','2017-11-10 00:00:00',NULL,'2017-12-09 20:17:45');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (195,1,13,24.00,'','2017-11-10 00:00:00',NULL,'2017-12-09 20:18:14');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (196,1,19,42.00,'','2017-11-10 00:00:00',NULL,'2017-12-09 20:19:50');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (197,1,1,18.00,'','2017-11-03 00:00:00',NULL,'2017-12-09 20:20:11');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (198,1,5,24.00,'','2017-11-03 00:00:00',NULL,'2017-12-09 20:20:21');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (199,1,3,48.00,'','2017-11-03 00:00:00',NULL,'2017-12-09 20:20:33');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (200,1,19,42.00,'','2017-11-03 00:00:00',NULL,'2017-12-09 20:20:45');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (201,1,13,24.00,'','2017-11-03 00:00:00',NULL,'2017-12-09 20:20:56');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (202,1,18,12.00,'','2017-11-03 00:00:00',NULL,'2017-12-09 20:21:08');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (203,1,18,12.00,'','2017-10-27 00:00:00',NULL,'2017-12-09 20:21:33');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (204,1,5,18.00,'','2017-10-27 00:00:00',NULL,'2017-12-09 20:21:45');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (205,1,1,18.00,'','2017-10-27 00:00:00',NULL,'2017-12-09 20:21:58');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (206,1,3,54.00,'','2017-10-27 00:00:00',NULL,'2017-12-09 20:22:08');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (207,1,19,30.00,'','2017-10-27 00:00:00',NULL,'2017-12-09 20:22:18');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (208,1,12,6.00,'','2017-10-27 00:00:00',NULL,'2017-12-09 20:22:28');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (209,1,13,24.00,'','2017-10-27 00:00:00',NULL,'2017-12-09 20:22:38');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (210,1,5,11.00,'','2017-10-20 00:00:00',NULL,'2017-12-09 20:23:12');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (211,1,3,62.00,'','2017-10-20 00:00:00',NULL,'2017-12-09 20:23:24');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (212,1,20,6.00,'','2017-10-20 00:00:00',NULL,'2017-12-09 20:24:56');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (213,1,19,29.00,'There is a note of 2.5 hrs for toby training','2017-10-20 00:00:00',NULL,'2017-12-09 20:26:51');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (214,1,12,6.50,'','2017-10-20 00:00:00',NULL,'2017-12-09 20:25:20');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (215,1,4,16.00,'','2017-10-20 00:00:00',NULL,'2017-12-09 20:25:32');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (216,1,1,12.00,'','2017-10-20 00:00:00',NULL,'2017-12-09 20:25:57');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (217,1,13,28.00,'','2017-10-20 00:00:00',NULL,'2017-12-09 20:26:08');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (218,1,1,10.00,'','2017-10-13 00:00:00',NULL,'2017-12-09 20:28:06');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (219,1,4,48.00,'','2017-10-13 00:00:00',NULL,'2017-12-09 20:28:18');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (220,1,3,61.00,'','2017-10-13 00:00:00',NULL,'2017-12-09 20:28:30');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (221,1,13,26.00,'','2017-10-13 00:00:00',NULL,'2017-12-09 20:28:47');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (222,1,12,7.00,'','2017-10-13 00:00:00',NULL,'2017-12-09 20:28:58');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (223,1,5,18.00,'','2017-10-13 00:00:00',NULL,'2017-12-09 20:29:10');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (224,1,1,2.00,'','2017-10-06 00:00:00',NULL,'2017-12-09 20:30:21');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (225,1,3,32.00,'','2017-10-06 00:00:00',NULL,'2017-12-09 20:30:35');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (226,1,12,7.00,'','2017-10-06 00:00:00',NULL,'2017-12-09 20:30:50');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (227,1,4,41.00,'','2017-10-06 00:00:00',NULL,'2017-12-09 20:31:00');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (228,1,1,12.00,'','2017-09-22 00:00:00',NULL,'2017-12-09 20:31:28');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (229,1,18,4.00,'','2017-09-22 00:00:00',NULL,'2017-12-09 20:31:40');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (230,1,5,17.00,'','2017-09-22 00:00:00',NULL,'2017-12-09 20:31:55');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (231,1,12,36.00,'','2017-09-22 00:00:00',NULL,'2017-12-09 20:32:06');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (232,1,4,38.00,'','2017-09-22 00:00:00',NULL,'2017-12-09 20:32:34');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (233,1,1,12.50,'','2017-09-15 00:00:00',NULL,'2017-12-09 20:33:34');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (234,1,5,17.00,'','2017-09-15 00:00:00',NULL,'2017-12-09 20:33:45');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (235,1,18,6.00,'','2017-09-15 00:00:00',NULL,'2017-12-09 20:33:56');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (236,1,12,23.00,'','2017-09-15 00:00:00',NULL,'2017-12-09 20:34:07');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (237,1,4,74.00,'','2017-09-15 00:00:00',NULL,'2017-12-09 20:35:05');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (238,1,3,36.00,'','2017-09-15 00:00:00',NULL,'2017-12-09 20:34:47');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (239,1,1,15.50,'','2017-09-08 00:00:00',NULL,'2017-12-09 20:35:41');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (240,1,18,6.00,'','2017-09-08 00:00:00',NULL,'2017-12-09 20:35:52');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (241,1,5,17.00,'','2017-09-08 00:00:00',NULL,'2017-12-09 20:36:06');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (242,1,3,42.50,'','2017-09-08 00:00:00',NULL,'2017-12-09 20:36:24');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (243,1,4,56.00,'','2017-09-08 00:00:00',NULL,'2017-12-09 20:36:37');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (244,1,13,13.00,'','2017-09-08 00:00:00',NULL,'2017-12-09 20:36:50');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (245,1,12,18.00,'','2017-09-08 00:00:00',NULL,'2017-12-09 20:36:58');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (246,1,1,17.00,'','2017-09-01 00:00:00',NULL,'2017-12-09 20:37:59');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (247,1,5,17.00,'','2017-09-01 00:00:00',NULL,'2017-12-09 20:38:10');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (248,1,3,42.00,'','2017-09-01 00:00:00',NULL,'2017-12-09 20:39:23');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (249,1,13,12.50,'','2017-09-01 00:00:00',NULL,'2017-12-09 20:39:41');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (250,1,4,56.00,'','2017-09-01 00:00:00',NULL,'2017-12-09 20:39:50');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (251,1,12,24.00,'','2017-09-01 00:00:00',NULL,'2017-12-09 20:39:59');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (252,1,1,17.00,'','2017-08-25 00:00:00',NULL,'2017-12-09 20:40:28');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (253,1,21,5.00,'','2017-08-25 00:00:00',NULL,'2017-12-09 20:41:51');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (254,1,12,24.00,'','2017-08-25 00:00:00',NULL,'2017-12-09 20:42:01');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (256,1,4,64.00,'','2017-08-25 00:00:00',NULL,'2017-12-09 20:42:38');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (257,1,3,42.00,'','2017-08-25 00:00:00',NULL,'2017-12-09 20:43:06');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (258,1,5,17.00,'','2017-08-25 00:00:00',NULL,'2017-12-09 20:43:17');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (259,1,1,18.00,'','2017-08-18 00:00:00',NULL,'2017-12-09 20:43:41');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (260,1,5,17.00,'','2017-08-18 00:00:00',NULL,'2017-12-09 20:43:54');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (261,1,3,34.00,'','2017-08-18 00:00:00',NULL,'2017-12-09 20:44:08');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (262,1,4,56.50,'','2017-08-18 00:00:00',NULL,'2017-12-09 20:44:22');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (263,1,12,30.00,'','2017-08-18 00:00:00',NULL,'2017-12-09 20:44:37');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (264,1,13,12.50,'','2017-08-18 00:00:00',NULL,'2017-12-09 20:45:01');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (265,1,1,17.00,'','2017-08-11 00:00:00',NULL,'2017-12-09 20:45:21');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (266,1,5,18.00,'','2017-08-11 00:00:00',NULL,'2017-12-09 20:45:31');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (267,1,4,59.00,'','2017-08-11 00:00:00',NULL,'2017-12-09 20:45:45');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (268,1,3,29.00,'','2017-08-11 00:00:00',NULL,'2017-12-09 20:46:16');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (269,1,13,12.50,'','2017-08-11 00:00:00',NULL,'2017-12-09 20:46:26');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (270,1,12,34.00,'','2017-08-11 00:00:00',NULL,'2017-12-09 20:46:35');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (271,1,1,17.00,'','2017-08-04 00:00:00',NULL,'2017-12-09 20:47:08');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (272,1,5,18.50,'','2017-08-04 00:00:00',NULL,'2017-12-09 20:47:22');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (273,1,3,34.00,'','2017-08-04 00:00:00',NULL,'2017-12-09 20:47:43');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (274,1,4,44.50,'','2017-08-04 00:00:00',NULL,'2017-12-09 20:47:58');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (275,1,13,26.00,'','2017-08-04 00:00:00',NULL,'2017-12-09 20:48:41');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (276,1,12,31.00,'','2017-08-04 00:00:00',NULL,'2017-12-09 20:49:02');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (277,1,22,100.00,'Admin fee','2017-01-13 00:00:00',NULL,'2017-12-10 17:05:51');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (278,1,23,330.00,'Credit for this week ending','2017-04-28 00:00:00',NULL,'2017-12-10 17:11:36');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (279,1,1,18.50,'','2017-11-17 00:00:00',0,'2017-12-21 20:16:12');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (280,1,5,24.00,'','2017-11-17 00:00:00',0,'2017-12-21 20:16:27');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (281,1,3,54.00,'','2017-11-17 00:00:00',0,'2017-12-21 20:16:44');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (282,1,13,24.00,'','2017-11-17 00:00:00',0,'2017-12-21 20:16:58');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (283,1,19,38.50,'','2017-11-17 00:00:00',0,'2017-12-21 20:17:13');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (284,1,1,20.50,'','2017-11-24 00:00:00',0,'2017-12-21 20:18:19');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (285,1,5,24.00,'','2017-11-24 00:00:00',0,'2017-12-21 20:18:36');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (286,1,3,43.50,'','2017-11-24 00:00:00',0,'2017-12-21 20:20:20');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (287,1,24,14.00,'Susan Demasi','2017-11-24 00:00:00',0,'2017-12-21 20:21:33');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (288,1,13,24.00,'','2017-11-24 00:00:00',0,'2017-12-21 20:21:54');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (289,1,19,32.00,'','2017-11-24 00:00:00',0,'2017-12-21 20:22:06');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (290,1,24,10.00,'Toby McCormack','2017-11-24 00:00:00',0,'2017-12-21 20:22:40');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (291,1,1,18.00,'','2017-12-01 00:00:00',0,'2017-12-21 20:23:16');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (292,1,18,6.00,'','2017-12-01 00:00:00',0,'2017-12-21 20:23:29');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (293,1,5,20.00,'','2017-12-01 00:00:00',0,'2017-12-21 20:23:53');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (294,1,3,53.00,'','2017-12-01 00:00:00',0,'2017-12-21 20:24:07');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (295,1,19,49.00,'','2017-12-01 00:00:00',0,'2017-12-21 20:24:22');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (296,1,13,28.00,'','2017-12-01 00:00:00',0,'2017-12-21 20:24:36');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (297,1,1,18.00,'','2017-12-08 00:00:00',0,'2017-12-21 20:25:57');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (298,1,5,18.00,'','2017-12-08 00:00:00',0,'2017-12-21 20:26:11');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (299,1,18,12.00,'','2017-12-08 00:00:00',0,'2017-12-21 20:26:23');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (300,1,19,42.00,'','2017-12-08 00:00:00',0,'2017-12-21 20:26:38');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (301,1,3,54.00,'','2017-12-08 00:00:00',0,'2017-12-21 20:26:55');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (302,1,13,24.00,'','2017-12-08 00:00:00',0,'2017-12-21 20:27:07');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (303,1,25,2.00,'Trained 2.5 hours','2017-12-08 00:00:00',0,'2017-12-21 20:32:29');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (304,1,1,18.00,'','2017-12-15 00:00:00',0,'2017-12-21 20:28:38');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (305,1,18,6.00,'','2017-12-15 00:00:00',0,'2017-12-21 20:28:55');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (306,1,5,18.50,'1/2 hr dentist appointment','2017-12-15 00:00:00',0,'2017-12-21 20:29:31');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (307,1,3,54.00,'','2017-12-15 00:00:00',0,'2017-12-21 20:29:45');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (308,1,19,42.00,'','2017-12-15 00:00:00',0,'2017-12-21 20:29:57');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (309,1,25,6.00,'','2017-12-15 00:00:00',0,'2017-12-21 20:30:12');
INSERT INTO `timesheettbl` (`id`, `clientid`, `employeeid`, `hours`, `comments`, `weekending`, `status`, `enterdate`) VALUES (310,1,13,24.00,'','2017-12-15 00:00:00',0,'2017-12-21 20:30:22');
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

-- Dump completed on 2017-12-21 15:34:20
