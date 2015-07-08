-- MySQL dump 10.13  Distrib 5.5.41, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: MY_BASEBALL_STATS
-- ------------------------------------------------------
-- Server version	5.5.41-0ubuntu0.14.04.1

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
-- Table structure for table `AdminTable`
--

DROP TABLE IF EXISTS `AdminTable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AdminTable` (
  `admin_id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `admin_user` varchar(30) NOT NULL,
  `admin_password` varchar(30) NOT NULL,
  `admin_email` varchar(50) DEFAULT NULL,
  `admin_status` tinyint(1) DEFAULT NULL,
  `admin_autosave` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AdminTable`
--

LOCK TABLES `AdminTable` WRITE;
/*!40000 ALTER TABLE `AdminTable` DISABLE KEYS */;
INSERT INTO `AdminTable` VALUES (1,'admin','password','subrock@gmail.com',1,1);
/*!40000 ALTER TABLE `AdminTable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserTable`
--

DROP TABLE IF EXISTS `UserTable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserTable` (
  `user_id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `user_name` varchar(30) NOT NULL,
  `user_number` varchar(30) NOT NULL,
  `user_password` varchar(30) NOT NULL,
  `user_email` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserTable`
--

LOCK TABLES `UserTable` WRITE;
/*!40000 ALTER TABLE `UserTable` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserTable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `batting`
--

DROP TABLE IF EXISTS `batting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `batting` (
  `ID` mediumint(5) NOT NULL AUTO_INCREMENT,
  `batting_user_id` mediumint(5) DEFAULT NULL,
  `game` varchar(90) DEFAULT NULL,
  `seasonID` mediumint(5) DEFAULT NULL,
  `PA` tinyint(8) DEFAULT NULL,
  `BB` tinyint(8) DEFAULT NULL,
  `SOL` tinyint(8) DEFAULT NULL,
  `SOS` tinyint(8) DEFAULT NULL,
  `RUNS` tinyint(8) DEFAULT NULL,
  `1B` tinyint(8) DEFAULT NULL,
  `2B` tinyint(8) DEFAULT NULL,
  `3B` tinyint(8) DEFAULT NULL,
  `HR` tinyint(8) DEFAULT NULL,
  `RBI` tinyint(8) DEFAULT NULL,
  `HBP` tinyint(8) DEFAULT NULL,
  `STEALS` tinyint(8) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID` (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=706 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `batting`
--

LOCK TABLES `batting` WRITE;
/*!40000 ALTER TABLE `batting` DISABLE KEYS */;
/*!40000 ALTER TABLE `batting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `games`
--

DROP TABLE IF EXISTS `games`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `games` (
  `gameID` mediumint(5) NOT NULL AUTO_INCREMENT,
  `seasonID` mediumint(5) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `team` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`gameID`),
  UNIQUE KEY `gameID` (`gameID`)
) ENGINE=MyISAM AUTO_INCREMENT=69 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `games`
--

LOCK TABLES `games` WRITE;
/*!40000 ALTER TABLE `games` DISABLE KEYS */;
/*!40000 ALTER TABLE `games` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pitching`
--

DROP TABLE IF EXISTS `pitching`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pitching` (
  `ID` mediumint(5) NOT NULL AUTO_INCREMENT,
  `pitching_user_id` mediumint(5) DEFAULT NULL,
  `game` varchar(90) DEFAULT NULL,
  `seasonID` mediumint(5) DEFAULT NULL,
  `WALKS` tinyint(8) DEFAULT NULL,
  `ER` tinyint(8) DEFAULT NULL,
  `HITS` tinyint(8) DEFAULT NULL,
  `RUNS` tinyint(8) DEFAULT NULL,
  `IP` tinyint(8) DEFAULT NULL,
  `GS` tinyint(8) DEFAULT NULL,
  `SO` tinyint(8) DEFAULT NULL,
  `WIN` tinyint(8) DEFAULT NULL,
  `SAVE` tinyint(8) DEFAULT NULL,
  `BALKS` tinyint(8) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID` (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=706 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pitching`
--

LOCK TABLES `pitching` WRITE;
/*!40000 ALTER TABLE `pitching` DISABLE KEYS */;
/*!40000 ALTER TABLE `pitching` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `season`
--

DROP TABLE IF EXISTS `season`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `season` (
  `seasonID` mediumint(5) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`seasonID`),
  UNIQUE KEY `seasonID` (`seasonID`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `season`
--

LOCK TABLES `season` WRITE;
/*!40000 ALTER TABLE `season` DISABLE KEYS */;
/*!40000 ALTER TABLE `season` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-07-07 15:40:06
