-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: authentication
-- ------------------------------------------------------
-- Server version	8.0.39

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
-- Table structure for table `financials`
--

DROP TABLE IF EXISTS `financials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `financials` (
  `SNo` int NOT NULL,
  `F_id` int DEFAULT NULL,
  `Area` varchar(50) DEFAULT NULL,
  `Revenue` decimal(10,2) DEFAULT NULL,
  `ProfitLoss` decimal(10,2) DEFAULT NULL,
  `P_id` int DEFAULT NULL,
  PRIMARY KEY (`SNo`),
  KEY `F_id` (`F_id`),
  KEY `P_id` (`P_id`),
  CONSTRAINT `financials_ibfk_1` FOREIGN KEY (`F_id`) REFERENCES `franchise` (`F_id`),
  CONSTRAINT `financials_ibfk_2` FOREIGN KEY (`P_id`) REFERENCES `pantry` (`P_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `financials`
--

LOCK TABLES `financials` WRITE;
/*!40000 ALTER TABLE `financials` DISABLE KEYS */;
INSERT INTO `financials` VALUES (1,1,'New York',50000.00,10000.00,1),(2,2,'Los Angeles',60000.00,15000.00,2),(3,3,'Chicago',40000.00,5000.00,3),(4,4,'Houston',70000.00,20000.00,4),(5,5,'Miami',30000.00,-2000.00,5);
/*!40000 ALTER TABLE `financials` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-19 22:56:17
