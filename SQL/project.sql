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
-- Table structure for table `allots`
--

DROP TABLE IF EXISTS `allots`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `allots` (
  `Brand_id` int NOT NULL,
  `F_id` int NOT NULL,
  PRIMARY KEY (`Brand_id`,`F_id`),
  KEY `F_id` (`F_id`),
  CONSTRAINT `allots_ibfk_1` FOREIGN KEY (`Brand_id`) REFERENCES `brand` (`Brand_id`),
  CONSTRAINT `allots_ibfk_2` FOREIGN KEY (`F_id`) REFERENCES `franchise` (`F_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `allots`
--

LOCK TABLES `allots` WRITE;
/*!40000 ALTER TABLE `allots` DISABLE KEYS */;
INSERT INTO `allots` VALUES (1,1),(2,2),(3,3),(4,4),(5,5);
/*!40000 ALTER TABLE `allots` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `brand`
--

DROP TABLE IF EXISTS `brand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `brand` (
  `Brand_id` int NOT NULL,
  `BrandName` varchar(50) DEFAULT NULL,
  `Qty` int DEFAULT NULL,
  PRIMARY KEY (`Brand_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brand`
--

LOCK TABLES `brand` WRITE;
/*!40000 ALTER TABLE `brand` DISABLE KEYS */;
INSERT INTO `brand` VALUES (1,'BurgerKing',500),(2,'McDonalds',300),(3,'Subway',400),(4,'KFC',250),(5,'Dominos',150);
/*!40000 ALTER TABLE `brand` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contains`
--

DROP TABLE IF EXISTS `contains`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contains` (
  `Order_id` int NOT NULL,
  `Item_id` int NOT NULL,
  `qty` int DEFAULT NULL,
  PRIMARY KEY (`Order_id`,`Item_id`),
  KEY `Item_id` (`Item_id`),
  CONSTRAINT `contains_ibfk_1` FOREIGN KEY (`Order_id`) REFERENCES `orders` (`Order_id`),
  CONSTRAINT `contains_ibfk_2` FOREIGN KEY (`Item_id`) REFERENCES `item` (`Item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contains`
--

LOCK TABLES `contains` WRITE;
/*!40000 ALTER TABLE `contains` DISABLE KEYS */;
INSERT INTO `contains` VALUES (1,1,50),(2,2,60),(3,3,40),(4,4,70),(5,5,30);
/*!40000 ALTER TABLE `contains` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employs`
--

DROP TABLE IF EXISTS `employs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employs` (
  `F_id` int NOT NULL,
  `staff_id` int NOT NULL,
  PRIMARY KEY (`F_id`,`staff_id`),
  KEY `staff_id` (`staff_id`),
  CONSTRAINT `employs_ibfk_1` FOREIGN KEY (`F_id`) REFERENCES `franchise` (`F_id`),
  CONSTRAINT `employs_ibfk_2` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`staff_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employs`
--

LOCK TABLES `employs` WRITE;
/*!40000 ALTER TABLE `employs` DISABLE KEYS */;
INSERT INTO `employs` VALUES (1,1),(2,2),(3,3),(4,4),(5,5);
/*!40000 ALTER TABLE `employs` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `franchise`
--

DROP TABLE IF EXISTS `franchise`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `franchise` (
  `F_id` int NOT NULL,
  `area` varchar(50) DEFAULT NULL,
  `oName` varchar(50) DEFAULT NULL,
  `oNumber` varchar(20) DEFAULT NULL,
  `oMailId` varchar(50) DEFAULT NULL,
  `runBy` varchar(50) DEFAULT NULL,
  `staffSize` int DEFAULT NULL,
  `Brand_id` int DEFAULT NULL,
  PRIMARY KEY (`F_id`),
  KEY `Brand_id` (`Brand_id`),
  CONSTRAINT `franchise_ibfk_1` FOREIGN KEY (`Brand_id`) REFERENCES `brand` (`Brand_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `franchise`
--

LOCK TABLES `franchise` WRITE;
/*!40000 ALTER TABLE `franchise` DISABLE KEYS */;
INSERT INTO `franchise` VALUES (1,'New York','Alice Brown','1234567890',NULL,'BurgerKing',20,1),(2,'Los Angeles','Bob Smith','2345678901','bob@mcdonalds.com','McDonalds',25,2),(3,'Chicago','Carol Davis','3456789012','carol@subway.com','Subway',15,3),(4,'Houston','David Wilson','4567890123','david@kfc.com','KFC',18,4),(5,'Miami','Emma Taylor','5678901234',NULL,'Dominos',12,5),(12,'guntur','maruthi','9875489645',NULL,'Momo\'s',2,3);
/*!40000 ALTER TABLE `franchise` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `check_duplicate_franchise` BEFORE INSERT ON `franchise` FOR EACH ROW BEGIN
    
    IF EXISTS (
        SELECT 1
        FROM Franchise
        WHERE Franchise.area = NEW.area
          AND Franchise.runBy = NEW.runBy
    ) THEN
        
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Duplicate Franchise: The Franchise_ID, Area, and RunBy already exist.';
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `item`
--

DROP TABLE IF EXISTS `item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item` (
  `Item_id` int NOT NULL,
  `itemName` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item`
--

LOCK TABLES `item` WRITE;
/*!40000 ALTER TABLE `item` DISABLE KEYS */;
INSERT INTO `item` VALUES (1,'Burger Patty'),(2,'Bun'),(3,'Cheese Slice'),(4,'French Fries'),(5,'Soda Syrup');
/*!40000 ALTER TABLE `item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `maintains`
--

DROP TABLE IF EXISTS `maintains`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `maintains` (
  `F_id` int NOT NULL,
  `P_id` int NOT NULL,
  PRIMARY KEY (`F_id`,`P_id`),
  KEY `P_id` (`P_id`),
  CONSTRAINT `maintains_ibfk_1` FOREIGN KEY (`F_id`) REFERENCES `financials` (`F_id`),
  CONSTRAINT `maintains_ibfk_2` FOREIGN KEY (`P_id`) REFERENCES `pantry` (`P_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `maintains`
--

LOCK TABLES `maintains` WRITE;
/*!40000 ALTER TABLE `maintains` DISABLE KEYS */;
INSERT INTO `maintains` VALUES (1,1),(2,2),(3,3),(4,4),(5,5);
/*!40000 ALTER TABLE `maintains` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `Order_id` int NOT NULL,
  `F_id` int DEFAULT NULL,
  `Item_id` int DEFAULT NULL,
  `qty` int DEFAULT NULL,
  `area` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Order_id`),
  KEY `F_id` (`F_id`),
  KEY `Item_id` (`Item_id`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`F_id`) REFERENCES `franchise` (`F_id`),
  CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`Item_id`) REFERENCES `item` (`Item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,1,1,50,'New York'),(2,2,2,60,'Los Angeles'),(3,3,3,40,'Chicago'),(4,4,4,70,'Houston'),(5,5,5,30,'Miami');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pantry`
--

DROP TABLE IF EXISTS `pantry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pantry` (
  `P_id` int NOT NULL,
  `F_id` int DEFAULT NULL,
  `Order_id` int DEFAULT NULL,
  `Item_id` int DEFAULT NULL,
  `Qty` int DEFAULT NULL,
  PRIMARY KEY (`P_id`),
  KEY `F_id` (`F_id`),
  KEY `Order_id` (`Order_id`),
  KEY `Item_id` (`Item_id`),
  CONSTRAINT `pantry_ibfk_1` FOREIGN KEY (`F_id`) REFERENCES `franchise` (`F_id`),
  CONSTRAINT `pantry_ibfk_2` FOREIGN KEY (`Order_id`) REFERENCES `orders` (`Order_id`),
  CONSTRAINT `pantry_ibfk_3` FOREIGN KEY (`Item_id`) REFERENCES `item` (`Item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pantry`
--

LOCK TABLES `pantry` WRITE;
/*!40000 ALTER TABLE `pantry` DISABLE KEYS */;
INSERT INTO `pantry` VALUES (1,1,1,1,20),(2,2,2,2,25),(3,3,3,3,15),(4,4,4,4,35),(5,5,5,5,10);
/*!40000 ALTER TABLE `pantry` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `supplies`
--

DROP TABLE IF EXISTS `supplies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `supplies` (
  `Supply_id` int NOT NULL,
  `F_id` int DEFAULT NULL,
  `Item_id` int DEFAULT NULL,
  `Qtyleft` int DEFAULT NULL,
  `NextShipment` date DEFAULT NULL,
  PRIMARY KEY (`Supply_id`),
  KEY `Item_id` (`Item_id`),
  KEY `F_id` (`F_id`),
  CONSTRAINT `supplies_ibfk_1` FOREIGN KEY (`Item_id`) REFERENCES `item` (`Item_id`),
  CONSTRAINT `supplies_ibfk_2` FOREIGN KEY (`F_id`) REFERENCES `franchise` (`F_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplies`
--

LOCK TABLES `supplies` WRITE;
/*!40000 ALTER TABLE `supplies` DISABLE KEYS */;
INSERT INTO `supplies` VALUES (1,1,1,100,'2024-12-01'),(2,2,2,120,'2024-12-02'),(3,3,3,80,'2024-12-03'),(4,4,4,90,'2024-12-04'),(5,5,5,60,'2024-12-05');
/*!40000 ALTER TABLE `supplies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `ownerType` enum('Brand','Franchise') NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'shan','throw5440@gmail.com','$2b$12$XEnhoqpLSZ8ol2k8k0EupOJBHNHQPfTdI7BRrSqdbI8D9pwUKGdrG','Brand');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'authentication'
--

--
-- Dumping routines for database 'authentication'
--
/*!50003 DROP PROCEDURE IF EXISTS `GetStaffDetailsByFranchise` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetStaffDetailsByFranchise`(IN franchiseId INT)
BEGIN
    SELECT 
        Staff.StaffName, 
        Staff.StaffRole, 
        Franchise.Area, 
        Staff.salary
    FROM 
        Staff
    INNER JOIN 
        Franchise ON Staff.F_id = Franchise.F_id
    WHERE 
        Staff.F_id = franchiseId;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-19 23:01:02
