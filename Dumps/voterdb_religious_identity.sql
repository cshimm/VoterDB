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
-- Table structure for table `religious_identity`
--

DROP TABLE IF EXISTS `religious_identity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `religious_identity` (
  `religious_identity_id` int NOT NULL AUTO_INCREMENT,
  `preference_id` int DEFAULT NULL,
  `affiliation_lookup_code` int DEFAULT NULL,
  `intensity` int DEFAULT NULL,
  `timestamp` datetime DEFAULT NULL,
  PRIMARY KEY (`religious_identity_id`),
  KEY `ppref_person_id_idx` (`preference_id`),
  KEY `ri_affiliation_lookup_code_idx` (`affiliation_lookup_code`),
  KEY `ri_intensity_id_idx` (`intensity`),
  CONSTRAINT `ri_affiliation_lookup_code` FOREIGN KEY (`affiliation_lookup_code`) REFERENCES `religious_affiliation_lookup` (`affiliation_code`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ri_intensity_id` FOREIGN KEY (`intensity`) REFERENCES `view_intensity_lookup` (`intensity_code`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ri_person_id` FOREIGN KEY (`preference_id`) REFERENCES `preferences` (`preferences_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `religious_identity`
--

LOCK TABLES `religious_identity` WRITE;
/*!40000 ALTER TABLE `religious_identity` DISABLE KEYS */;
INSERT INTO `religious_identity` (`religious_identity_id`, `preference_id`, `affiliation_lookup_code`, `intensity`, `timestamp`) VALUES (1,1,1,1,'2023-01-01 10:00:00'),(2,2,2,3,'2023-01-02 11:00:00'),(3,3,3,2,'2023-01-03 12:00:00'),(4,4,4,4,'2023-01-04 13:00:00');
/*!40000 ALTER TABLE `religious_identity` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-15 13:59:07
