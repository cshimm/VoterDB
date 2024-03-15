CREATE DATABASE  IF NOT EXISTS `voterdb` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `voterdb`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: voterdb
-- ------------------------------------------------------
-- Server version	8.0.35

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `social_action`
--

DROP TABLE IF EXISTS `social_action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `social_action` (
  `social_action_id` int NOT NULL AUTO_INCREMENT,
  `social_account_id` int DEFAULT NULL,
  `social_event_id` int DEFAULT NULL,
  `action_type_id` int DEFAULT NULL,
  `content` varchar(400) DEFAULT NULL,
  `event_time` datetime DEFAULT NULL,
  PRIMARY KEY (`social_action_id`),
  KEY `saccount_FK_idx` (`social_account_id`),
  KEY `sevent_FK_idx` (`social_event_id`),
  KEY `sactiontype_FK_idx` (`action_type_id`),
  CONSTRAINT `saccount_FK` FOREIGN KEY (`social_account_id`) REFERENCES `social_account` (`social_account_id`),
  CONSTRAINT `sactiontype_FK` FOREIGN KEY (`action_type_id`) REFERENCES `action_type` (`action_type_id`),
  CONSTRAINT `sevent_FK` FOREIGN KEY (`social_event_id`) REFERENCES `social_event` (`social_event_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_action`
--

LOCK TABLES `social_action` WRITE;
/*!40000 ALTER TABLE `social_action` DISABLE KEYS */;
INSERT INTO `social_action` (`social_action_id`, `social_account_id`, `social_event_id`, `action_type_id`, `content`, `event_time`) VALUES (1,1,1,1,'Liked','2023-01-01 10:00:00'),(2,2,2,2,'Shared','2023-01-02 11:00:00'),(3,3,3,1,'Liked','2023-01-03 12:00:00'),(4,4,4,2,'Shared','2023-01-04 13:00:00');
/*!40000 ALTER TABLE `social_action` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-15 13:59:04
