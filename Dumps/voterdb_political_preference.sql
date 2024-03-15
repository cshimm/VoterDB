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
-- Table structure for table `political_preference`
--

DROP TABLE IF EXISTS `political_preference`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `political_preference` (
  `political_preference_id` int NOT NULL AUTO_INCREMENT,
  `preference_id` int DEFAULT NULL,
  `political_affiliation_code` int DEFAULT NULL,
  `intensity` int DEFAULT NULL,
  `event_time` datetime DEFAULT NULL,
  PRIMARY KEY (`political_preference_id`),
  KEY `ppref_person_id_idx` (`preference_id`),
  KEY `ppref_political_party_id_idx` (`political_affiliation_code`),
  KEY `ppref_intensity_level_idx` (`intensity`),
  CONSTRAINT `ppref_intensity_level` FOREIGN KEY (`intensity`) REFERENCES `view_intensity_lookup` (`intensity_code`),
  CONSTRAINT `ppref_person_id` FOREIGN KEY (`preference_id`) REFERENCES `preferences` (`preferences_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ppref_political_party_id` FOREIGN KEY (`political_affiliation_code`) REFERENCES `political_affiliation_lookup` (`affialiation_code`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `political_preference`
--

LOCK TABLES `political_preference` WRITE;
/*!40000 ALTER TABLE `political_preference` DISABLE KEYS */;
INSERT INTO `political_preference` (`political_preference_id`, `preference_id`, `political_affiliation_code`, `intensity`, `event_time`) VALUES (5,1,1,4,'2023-01-01 10:00:00'),(6,2,2,3,'2023-01-02 11:00:00'),(7,3,3,2,'2023-01-03 12:00:00'),(8,4,4,4,'2023-01-04 13:00:00');
/*!40000 ALTER TABLE `political_preference` ENABLE KEYS */;
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
