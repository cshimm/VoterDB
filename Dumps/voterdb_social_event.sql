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
-- Table structure for table `social_event`
--

DROP TABLE IF EXISTS `social_event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `social_event` (
  `social_event_id` int NOT NULL AUTO_INCREMENT,
  `account_id` int DEFAULT NULL,
  `content` varchar(400) DEFAULT NULL,
  `event_time` datetime DEFAULT NULL,
  `event_type_id` int DEFAULT NULL,
  `event_nature_id` int DEFAULT NULL,
  PRIMARY KEY (`social_event_id`),
  KEY `sp_account_id_idx` (`account_id`),
  KEY `event_type_idx` (`event_type_id`),
  KEY `event_nature_idx` (`event_nature_id`),
  CONSTRAINT `event_nature` FOREIGN KEY (`event_nature_id`) REFERENCES `event_nature` (`event_nature_id`),
  CONSTRAINT `event_type_social` FOREIGN KEY (`event_type_id`) REFERENCES `event_type` (`event_type_id`),
  CONSTRAINT `sp_account_id` FOREIGN KEY (`account_id`) REFERENCES `social_account` (`social_account_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_event`
--

LOCK TABLES `social_event` WRITE;
/*!40000 ALTER TABLE `social_event` DISABLE KEYS */;
INSERT INTO `social_event` (`social_event_id`, `account_id`, `content`, `event_time`, `event_type_id`, `event_nature_id`) VALUES (1,1,'Enjoying the party!','2024-03-12 18:00:00',1,1),(2,2,'Supporting the candidate!','2024-03-13 10:00:00',2,2),(3,3,'Discussing important issues.','2024-03-14 14:00:00',3,3),(4,4,'Protesting against injustice!','2024-03-15 12:00:00',4,4);
/*!40000 ALTER TABLE `social_event` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-15 13:59:06
