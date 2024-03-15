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
-- Table structure for table `device_event_log`
--

DROP TABLE IF EXISTS `device_event_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `device_event_log` (
  `device_event_id` int NOT NULL AUTO_INCREMENT,
  `device_id` int DEFAULT NULL,
  `event_time` datetime NOT NULL,
  `ip_address_id` int DEFAULT NULL,
  `event_log_type_id` int DEFAULT NULL,
  PRIMARY KEY (`device_event_id`),
  KEY `li_device_id_idx` (`device_id`),
  KEY `event_log_ip_idx` (`ip_address_id`),
  KEY `event_type_log_idx` (`event_log_type_id`),
  CONSTRAINT `event_log_device` FOREIGN KEY (`device_id`) REFERENCES `device` (`device_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `event_log_ip` FOREIGN KEY (`ip_address_id`) REFERENCES `ip_address` (`ip_address_id`),
  CONSTRAINT `event_type_log` FOREIGN KEY (`event_log_type_id`) REFERENCES `event_log_type` (`event_log_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `device_event_log`
--

LOCK TABLES `device_event_log` WRITE;
/*!40000 ALTER TABLE `device_event_log` DISABLE KEYS */;
INSERT INTO `device_event_log` (`device_event_id`, `device_id`, `event_time`, `ip_address_id`, `event_log_type_id`) VALUES (5,1,'2024-03-12 09:00:00',1,1),(6,2,'2024-03-12 10:00:00',2,2),(7,3,'2024-03-12 11:00:00',3,3),(8,4,'2024-03-12 12:00:00',4,4);
/*!40000 ALTER TABLE `device_event_log` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-15 13:59:08
