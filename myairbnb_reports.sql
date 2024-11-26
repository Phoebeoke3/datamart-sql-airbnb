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
-- Table structure for table `reports`
--

DROP TABLE IF EXISTS `reports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reports` (
  `ReportID` int NOT NULL AUTO_INCREMENT,
  `ReporterID` int DEFAULT NULL,
  `ReportedUserID` int DEFAULT NULL,
  `PropertyID` int DEFAULT NULL,
  `Description` text,
  `CreatedAt` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`ReportID`),
  KEY `ReporterID` (`ReporterID`),
  KEY `ReportedUserID` (`ReportedUserID`),
  KEY `PropertyID` (`PropertyID`),
  CONSTRAINT `reports_ibfk_1` FOREIGN KEY (`ReporterID`) REFERENCES `users` (`UserID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `reports_ibfk_2` FOREIGN KEY (`ReportedUserID`) REFERENCES `users` (`UserID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `reports_ibfk_3` FOREIGN KEY (`PropertyID`) REFERENCES `property` (`PropertyID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reports`
--

LOCK TABLES `reports` WRITE;
/*!40000 ALTER TABLE `reports` DISABLE KEYS */;
INSERT INTO `reports` VALUES (1,3,7,12,'The guest left the property in a messy condition.','2024-08-01 09:00:00'),(2,5,8,15,'Noise complaints from neighbors due to loud music.','2024-08-01 10:15:00'),(3,9,4,18,'Unauthorized party held at the property.','2024-08-02 13:30:00'),(4,2,10,1,'Smoking inside the non-smoking property.','2024-08-02 14:45:00'),(5,1,6,3,'Property not as described in the listing.','2024-08-03 08:30:00'),(6,12,14,5,'Host canceled the reservation without notice.','2024-08-03 11:00:00'),(7,13,15,6,'Suspicious activity reported by the guest.','2024-08-04 07:15:00'),(8,16,18,9,'Property was not cleaned before check-in.','2024-08-04 09:50:00'),(9,7,13,14,'Violation of house rules by the guest.','2024-08-05 12:20:00'),(10,11,16,17,'Host was unresponsive to inquiries.','2024-08-05 13:45:00'),(11,4,11,2,'Guest damaged the property during their stay.','2024-08-06 08:10:00'),(12,8,19,7,'Unauthorized additional guests were brought in.','2024-08-06 10:35:00'),(13,10,5,4,'Discrimination experienced by the guest.','2024-08-07 14:00:00'),(14,17,3,13,'Incorrect charges for the stay.','2024-08-07 15:15:00'),(15,15,20,8,'Host requested payment outside the platform.','2024-08-08 09:45:00'),(16,14,9,10,'Guest did not follow the checkout procedure.','2024-08-08 11:05:00'),(17,18,1,11,'Property had safety concerns not listed.','2024-08-09 08:25:00'),(18,19,2,16,'Host refused to provide a refund after cancellation.','2024-08-09 10:00:00'),(19,20,17,20,'Guest violated quiet hours multiple times.','2024-08-10 12:40:00'),(20,6,12,19,'Host did not show up for check-in and did not communicate.','2024-08-10 13:55:00');
/*!40000 ALTER TABLE `reports` ENABLE KEYS */;
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
