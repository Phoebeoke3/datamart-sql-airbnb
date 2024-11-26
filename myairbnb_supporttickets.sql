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
-- Table structure for table `supporttickets`
--

DROP TABLE IF EXISTS `supporttickets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `supporttickets` (
  `TicketID` int NOT NULL AUTO_INCREMENT,
  `Subject` varchar(255) DEFAULT NULL,
  `Description` text,
  `Status` enum('open','closed','pending') DEFAULT NULL,
  `CreatedAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `GuestID` int DEFAULT NULL,
  PRIMARY KEY (`TicketID`),
  KEY `GuestID` (`GuestID`),
  CONSTRAINT `supporttickets_ibfk_1` FOREIGN KEY (`GuestID`) REFERENCES `guests` (`GuestID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supporttickets`
--

LOCK TABLES `supporttickets` WRITE;
/*!40000 ALTER TABLE `supporttickets` DISABLE KEYS */;
INSERT INTO `supporttickets` VALUES (1,'Payment Issue','Unable to complete payment for booking ID #12345.','open','2024-08-01 08:00:00',1),(2,'Host Unresponsive','Host has not responded to my messages for booking ID #12346.','open','2024-08-01 09:30:00',2),(3,'Booking Cancellation','Need to cancel my booking ID #12347 due to a change of plans.','closed','2024-08-02 07:45:00',3),(4,'Refund Request','Requesting a refund for booking ID #12348 after cancellation.','pending','2024-08-02 11:00:00',4),(5,'Property Not As Described','The property booked ID #12349 is not as described on the listing.','open','2024-08-03 14:15:00',5),(6,'Check-In Issue','Unable to check in at the property for booking ID #12350.','closed','2024-08-03 16:30:00',6),(7,'Extra Charges','Unexpected extra charges applied to booking ID #12351.','open','2024-08-04 10:10:00',7),(8,'Property Cleanliness','The property for booking ID #12352 was not clean upon arrival.','open','2024-08-04 12:20:00',8),(9,'Wi-Fi Not Working','Wi-Fi is not working at the property for booking ID #12353.','pending','2024-08-05 08:50:00',9),(10,'Request for Early Check-In','Requesting an early check-in for booking ID #12354.','open','2024-08-05 15:45:00',10),(11,'Host Cancelled Booking','The host cancelled my booking ID #12355 at the last minute.','open','2024-08-06 09:15:00',11),(12,'Double Booking Issue','Found out that the property for booking ID #12356 was double booked.','closed','2024-08-06 13:00:00',12),(13,'Security Concerns','Security concerns regarding the neighborhood of the property for booking ID #12357.','open','2024-08-07 07:40:00',13),(14,'Booking Modification','Need to modify the dates for booking ID #12358.','pending','2024-08-07 11:30:00',14),(15,'Air Conditioning Not Working','The air conditioning is not working for booking ID #12359.','open','2024-08-08 08:05:00',15),(16,'Lost Property','Lost a personal item at the property for booking ID #12360.','open','2024-08-08 14:20:00',16),(17,'Host Requesting Additional Payment','Host is requesting additional payment outside the platform for booking ID #12361.','open','2024-08-09 12:10:00',17),(18,'Broken Appliance','The refrigerator is broken at the property for booking ID #12362.','closed','2024-08-09 17:45:00',18),(19,'Booking Confirmation Delayed','Confirmation for booking ID #12363 is taking too long.','pending','2024-08-10 09:55:00',19),(20,'Request for Late Check-Out','Requesting a late check-out for booking ID #12364.','closed','2024-08-10 13:30:00',20);
/*!40000 ALTER TABLE `supporttickets` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-09-14 21:22:21
