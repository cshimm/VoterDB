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
-- Table structure for table `ad_clicked`
--

DROP TABLE IF EXISTS `ad_clicked`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ad_clicked` (
  `ad_clicked_id` int NOT NULL AUTO_INCREMENT,
  `advertisement_id` int DEFAULT NULL,
  `social_account_id` int DEFAULT NULL,
  `event_time` datetime DEFAULT NULL,
  PRIMARY KEY (`ad_clicked_id`),
  KEY `ac_social_account_id_idx` (`social_account_id`),
  KEY `ac_advertisement_id_idx` (`advertisement_id`),
  CONSTRAINT `ac_advertisement_id` FOREIGN KEY (`advertisement_id`) REFERENCES `advertisement` (`advertisement_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ac_social_account_id` FOREIGN KEY (`social_account_id`) REFERENCES `social_account` (`social_account_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ad_clicked`
--

LOCK TABLES `ad_clicked` WRITE;
/*!40000 ALTER TABLE `ad_clicked` DISABLE KEYS */;
INSERT INTO `ad_clicked` (`ad_clicked_id`, `advertisement_id`, `social_account_id`, `event_time`) VALUES (1,1,1,'2024-03-11 16:00:00'),(2,2,2,'2024-03-11 17:00:00'),(3,3,3,'2024-03-11 18:00:00'),(4,4,4,'2024-03-11 19:00:00');
/*!40000 ALTER TABLE `ad_clicked` ENABLE KEYS */;
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
