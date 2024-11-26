-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: myairbnb
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payments` (
  `PaymentID` int NOT NULL AUTO_INCREMENT,
  `BookingID` int DEFAULT NULL,
  `Amount` decimal(10,2) DEFAULT NULL,
  `PaymentDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `PaymentMethod` varchar(255) DEFAULT NULL,
  `Status` enum('pending','completed','failed') DEFAULT NULL,
  PRIMARY KEY (`PaymentID`),
  KEY `BookingID` (`BookingID`),
  CONSTRAINT `payments_ibfk_1` FOREIGN KEY (`BookingID`) REFERENCES `bookings` (`BookingID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
INSERT INTO `payments` VALUES (1,1,250.00,'2024-07-31 23:00:00','Credit Card','completed'),(2,2,320.50,'2024-08-01 23:00:00','PayPal','completed'),(3,3,150.75,'2024-08-02 23:00:00','Credit Card','completed'),(4,4,200.00,'2024-08-03 23:00:00','Bank Transfer','pending'),(5,5,275.00,'2024-08-04 23:00:00','Credit Card','completed'),(6,6,340.25,'2024-08-05 23:00:00','PayPal','completed'),(7,7,410.00,'2024-08-06 23:00:00','Credit Card','failed'),(8,8,180.00,'2024-08-07 23:00:00','Bank Transfer','completed'),(9,9,295.50,'2024-08-08 23:00:00','Credit Card','pending'),(10,10,225.75,'2024-08-09 23:00:00','PayPal','completed'),(11,11,310.00,'2024-08-10 23:00:00','Credit Card','completed'),(12,12,145.25,'2024-08-11 23:00:00','Bank Transfer','completed'),(13,13,385.00,'2024-08-12 23:00:00','Credit Card','failed'),(14,14,255.00,'2024-08-13 23:00:00','PayPal','completed'),(15,15,325.00,'2024-08-14 23:00:00','Credit Card','completed'),(16,16,290.00,'2024-08-15 23:00:00','Bank Transfer','pending'),(17,17,275.50,'2024-08-16 23:00:00','Credit Card','completed'),(18,18,350.00,'2024-08-17 23:00:00','PayPal','completed'),(19,19,410.25,'2024-08-18 23:00:00','Credit Card','failed'),(20,20,200.00,'2024-08-19 23:00:00','Bank Transfer','completed');
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-09-14 21:22:20
