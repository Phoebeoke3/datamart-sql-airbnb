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
-- Table structure for table `bookings`
--

DROP TABLE IF EXISTS `bookings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bookings` (
  `BookingID` int NOT NULL AUTO_INCREMENT,
  `PropertyID` int DEFAULT NULL,
  `GuestID` int DEFAULT NULL,
  `CheckInDate` date DEFAULT NULL,
  `CheckOutDate` date DEFAULT NULL,
  `TotalPrice` decimal(10,2) DEFAULT NULL,
  `Status` enum('pending','confirmed','cancelled') DEFAULT NULL,
  `CreatedAt` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`BookingID`),
  KEY `fk_bookings_guestID` (`GuestID`),
  KEY `fk_bookings_propertyID` (`PropertyID`),
  CONSTRAINT `fk_bookings_guestID` FOREIGN KEY (`GuestID`) REFERENCES `guests` (`GuestID`),
  CONSTRAINT `fk_bookings_propertyID` FOREIGN KEY (`PropertyID`) REFERENCES `property` (`PropertyID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookings`
--

LOCK TABLES `bookings` WRITE;
/*!40000 ALTER TABLE `bookings` DISABLE KEYS */;
INSERT INTO `bookings` VALUES (1,1,1,'2024-09-01','2024-09-03',450.00,'confirmed','2024-08-01 09:15:00'),(2,2,2,'2024-12-20','2024-12-27',2100.00,'confirmed','2024-08-02 10:00:00'),(3,3,3,'2024-10-10','2024-10-13',600.00,'confirmed','2024-08-03 08:30:00'),(4,4,4,'2024-11-14','2024-11-18',1200.00,'confirmed','2024-08-04 07:45:00'),(5,5,5,'2024-09-05','2024-09-06',350.00,'confirmed','2024-08-05 13:20:00'),(6,6,6,'2024-10-01','2024-10-31',3000.00,'confirmed','2024-08-06 12:55:00'),(7,7,7,'2024-11-01','2024-11-06',4000.00,'confirmed','2024-08-07 11:10:00'),(8,8,8,'2024-09-10','2024-09-13',150.00,'confirmed','2024-08-08 10:05:00'),(9,9,9,'2024-12-01','2024-12-07',2700.00,'confirmed','2024-08-09 14:30:00'),(10,10,10,'2024-09-15','2024-09-19',800.00,'confirmed','2024-08-10 15:45:00'),(11,11,11,'2024-10-05','2024-10-12',5000.00,'confirmed','2024-08-11 09:25:00'),(12,12,12,'2024-11-15','2024-11-29',1800.00,'confirmed','2024-08-12 08:40:00'),(13,13,13,'2024-09-20','2024-09-23',900.00,'confirmed','2024-08-13 10:55:00'),(14,14,14,'2024-11-07','2024-11-09',5000.00,'confirmed','2024-08-14 09:10:00'),(15,15,15,'2024-12-15','2024-12-20',2000.00,'confirmed','2024-08-15 14:00:00'),(16,16,16,'2024-10-01','2024-10-05',1300.00,'confirmed','2024-08-16 13:35:00'),(17,17,17,'2024-09-22','2024-09-28',1500.00,'confirmed','2024-08-17 12:20:00'),(18,18,18,'2024-10-10','2024-10-13',6000.00,'confirmed','2024-08-18 11:50:00'),(19,19,19,'2024-11-01','2024-11-03',1000.00,'confirmed','2024-08-19 15:10:00'),(20,20,20,'2024-09-15','2024-09-17',700.00,'confirmed','2024-08-20 10:45:00');
/*!40000 ALTER TABLE `bookings` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-09-14 21:22:19
