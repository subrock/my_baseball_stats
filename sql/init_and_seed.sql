-- MySQL dump 10.13  Distrib 5.5.41, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: baseball_db_v1
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
-- Table structure for table `administration`
--

DROP TABLE IF EXISTS `administration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `administration` (
  `id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `autosave` tinyint(1) DEFAULT NULL,
  `team` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `administration`
--

LOCK TABLES `administration` WRITE;
/*!40000 ALTER TABLE `administration` DISABLE KEYS */;
INSERT INTO `administration` VALUES (1,'coach','coach','subrock@gmail.com',1,1,'Dodgers');
/*!40000 ALTER TABLE `administration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `batting`
--

DROP TABLE IF EXISTS `batting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `batting` (
  `ID` mediumint(5) NOT NULL AUTO_INCREMENT,
  `playerID` mediumint(5) DEFAULT NULL,
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
) ENGINE=MyISAM AUTO_INCREMENT=151 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `batting`
--

LOCK TABLES `batting` WRITE;
/*!40000 ALTER TABLE `batting` DISABLE KEYS */;
INSERT INTO `batting` VALUES (1,55,'03/30/2015 Pre-Season - Dodgers (h) vs Red Sox',45,3,0,0,0,0,3,0,0,0,0,0,3),(2,56,'03/30/2015 Pre-Season - Dodgers (h) vs Red Sox',45,3,2,0,1,0,1,0,0,0,1,0,1),(4,65,'03/30/2015 Pre-Season - Dodgers (h) vs Red Sox',45,3,1,0,2,0,0,0,0,0,0,0,0),(5,63,'03/30/2015 Pre-Season - Dodgers (h) vs Red Sox',45,3,0,0,0,1,1,1,0,0,1,0,0),(6,61,'03/30/2015 Pre-Season - Dodgers (h) vs Red Sox',45,3,0,0,0,1,2,0,0,0,2,0,2),(7,59,'03/30/2015 Pre-Season - Dodgers (h) vs Red Sox',45,3,1,0,0,0,0,0,0,0,0,0,0),(8,54,'03/30/2015 Pre-Season - Dodgers (h) vs Red Sox',45,2,0,0,0,0,1,0,0,0,0,0,0),(9,64,'03/30/2015 Pre-Season - Dodgers (h) vs Red Sox',45,2,0,0,0,0,0,0,0,0,0,0,0),(10,57,'03/30/2015 Pre-Season - Dodgers (h) vs Red Sox',45,2,2,0,0,1,0,0,0,0,0,0,3),(11,62,'03/30/2015 Pre-Season - Dodgers (h) vs Red Sox',45,2,0,2,0,0,0,0,0,0,0,0,0),(12,58,'03/30/2015 Pre-Season - Dodgers (h) vs Red Sox',45,2,1,0,0,1,0,0,0,0,0,0,0),(14,55,'04/04/2015 Pre-Season - Dodgers vs Vashon (h)',45,4,0,0,0,1,1,1,1,0,1,0,2),(15,61,'04/04/2015 Pre-Season - Dodgers vs Vashon (h)',45,3,1,0,1,2,1,0,0,0,1,0,0),(16,61,'04/22/2015 Regular Season - Dodgers (h) vs Yankees',46,3,1,0,0,2,1,0,0,0,0,0,3),(17,63,'04/22/2015 Regular Season - Dodgers (h) vs Yankees',46,3,1,1,0,2,0,0,0,0,0,1,3),(18,65,'04/22/2015 Regular Season - Dodgers (h) vs Yankees',46,3,0,0,0,0,2,0,0,0,3,0,2),(19,56,'04/22/2015 Regular Season - Dodgers (h) vs Yankees',46,3,1,0,0,1,2,0,0,0,1,0,3),(20,62,'04/22/2015 Regular Season - Dodgers (h) vs Yankees',46,3,0,3,0,0,0,0,0,0,0,0,0),(21,60,'04/22/2015 Regular Season - Dodgers (h) vs Yankees',46,3,1,0,0,0,2,0,0,0,2,0,4),(23,64,'04/22/2015 Regular Season - Dodgers (h) vs Yankees',46,3,1,2,0,0,0,0,0,0,0,0,0),(24,57,'04/22/2015 Regular Season - Dodgers (h) vs Yankees',46,3,0,3,0,0,0,0,0,0,0,0,0),(25,54,'04/22/2015 Regular Season - Dodgers (h) vs Yankees',46,3,0,2,0,1,0,1,0,0,0,0,2),(26,59,'04/22/2015 Regular Season - Dodgers (h) vs Yankees',46,3,0,2,0,0,0,0,0,0,0,0,0),(27,58,'04/22/2015 Regular Season - Dodgers (h) vs Yankees',46,3,1,2,0,1,0,0,0,0,0,0,1),(28,61,'04/25/2015 Regular Season - Dodgers (h) vs Red Sox',46,4,1,0,0,1,1,0,0,0,0,0,4),(29,56,'04/25/2015 Regular Season - Dodgers (h) vs Red Sox',46,4,0,0,0,2,2,0,0,0,1,0,1),(30,60,'04/25/2015 Regular Season - Dodgers (h) vs Red Sox',46,3,0,0,0,1,2,0,0,0,1,0,2),(31,65,'04/25/2015 Regular Season - Dodgers (h) vs Red Sox',46,3,0,0,0,1,1,0,0,0,2,0,1),(32,63,'04/25/2015 Regular Season - Dodgers (h) vs Red Sox',46,2,1,0,0,0,1,0,0,0,0,0,3),(33,62,'04/25/2015 Regular Season - Dodgers (h) vs Red Sox',46,3,0,3,0,0,0,0,0,0,0,0,0),(34,54,'04/25/2015 Regular Season - Dodgers (h) vs Red Sox',46,3,0,0,0,0,2,0,0,0,1,0,3),(35,64,'04/25/2015 Regular Season - Dodgers (h) vs Red Sox',46,3,0,2,0,0,0,0,0,0,0,0,0),(36,59,'04/25/2015 Regular Season - Dodgers (h) vs Red Sox',46,3,1,0,0,1,0,0,0,0,0,0,2),(37,58,'04/25/2015 Regular Season - Dodgers (h) vs Red Sox',46,3,0,3,0,0,0,0,0,0,0,0,0),(38,65,'04/04/2015 Pre-Season - Dodgers vs Vashon (h)',45,3,0,0,0,2,1,0,1,0,1,0,2),(39,60,'04/04/2015 Pre-Season - Dodgers vs Vashon (h)',45,3,1,0,0,1,1,0,0,0,1,0,2),(40,54,'04/04/2015 Pre-Season - Dodgers vs Vashon (h)',45,3,0,0,0,2,1,1,0,0,1,0,1),(41,64,'04/04/2015 Pre-Season - Dodgers vs Vashon (h)',45,3,0,1,0,0,1,0,0,0,0,0,1),(42,57,'04/04/2015 Pre-Season - Dodgers vs Vashon (h)',45,3,0,0,0,0,0,1,0,0,0,0,0),(43,62,'04/04/2015 Pre-Season - Dodgers vs Vashon (h)',45,3,1,0,0,1,0,0,0,0,0,0,2),(44,58,'04/04/2015 Pre-Season - Dodgers vs Vashon (h)',45,3,0,3,0,0,0,0,0,0,0,0,0),(45,60,'04/27/2015 Regular Season - Dodgers vs Mariners (h)',46,4,0,0,0,3,4,0,0,0,1,0,7),(46,56,'04/27/2015 Regular Season - Dodgers vs Mariners (h)',46,4,2,0,0,2,1,0,1,0,2,0,4),(47,65,'04/27/2015 Regular Season - Dodgers vs Mariners (h)',46,4,1,0,0,1,1,0,0,0,0,0,3),(48,59,'04/27/2015 Regular Season - Dodgers vs Mariners (h)',46,4,1,0,0,2,3,0,0,0,1,0,2),(49,63,'04/27/2015 Regular Season - Dodgers vs Mariners (h)',46,4,0,0,0,0,1,1,0,0,3,0,3),(50,54,'04/27/2015 Regular Season - Dodgers vs Mariners (h)',46,3,0,1,0,1,1,0,0,0,0,0,0),(51,57,'04/27/2015 Regular Season - Dodgers vs Mariners (h)',46,3,1,2,0,0,0,0,0,0,0,0,0),(52,62,'04/27/2015 Regular Season - Dodgers vs Mariners (h)',46,3,0,1,0,1,1,0,0,0,0,0,1),(53,58,'04/27/2015 Regular Season - Dodgers vs Mariners (h)',46,3,2,1,0,1,0,0,0,0,0,0,0),(54,55,'04/27/2015 Regular Season - Dodgers vs Mariners (h)',46,3,0,0,0,1,1,0,0,0,2,0,0),(55,60,'04/29/2015 Regular Season - Dodgers (h) vs Vashon',46,3,0,2,0,1,1,0,0,0,0,0,3),(56,55,'04/29/2015 Regular Season - Dodgers (h) vs Vashon',46,3,2,0,0,1,0,0,0,0,0,0,2),(57,56,'04/29/2015 Regular Season - Dodgers (h) vs Vashon',46,3,0,0,0,1,2,0,0,0,2,0,1),(58,65,'04/29/2015 Regular Season - Dodgers (h) vs Vashon',46,3,0,0,0,1,2,0,0,0,1,0,2),(59,63,'04/29/2015 Regular Season - Dodgers (h) vs Vashon',46,3,0,0,0,3,2,1,0,0,1,0,4),(60,61,'04/29/2015 Regular Season - Dodgers (h) vs Vashon',46,3,1,0,0,3,1,1,0,0,2,0,4),(61,59,'04/29/2015 Regular Season - Dodgers (h) vs Vashon',46,3,0,1,0,1,1,0,0,0,1,0,0),(62,54,'04/29/2015 Regular Season - Dodgers (h) vs Vashon',46,3,0,0,0,1,2,0,0,0,2,0,1),(63,62,'04/29/2015 Regular Season - Dodgers (h) vs Vashon',46,3,0,2,0,0,1,0,0,0,2,0,0),(64,58,'04/29/2015 Regular Season - Dodgers (h) vs Vashon',46,3,1,2,0,0,0,0,0,0,0,0,2),(65,57,'04/29/2015 Regular Season - Dodgers (h) vs Vashon',46,2,1,1,0,1,0,0,0,0,0,0,1),(66,60,'05/02/2015 Regular Season - Dodgers vs Athletics (h)',46,4,0,0,NULL,0,1,0,1,0,0,0,2),(67,55,'05/02/2015 Regular Season - Dodgers vs Athletics (h)',46,2,1,1,NULL,1,0,0,0,0,0,0,2),(68,56,'05/02/2015 Regular Season - Dodgers vs Athletics (h)',46,2,0,1,NULL,1,1,0,0,0,0,0,0),(69,63,'05/02/2015 Regular Season - Dodgers vs Athletics (h)',46,4,0,0,NULL,3,1,1,1,1,2,0,1),(70,61,'05/02/2015 Regular Season - Dodgers vs Athletics (h)',46,4,0,1,NULL,3,1,2,0,0,2,0,5),(71,54,'05/02/2015 Regular Season - Dodgers vs Athletics (h)',46,4,0,1,NULL,2,3,0,0,0,1,0,5),(72,64,'05/02/2015 Regular Season - Dodgers vs Athletics (h)',46,3,1,0,NULL,0,0,1,0,0,1,0,2),(73,57,'05/02/2015 Regular Season - Dodgers vs Athletics (h)',46,3,0,2,NULL,0,0,0,0,0,0,0,0),(74,62,'05/02/2015 Regular Season - Dodgers vs Athletics (h)',46,3,0,1,NULL,0,1,0,0,0,0,0,1),(75,58,'05/02/2015 Regular Season - Dodgers vs Athletics (h)',46,3,0,3,NULL,0,0,0,0,0,0,0,0),(76,61,'05/06/2015 Regular Season - Dodgers (h) vs Giants',46,3,1,0,NULL,2,1,0,0,0,0,0,5),(77,55,'05/06/2015 Regular Season - Dodgers (h) vs Giants',46,3,1,0,NULL,1,1,0,0,0,1,0,2),(78,63,'05/06/2015 Regular Season - Dodgers (h) vs Giants',46,3,1,0,NULL,1,1,0,0,0,0,0,4),(79,54,'05/06/2015 Regular Season - Dodgers (h) vs Giants',46,3,2,0,NULL,1,1,0,0,0,2,0,2),(80,60,'05/06/2015 Regular Season - Dodgers (h) vs Giants',46,3,1,2,NULL,0,0,0,0,0,0,0,1),(81,62,'05/06/2015 Regular Season - Dodgers (h) vs Giants',46,3,1,2,NULL,0,0,0,0,0,0,0,1),(82,64,'05/06/2015 Regular Season - Dodgers (h) vs Giants',46,3,1,1,NULL,0,0,0,0,0,1,0,0),(83,56,'05/06/2015 Regular Season - Dodgers (h) vs Giants',46,3,0,0,NULL,2,0,2,1,0,0,0,2),(84,57,'05/06/2015 Regular Season - Dodgers (h) vs Giants',46,3,1,1,NULL,0,0,0,0,0,1,0,0),(85,61,'05/09/2015 Regular Season - Dodgers vs Red Sox (h)',46,4,0,0,NULL,2,2,0,0,0,0,0,4),(86,56,'05/09/2015 Regular Season - Dodgers vs Red Sox (h)',46,4,1,1,NULL,1,0,0,0,0,0,0,2),(87,63,'05/09/2015 Regular Season - Dodgers vs Red Sox (h)',46,4,0,0,NULL,1,3,0,0,0,1,0,6),(88,54,'05/09/2015 Regular Season - Dodgers vs Red Sox (h)',46,4,1,1,NULL,1,0,0,0,0,0,0,1),(89,57,'05/09/2015 Regular Season - Dodgers vs Red Sox (h)',46,3,1,2,NULL,1,0,0,0,0,0,0,1),(90,60,'05/09/2015 Regular Season - Dodgers vs Red Sox (h)',46,3,0,0,NULL,2,3,0,0,0,2,0,5),(91,62,'05/09/2015 Regular Season - Dodgers vs Red Sox (h)',46,3,2,1,NULL,0,0,0,0,0,2,0,2),(92,59,'05/09/2015 Regular Season - Dodgers vs Red Sox (h)',46,3,0,0,NULL,0,1,0,0,0,1,0,0),(93,58,'05/09/2015 Regular Season - Dodgers vs Red Sox (h)',46,3,1,2,NULL,0,0,0,0,0,0,0,0),(94,64,'05/09/2015 Regular Season - Dodgers vs Red Sox (h)',46,3,1,2,NULL,0,0,0,0,0,0,0,0),(95,60,'05/11/2015 Regular Season - Dodgers vs White Sox (h)',46,3,0,0,NULL,2,2,0,0,0,0,0,2),(96,55,'05/11/2015 Regular Season - Dodgers vs White Sox (h)',46,3,1,0,NULL,2,1,0,0,0,1,0,3),(97,61,'05/11/2015 Regular Season - Dodgers vs White Sox (h)',46,3,1,0,NULL,1,1,0,0,0,0,0,2),(98,65,'05/11/2015 Regular Season - Dodgers vs White Sox (h)',46,3,0,1,NULL,1,1,0,0,0,2,0,2),(99,56,'05/11/2015 Regular Season - Dodgers vs White Sox (h)',46,3,0,0,NULL,1,3,0,0,0,2,0,3),(100,63,'05/11/2015 Regular Season - Dodgers vs White Sox (h)',46,3,0,3,NULL,0,0,0,0,0,0,0,0),(101,54,'05/11/2015 Regular Season - Dodgers vs White Sox (h)',46,3,0,1,NULL,0,2,0,0,0,1,0,1),(102,59,'05/11/2015 Regular Season - Dodgers vs White Sox (h)',46,3,0,1,NULL,0,0,0,0,0,0,0,0),(103,64,'05/11/2015 Regular Season - Dodgers vs White Sox (h)',46,2,0,2,NULL,0,0,0,0,0,0,0,0),(104,62,'05/11/2015 Regular Season - Dodgers vs White Sox (h)',46,2,1,1,NULL,0,0,0,0,0,0,0,0),(105,57,'05/11/2015 Regular Season - Dodgers vs White Sox (h)',46,2,0,2,NULL,0,0,0,0,0,0,0,0),(106,58,'05/11/2015 Regular Season - Dodgers vs White Sox (h)',46,2,0,2,NULL,0,0,0,0,0,0,0,0),(107,60,'05/16/2015 Regular Season - Dodgers (h) vs Mariners',46,4,0,0,NULL,1,3,0,0,0,2,0,1),(108,61,'05/16/2015 Regular Season - Dodgers (h) vs Mariners',46,4,0,0,NULL,3,3,0,0,0,2,0,3),(109,55,'05/16/2015 Regular Season - Dodgers (h) vs Mariners',46,4,0,0,NULL,1,1,1,0,0,2,0,2),(110,65,'05/16/2015 Regular Season - Dodgers (h) vs Mariners',46,2,0,0,NULL,0,1,0,0,0,0,1,2),(111,63,'05/16/2015 Regular Season - Dodgers (h) vs Mariners',46,4,0,4,NULL,0,0,0,0,0,0,0,0),(112,54,'05/16/2015 Regular Season - Dodgers (h) vs Mariners',46,4,0,0,NULL,0,0,0,0,0,0,0,0),(113,62,'05/16/2015 Regular Season - Dodgers (h) vs Mariners',46,3,0,0,NULL,1,1,0,0,0,0,0,0),(114,64,'05/16/2015 Regular Season - Dodgers (h) vs Mariners',46,3,1,0,NULL,1,0,0,0,0,0,0,0),(115,57,'05/16/2015 Regular Season - Dodgers (h) vs Mariners',46,3,0,3,NULL,0,0,0,0,0,0,0,0),(116,58,'05/16/2015 Regular Season - Dodgers (h) vs Mariners',46,3,2,1,NULL,1,0,0,0,0,0,0,0),(117,60,'05/18/2015 Regular Season - Dodgers vs Vashon (h)',46,4,1,0,NULL,2,1,1,0,0,2,0,0),(118,61,'05/18/2015 Regular Season - Dodgers vs Vashon (h)',46,4,0,0,NULL,3,2,0,2,0,2,0,0),(119,54,'05/18/2015 Regular Season - Dodgers vs Vashon (h)',46,4,0,1,NULL,1,1,0,1,0,3,0,1),(120,56,'05/18/2015 Regular Season - Dodgers vs Vashon (h)',46,3,0,0,NULL,2,1,0,1,0,2,0,3),(121,55,'05/18/2015 Regular Season - Dodgers vs Vashon (h)',46,3,1,0,NULL,2,1,0,0,0,0,1,6),(122,63,'05/18/2015 Regular Season - Dodgers vs Vashon (h)',46,0,2,0,NULL,0,0,0,0,0,0,1,1),(123,59,'05/18/2015 Regular Season - Dodgers vs Vashon (h)',46,3,0,0,NULL,0,0,1,0,0,2,0,0),(124,62,'05/18/2015 Regular Season - Dodgers vs Vashon (h)',46,0,1,2,NULL,0,0,0,0,0,0,0,0),(125,64,'05/18/2015 Regular Season - Dodgers vs Vashon (h)',46,3,1,1,NULL,1,0,0,0,0,0,0,1),(126,58,'05/18/2015 Regular Season - Dodgers vs Vashon (h)',46,0,1,2,NULL,1,0,0,0,0,0,0,0),(127,60,'05/20/2015 Regular Season - Dodgers vs Giants (h)',46,3,0,0,NULL,2,3,0,0,0,0,0,2),(128,61,'05/20/2015 Regular Season - Dodgers vs Giants (h)',46,3,0,0,NULL,1,0,1,0,0,1,0,0),(129,55,'05/20/2015 Regular Season - Dodgers vs Giants (h)',46,3,0,0,NULL,0,2,0,0,0,2,0,0),(130,65,'05/20/2015 Regular Season - Dodgers vs Giants (h)',46,3,0,0,NULL,0,0,1,0,0,0,0,0),(131,54,'05/20/2015 Regular Season - Dodgers vs Giants (h)',46,3,0,1,NULL,1,1,0,0,0,0,0,0),(132,63,'05/20/2015 Regular Season - Dodgers vs Giants (h)',46,3,2,0,NULL,2,0,1,0,0,0,0,2),(133,58,'05/20/2015 Regular Season - Dodgers vs Giants (h)',46,3,0,3,NULL,0,0,0,0,0,0,0,0),(134,59,'05/20/2015 Regular Season - Dodgers vs Giants (h)',46,2,0,0,NULL,0,1,0,1,0,2,0,0),(135,62,'05/20/2015 Regular Season - Dodgers vs Giants (h)',46,2,0,2,NULL,0,0,0,0,0,0,0,0),(136,64,'05/20/2015 Regular Season - Dodgers vs Giants (h)',46,2,0,1,NULL,0,0,0,0,0,0,0,0),(137,57,'05/20/2015 Regular Season - Dodgers vs Giants (h)',46,2,0,1,NULL,0,1,0,0,0,0,0,0),(138,56,'05/20/2015 Regular Season - Dodgers vs Giants (h)',46,3,0,2,NULL,1,0,1,0,0,0,0,2),(139,60,'05/27/2015 Regular Season - Dodgers (h) vs Athletics',46,3,0,0,NULL,2,2,0,0,0,0,0,4),(140,61,'05/27/2015 Regular Season - Dodgers (h) vs Athletics',46,3,0,0,NULL,2,1,0,1,0,3,0,2),(141,55,'05/27/2015 Regular Season - Dodgers (h) vs Athletics',46,3,0,1,NULL,2,1,1,0,0,0,0,2),(142,65,'05/27/2015 Regular Season - Dodgers (h) vs Athletics',46,3,0,0,NULL,2,0,2,1,0,3,0,2),(143,56,'05/27/2015 Regular Season - Dodgers (h) vs Athletics',46,3,1,1,NULL,1,1,0,0,0,1,0,3),(144,54,'05/27/2015 Regular Season - Dodgers (h) vs Athletics',46,3,1,1,NULL,0,0,0,0,0,0,0,0),(145,63,'05/27/2015 Regular Season - Dodgers (h) vs Athletics',46,3,1,1,NULL,2,0,0,0,1,2,0,2),(146,58,'05/27/2015 Regular Season - Dodgers (h) vs Athletics',46,3,0,2,NULL,0,0,0,0,0,0,1,2),(147,59,'05/27/2015 Regular Season - Dodgers (h) vs Athletics',46,3,0,1,NULL,0,0,0,0,0,0,0,0),(148,62,'05/27/2015 Regular Season - Dodgers (h) vs Athletics',46,3,1,1,NULL,1,1,0,0,0,0,0,0),(149,64,'05/27/2015 Regular Season - Dodgers (h) vs Athletics',46,2,1,1,NULL,0,0,0,0,0,0,0,0),(150,57,'05/27/2015 Regular Season - Dodgers (h) vs Athletics',46,2,0,2,NULL,0,0,0,0,0,0,0,0);
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
  `playerID` mediumint(5) DEFAULT NULL,
  `game` varchar(90) DEFAULT NULL,
  `seasonID` mediumint(5) DEFAULT NULL,
  `WALKS` tinyint(8) DEFAULT NULL,
  `ER` tinyint(8) DEFAULT NULL,
  `HITS` tinyint(8) DEFAULT NULL,
  `RUNS` tinyint(8) DEFAULT NULL,
  `IP` decimal(6,2) DEFAULT NULL,
  `GS` tinyint(8) DEFAULT NULL,
  `SO` tinyint(8) DEFAULT NULL,
  `WIN` tinyint(8) DEFAULT NULL,
  `SAVE` tinyint(8) DEFAULT NULL,
  `BALKS` tinyint(8) DEFAULT NULL,
  `PC` tinyint(8) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID` (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=48 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pitching`
--

LOCK TABLES `pitching` WRITE;
/*!40000 ALTER TABLE `pitching` DISABLE KEYS */;
INSERT INTO `pitching` VALUES (1,54,'04/27/2015 Regular Season - Dodgers vs Mariners (h)',46,6,7,4,NULL,0.67,1,0,0,0,NULL,48),(3,65,'04/27/2015 Regular Season - Dodgers vs Mariners (h)',46,1,2,2,NULL,1.33,0,1,0,0,NULL,21),(4,56,'04/27/2015 Regular Season - Dodgers vs Mariners (h)',46,1,10,11,NULL,2.00,0,1,0,0,NULL,41),(5,60,'04/29/2015 Regular Season - Dodgers (h) vs Vashon',46,2,7,6,NULL,2.00,1,3,1,0,NULL,53),(6,61,'04/29/2015 Regular Season - Dodgers (h) vs Vashon',46,1,1,3,NULL,2.67,0,4,0,1,NULL,45),(7,63,'04/25/2015 Regular Season - Dodgers (h) vs Red Sox',46,1,5,4,NULL,2.00,1,3,0,0,NULL,41),(8,64,'04/25/2015 Regular Season - Dodgers (h) vs Red Sox',46,1,5,4,NULL,1.00,0,0,0,0,NULL,24),(9,65,'04/25/2015 Regular Season - Dodgers (h) vs Red Sox',46,2,2,4,NULL,2.00,0,1,0,0,NULL,36),(10,56,'04/25/2015 Regular Season - Dodgers (h) vs Red Sox',46,2,6,5,NULL,2.00,0,2,0,0,NULL,36),(11,61,'04/22/2015 Regular Season - Dodgers (h) vs Yankees',46,3,4,4,NULL,3.00,1,2,0,0,NULL,65),(12,65,'04/22/2015 Regular Season - Dodgers (h) vs Yankees',46,1,10,12,NULL,3.00,0,1,0,0,NULL,50),(13,65,'04/04/2015 Pre-Season - Dodgers vs Vashon (h)',45,4,2,2,NULL,2.00,1,6,0,0,NULL,51),(14,54,'04/04/2015 Pre-Season - Dodgers vs Vashon (h)',45,1,3,3,NULL,1.00,0,2,0,0,NULL,33),(15,60,'04/04/2015 Pre-Season - Dodgers vs Vashon (h)',45,7,5,1,NULL,1.00,0,1,0,0,NULL,48),(16,55,'04/04/2015 Pre-Season - Dodgers vs Vashon (h)',45,1,2,2,NULL,1.00,0,1,0,0,NULL,30),(17,55,'03/30/2015 Pre-Season - Dodgers (h) vs Red Sox',45,0,0,1,NULL,1.00,1,1,0,0,NULL,18),(18,56,'03/30/2015 Pre-Season - Dodgers (h) vs Red Sox',45,2,1,1,NULL,1.00,0,1,0,0,NULL,26),(19,65,'03/30/2015 Pre-Season - Dodgers (h) vs Red Sox',45,1,1,2,NULL,1.00,0,1,0,0,NULL,25),(20,63,'03/30/2015 Pre-Season - Dodgers (h) vs Red Sox',45,2,1,1,NULL,1.00,0,2,0,0,NULL,27),(21,54,'03/30/2015 Pre-Season - Dodgers (h) vs Red Sox',45,2,6,5,NULL,1.00,0,0,0,0,NULL,23),(22,56,'05/02/2015 Regular Season - Dodgers vs Athletics (h)',46,1,4,5,NULL,2.00,1,3,0,0,NULL,44),(23,61,'05/02/2015 Regular Season - Dodgers vs Athletics (h)',46,1,6,6,NULL,2.00,0,3,0,0,NULL,45),(24,63,'05/02/2015 Regular Season - Dodgers vs Athletics (h)',46,2,1,0,NULL,1.00,0,2,0,0,NULL,20),(25,99,'05/02/2015 Regular Season - Dodgers vs Athletics (h)',46,3,4,3,NULL,1.00,0,1,0,0,NULL,37),(26,56,'05/06/2015 Regular Season - Dodgers (h) vs Giants',46,3,7,7,NULL,2.00,1,4,0,0,NULL,58),(27,55,'05/06/2015 Regular Season - Dodgers (h) vs Giants',46,2,3,2,NULL,2.00,0,2,0,0,NULL,37),(28,61,'05/06/2015 Regular Season - Dodgers (h) vs Giants',46,2,2,3,NULL,2.00,0,2,0,0,NULL,38),(29,60,'05/09/2015 Regular Season - Dodgers vs Red Sox (h)',46,4,6,3,NULL,2.00,1,4,0,0,NULL,52),(30,63,'05/09/2015 Regular Season - Dodgers vs Red Sox (h)',46,1,4,5,NULL,3.67,0,5,0,0,NULL,65),(31,61,'05/09/2015 Regular Season - Dodgers vs Red Sox (h)',46,0,0,1,NULL,0.33,0,0,0,0,NULL,5),(32,65,'05/11/2015 Regular Season - Dodgers vs White Sox (h)',46,4,5,5,NULL,3.00,1,1,0,0,NULL,49),(33,55,'05/11/2015 Regular Season - Dodgers vs White Sox (h)',46,0,4,5,NULL,1.00,0,0,0,0,NULL,23),(34,61,'05/11/2015 Regular Season - Dodgers vs White Sox (h)',46,0,1,4,NULL,2.00,0,1,0,0,NULL,19),(35,65,'05/16/2015 Regular Season - Dodgers (h) vs Mariners',46,6,4,3,NULL,2.67,1,2,0,0,NULL,67),(36,55,'05/16/2015 Regular Season - Dodgers (h) vs Mariners',46,3,4,3,NULL,1.33,0,2,0,0,NULL,35),(37,61,'05/16/2015 Regular Season - Dodgers (h) vs Mariners',46,0,5,11,NULL,3.00,0,1,0,0,NULL,44),(38,60,'05/18/2015 Regular Season - Dodgers vs Vashon (h)',46,1,0,0,NULL,2.00,1,4,1,0,NULL,31),(39,62,'05/18/2015 Regular Season - Dodgers vs Vashon (h)',46,6,10,6,NULL,1.00,0,1,0,0,NULL,61),(40,56,'05/18/2015 Regular Season - Dodgers vs Vashon (h)',46,1,1,3,NULL,2.00,0,4,0,1,NULL,28),(41,61,'05/20/2015 Regular Season - Dodgers vs Giants (h)',46,0,8,8,NULL,2.00,1,1,0,0,NULL,50),(42,55,'05/20/2015 Regular Season - Dodgers vs Giants (h)',46,0,4,6,NULL,1.00,0,0,0,0,NULL,40),(43,56,'05/20/2015 Regular Season - Dodgers vs Giants (h)',46,0,1,2,NULL,2.00,0,2,0,0,NULL,28),(44,60,'05/27/2015 Regular Season - Dodgers (h) vs Athletics',46,0,1,2,NULL,2.00,1,0,0,0,NULL,24),(45,61,'05/27/2015 Regular Season - Dodgers (h) vs Athletics',46,0,5,5,NULL,2.00,0,2,0,0,NULL,28),(46,56,'05/27/2015 Regular Season - Dodgers (h) vs Athletics',46,5,9,3,NULL,0.33,0,1,0,0,NULL,44),(47,63,'05/27/2015 Regular Season - Dodgers (h) vs Athletics',46,1,0,2,NULL,1.67,0,2,0,0,NULL,21);
/*!40000 ALTER TABLE `pitching` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `players`
--

DROP TABLE IF EXISTS `players`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `players` (
  `playerID` mediumint(5) NOT NULL AUTO_INCREMENT,
  `last` varchar(25) DEFAULT NULL,
  `first` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`playerID`),
  UNIQUE KEY `playerID` (`playerID`)
) ENGINE=MyISAM AUTO_INCREMENT=66 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `players`
--

LOCK TABLES `players` WRITE;
/*!40000 ALTER TABLE `players` DISABLE KEYS */;
INSERT INTO `players` VALUES (57,'Trenton Gerhard','31'),(56,'Zachary Elder','33'),(54,'Brandon Blayney','10'),(55,'Joey Cutter','21'),(58,'Skyler Gresham','22'),(59,'Mason Holmes','1'),(60,'Matthew Johnson','2'),(61,'Milo Judy','4'),(62,'Jerome Schroeder','32'),(63,'Aiden Waller','25'),(64,'Liam Wyatt','30'),(65,'Ethan Zarnick','7');
/*!40000 ALTER TABLE `players` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `playersinseason`
--

DROP TABLE IF EXISTS `playersinseason`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `playersinseason` (
  `playerID` mediumint(5) NOT NULL DEFAULT '0',
  `seasonID` mediumint(5) NOT NULL DEFAULT '0',
  KEY `playerID` (`playerID`),
  KEY `seasonID` (`seasonID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `playersinseason`
--

LOCK TABLES `playersinseason` WRITE;
/*!40000 ALTER TABLE `playersinseason` DISABLE KEYS */;
/*!40000 ALTER TABLE `playersinseason` ENABLE KEYS */;
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
) ENGINE=MyISAM AUTO_INCREMENT=49 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `season`
--

LOCK TABLES `season` WRITE;
/*!40000 ALTER TABLE `season` DISABLE KEYS */;
INSERT INTO `season` VALUES (46,'Regular-Season 2015'),(45,'Pre-Season 2015'),(48,'Post-Season 2015');
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

-- Dump completed on 2015-05-30 13:16:24
