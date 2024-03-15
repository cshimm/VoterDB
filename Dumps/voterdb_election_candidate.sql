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
-- Table structure for table `election_candidate`
--

DROP TABLE IF EXISTS `election_candidate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `election_candidate` (
  `election_candidate_id` int NOT NULL AUTO_INCREMENT,
  `election_id` int DEFAULT NULL,
  `candidate_id` int DEFAULT NULL,
  `position_id` int DEFAULT NULL,
  `total_votes` int DEFAULT NULL,
  PRIMARY KEY (`election_candidate_id`),
  KEY `ccand_position_id_idx` (`position_id`),
  KEY `ccand_candidate_fk_idx` (`candidate_id`),
  KEY `ccand_electiont_id_idx` (`election_id`),
  CONSTRAINT `ccand_candidate_fk` FOREIGN KEY (`candidate_id`) REFERENCES `candidate` (`candidate_id`),
  CONSTRAINT `ccand_electiont_id` FOREIGN KEY (`election_id`) REFERENCES `election` (`election_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ccand_position_id` FOREIGN KEY (`position_id`) REFERENCES `position` (`idposition`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `election_candidate`
--

LOCK TABLES `election_candidate` WRITE;
/*!40000 ALTER TABLE `election_candidate` DISABLE KEYS */;
INSERT INTO `election_candidate` (`election_candidate_id`, `election_id`, `candidate_id`, `position_id`, `total_votes`) VALUES (9,1,1,1,8000),(10,1,2,2,12000),(11,2,3,3,16000),(12,3,4,2,20000);
/*!40000 ALTER TABLE `election_candidate` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-15 13:59:09
