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
-- Table structure for table `office_held`
--

DROP TABLE IF EXISTS `office_held`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `office_held` (
  `office_held_id` int NOT NULL AUTO_INCREMENT,
  `position_id` int DEFAULT NULL,
  `candidate_id` int DEFAULT NULL,
  `political_party_id` int DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `election_id` int DEFAULT NULL,
  PRIMARY KEY (`office_held_id`),
  KEY `oh_position_id_idx` (`position_id`),
  KEY `oh_candidate_id_idx` (`candidate_id`),
  KEY `oh_party_id_idx` (`political_party_id`),
  KEY `oh_election_id_idx` (`election_id`),
  CONSTRAINT `oh_candidate_id` FOREIGN KEY (`candidate_id`) REFERENCES `candidate` (`candidate_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `oh_election_id` FOREIGN KEY (`election_id`) REFERENCES `election` (`election_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `oh_party_id` FOREIGN KEY (`political_party_id`) REFERENCES `political_party` (`political_party_id`),
  CONSTRAINT `oh_position_id` FOREIGN KEY (`position_id`) REFERENCES `position` (`idposition`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `office_held`
--

LOCK TABLES `office_held` WRITE;
/*!40000 ALTER TABLE `office_held` DISABLE KEYS */;
INSERT INTO `office_held` (`office_held_id`, `position_id`, `candidate_id`, `political_party_id`, `start_date`, `end_date`, `election_id`) VALUES (5,1,1,1,'2022-01-01 00:00:00','2026-01-01 00:00:00',1),(6,2,2,2,'2022-01-01 00:00:00','2026-01-01 00:00:00',1),(7,3,3,3,'2022-01-01 00:00:00','2026-01-01 00:00:00',1),(8,2,4,4,'2022-01-01 00:00:00','2026-01-01 00:00:00',1);
/*!40000 ALTER TABLE `office_held` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-15 13:59:05
