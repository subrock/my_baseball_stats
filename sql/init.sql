

DROP DATABASE if EXISTS MY_BASEBALL_STATS;
CREATE DATABASE IF NOT EXISTS MY_BASEBALL_STATS;
USE MY_BASEBALL_STATS;

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

LOCK TABLES `AdminTable` WRITE;
/*!40000 ALTER TABLE `AdminTable` DISABLE KEYS */;
INSERT INTO `AdminTable` VALUES (1,'admin','password','subrock@gmail.com',1,1);
/*!40000 ALTER TABLE `AdminTable` ENABLE KEYS */;
UNLOCK TABLES;



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

