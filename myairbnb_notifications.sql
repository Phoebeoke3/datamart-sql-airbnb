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
-- Table structure for table `notifications`
--

DROP TABLE IF EXISTS `notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notifications` (
  `NotificationID` int NOT NULL AUTO_INCREMENT,
  `Content` text,
  `CreatedAt` timestamp NULL DEFAULT NULL,
  `GuestID` int DEFAULT NULL,
  `AdminID` int DEFAULT NULL,
  `HostID` int DEFAULT NULL,
  PRIMARY KEY (`NotificationID`),
  KEY `fk_admin_id` (`AdminID`),
  KEY `fk_guest_id` (`GuestID`),
  KEY `fk_host_id` (`HostID`),
  CONSTRAINT `fk_admin_id` FOREIGN KEY (`AdminID`) REFERENCES `admin` (`AdminID`),
  CONSTRAINT `fk_guest_id` FOREIGN KEY (`GuestID`) REFERENCES `guests` (`GuestID`),
  CONSTRAINT `fk_host_id` FOREIGN KEY (`HostID`) REFERENCES `host` (`HostID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notifications`
--

LOCK TABLES `notifications` WRITE;
/*!40000 ALTER TABLE `notifications` DISABLE KEYS */;
INSERT INTO `notifications` VALUES (1,'Your booking request has been approved by the host.','2024-08-01 09:00:00',5,NULL,10),(2,'A new message has been received from your guest.','2024-08-01 10:15:00',5,NULL,10),(3,'Your property listing has been successfully updated.','2024-08-02 08:00:00',NULL,NULL,11),(4,'A new booking request has been received for your property.','2024-08-02 13:30:00',6,NULL,12),(5,'Your account has been verified successfully.','2024-08-03 07:45:00',NULL,10,NULL),(6,'You have a new review for your recent stay.','2024-08-03 09:00:00',NULL,NULL,13),(7,'Your payment has been processed.','2024-08-04 12:20:00',7,NULL,14),(8,'A new reservation has been made for your property.','2024-08-04 15:30:00',8,NULL,15),(9,'Your property has been marked as a favorite by a guest.','2024-08-05 08:05:00',9,NULL,16),(10,'Your request for a late check-out has been approved.','2024-08-05 10:45:00',10,NULL,17),(11,'A new message from the admin has been received.','2024-08-06 11:00:00',11,11,NULL),(12,'Your reservation has been canceled by the guest.','2024-08-06 13:15:00',12,NULL,18),(13,'You have a new review on your recent stay.','2024-08-07 08:30:00',NULL,NULL,19),(14,'A new inquiry has been made for your property.','2024-08-07 14:20:00',13,NULL,20),(15,'Your request for an additional guest has been approved.','2024-08-08 09:00:00',14,NULL,1),(16,'Your profile picture has been updated.','2024-08-08 11:10:00',NULL,12,NULL),(17,'A new message has been received from the admin.','2024-08-09 13:00:00',15,13,NULL),(18,'Your property has been approved for the new location.','2024-08-09 15:20:00',NULL,NULL,2),(19,'Your payment method has been updated successfully.','2024-08-10 09:15:00',NULL,14,NULL),(20,'A new review has been posted by a guest.','2024-08-10 12:45:00',NULL,NULL,3);
/*!40000 ALTER TABLE `notifications` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-09-14 21:22:23
