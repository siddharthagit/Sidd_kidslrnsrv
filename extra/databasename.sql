-- MySQL dump 10.13  Distrib 5.6.16, for osx10.9 (x86_64)
--
-- Host: localhost    Database: hrikit_dev
-- ------------------------------------------------------
-- Server version	5.6.16

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
-- Current Database: `hrikit_dev`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `hrikit_dev` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `hrikit_dev`;

--
-- Table structure for table `hq_anschoice`
--

DROP TABLE IF EXISTS `hq_anschoice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hq_anschoice` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `answerCorrect` bit(1) NOT NULL,
  `answerTxt` varchar(255) DEFAULT NULL,
  `qid` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKC35863518EA2335F` (`qid`),
  CONSTRAINT `FKC35863518EA2335F` FOREIGN KEY (`qid`) REFERENCES `hq_question` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hq_anschoice`
--

LOCK TABLES `hq_anschoice` WRITE;
/*!40000 ALTER TABLE `hq_anschoice` DISABLE KEYS */;
/*!40000 ALTER TABLE `hq_anschoice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hq_exampack`
--

DROP TABLE IF EXISTS `hq_exampack`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hq_exampack` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `active` bit(1) NOT NULL,
  `level` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `qcat` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hq_exampack`
--

LOCK TABLES `hq_exampack` WRITE;
/*!40000 ALTER TABLE `hq_exampack` DISABLE KEYS */;
INSERT INTO `hq_exampack` VALUES (1,'\0','Easy','A-Z Alphabets',0),(2,'\0','Easy','Animals',0);
/*!40000 ALTER TABLE `hq_exampack` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hq_pics`
--

DROP TABLE IF EXISTS `hq_pics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hq_pics` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `picFile` varchar(255) DEFAULT NULL,
  `picName` varchar(255) DEFAULT NULL,
  `qid` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK43CAE99F8EA2335F` (`qid`),
  CONSTRAINT `FK43CAE99F8EA2335F` FOREIGN KEY (`qid`) REFERENCES `hq_question` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hq_pics`
--

LOCK TABLES `hq_pics` WRITE;
/*!40000 ALTER TABLE `hq_pics` DISABLE KEYS */;
INSERT INTO `hq_pics` VALUES (1,'7a965f8e-b4c2-4549-8c34-93658cb91622|image/jpeg','A',1),(2,'3f88ebc4-65e5-4642-94eb-a6d72959c057|image/jpeg','Alligator',5),(3,'54f7b876-e7e4-4b82-ba84-ea9dfa0a8dae|image/jpeg','Bear',6),(4,'169d01dd-698d-4184-b0c3-a8822a8d27bc|image/jpeg','Cat',7),(5,'440d7205-d130-45e0-8ae1-9e75c5c950ae|image/jpeg','Dog',8);
/*!40000 ALTER TABLE `hq_pics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hq_question`
--

DROP TABLE IF EXISTS `hq_question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hq_question` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `qtext` varchar(255) DEFAULT NULL,
  `qseriesid` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK113AFA5CB3DF248` (`qseriesid`),
  CONSTRAINT `FK113AFA5CB3DF248` FOREIGN KEY (`qseriesid`) REFERENCES `hq_exampack` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hq_question`
--

LOCK TABLES `hq_question` WRITE;
/*!40000 ALTER TABLE `hq_question` DISABLE KEYS */;
INSERT INTO `hq_question` VALUES (1,'A',1),(2,'B',1),(3,'C',NULL),(4,'D',NULL),(5,'Alligator',2),(6,'Bear',2),(7,'Cat',2),(8,'Dog',2);
/*!40000 ALTER TABLE `hq_question` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hs_studenthistory`
--

DROP TABLE IF EXISTS `hs_studenthistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hs_studenthistory` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `examDate` tinyblob,
  `examDuration` bigint(20) NOT NULL,
  `examLocation` varchar(255) DEFAULT NULL,
  `examPackId` bigint(20) NOT NULL,
  `examScore` double NOT NULL,
  `studentId` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hs_studenthistory`
--

LOCK TABLES `hs_studenthistory` WRITE;
/*!40000 ALTER TABLE `hs_studenthistory` DISABLE KEYS */;
/*!40000 ALTER TABLE `hs_studenthistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hs_studentstatus`
--

DROP TABLE IF EXISTS `hs_studentstatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hs_studentstatus` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `examJsonQAnswers` varchar(255) DEFAULT NULL,
  `examLastAccessedAt` tinyblob,
  `examPackId` bigint(20) NOT NULL,
  `examStartedAt` tinyblob,
  `examStatus` int(11) NOT NULL,
  `examlastQId` tinyblob,
  `studentId` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hs_studentstatus`
--

LOCK TABLES `hs_studentstatus` WRITE;
/*!40000 ALTER TABLE `hs_studentstatus` DISABLE KEYS */;
/*!40000 ALTER TABLE `hs_studentstatus` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-04-22 15:41:14
