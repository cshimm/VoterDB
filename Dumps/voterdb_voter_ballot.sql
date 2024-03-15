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
-- Table structure for table `voter_ballot`
--

DROP TABLE IF EXISTS `voter_ballot`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `voter_ballot` (
  `voter_ballot_id` int NOT NULL AUTO_INCREMENT,
  `voter_info` int DEFAULT NULL,
  `submission_date` datetime DEFAULT NULL,
  `vb_status_id` int DEFAULT NULL,
  `device` int DEFAULT NULL,
  `election_id` int DEFAULT NULL,
  PRIMARY KEY (`voter_ballot_id`),
  KEY `vb_device_idx` (`device`),
  KEY `vb_voter_idx` (`voter_info`),
  KEY `vb_status_fk_idx` (`vb_status_id`),
  KEY `vb_election_fk_idx` (`election_id`),
  CONSTRAINT `vb_device` FOREIGN KEY (`device`) REFERENCES `device` (`device_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `vb_election_fk` FOREIGN KEY (`election_id`) REFERENCES `election` (`election_id`),
  CONSTRAINT `vb_status_fk` FOREIGN KEY (`vb_status_id`) REFERENCES `voter_ballot_status_lookup` (`vb_status_id`),
  CONSTRAINT `vb_voter` FOREIGN KEY (`voter_info`) REFERENCES `person_voter_info` (`voter_id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `voter_ballot`
--

LOCK TABLES `voter_ballot` WRITE;
/*!40000 ALTER TABLE `voter_ballot` DISABLE KEYS */;
INSERT INTO `voter_ballot` (`voter_ballot_id`, `voter_info`, `submission_date`, `vb_status_id`, `device`, `election_id`) VALUES (1,1,'2024-11-03 10:00:00',1,1,1),(2,2,'2024-11-03 10:05:00',2,2,1),(3,3,'2024-11-03 10:10:00',2,3,3),(4,4,'2024-11-03 10:15:00',2,4,4);
/*!40000 ALTER TABLE `voter_ballot` ENABLE KEYS */;
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
