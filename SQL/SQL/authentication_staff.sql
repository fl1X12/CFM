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
-- Table structure for table `staff`
--

DROP TABLE IF EXISTS `staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staff` (
  `staff_id` int NOT NULL,
  `staffName` varchar(50) DEFAULT NULL,
  `staffRole` varchar(50) DEFAULT NULL,
  `hireDate` date DEFAULT NULL,
  `contractEndDate` date DEFAULT NULL,
  `salary` decimal(10,2) DEFAULT NULL,
  `F_id` int DEFAULT NULL,
  `Brand_id` int DEFAULT NULL,
  PRIMARY KEY (`staff_id`),
  KEY `F_id` (`F_id`),
  KEY `Brand_id` (`Brand_id`),
  CONSTRAINT `staff_ibfk_1` FOREIGN KEY (`F_id`) REFERENCES `franchise` (`F_id`),
  CONSTRAINT `staff_ibfk_2` FOREIGN KEY (`Brand_id`) REFERENCES `brand` (`Brand_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff`
--

LOCK TABLES `staff` WRITE;
/*!40000 ALTER TABLE `staff` DISABLE KEYS */;
INSERT INTO `staff` VALUES (1,'John Doe','Manager','2020-01-15','2025-01-15',50000.00,1,1),(2,'Jane Smith','Cashier','2021-03-10','2024-03-10',30000.00,2,2),(3,'Mike Johnson','Cook','2022-06-01','2025-06-01',40000.00,3,3),(4,'Emily Davis','Cleaner','2019-11-20','2024-11-20',20000.00,4,4),(5,'Chris Brown','Driver','2023-02-01','2026-02-01',35000.00,5,5),(101,'John Smith','Manager','2022-01-15',NULL,55000.00,1,1),(102,'Emily Davis','Chef','2023-03-10',NULL,40000.00,1,1),(103,'Mark Johnson','Waiter','2023-06-01','2025-06-01',25000.00,1,1),(104,'Sarah Brown','Cashier','2023-04-20','2024-04-20',28000.00,2,2),(105,'Alice Walker','Supervisor','2021-11-15',NULL,45000.00,2,2),(106,'James Wilson','Delivery Driver','2023-07-01','2024-07-01',30000.00,2,2),(107,'Olivia Martin','Cleaner','2022-09-12',NULL,20000.00,3,3),(108,'Liam Harris','Assistant Chef','2023-01-22',NULL,32000.00,3,3),(109,'Mia Scott','Manager','2022-02-10',NULL,50000.00,3,3),(110,'Noah Turner','Barista','2023-05-15','2024-05-15',22000.00,4,4),(111,'Sophia Allen','Marketing Lead','2021-12-01',NULL,60000.00,4,4),(112,'Ethan White','Security Guard','2023-08-01',NULL,27000.00,4,4),(113,'Ella King','Manager','2022-04-15',NULL,52000.00,5,5),(114,'Oliver Green','Chef','2023-02-01',NULL,43000.00,5,5),(115,'Amelia Moore','Waiter','2023-07-01','2024-07-01',24000.00,5,5);
/*!40000 ALTER TABLE `staff` ENABLE KEYS */;
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
