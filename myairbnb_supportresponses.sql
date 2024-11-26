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
-- Table structure for table `supportresponses`
--

DROP TABLE IF EXISTS `supportresponses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `supportresponses` (
  `ResponseID` int NOT NULL AUTO_INCREMENT,
  `TicketID` int DEFAULT NULL,
  `Response` text,
  `RespondedAt` timestamp NULL DEFAULT NULL,
  `AdminID` int DEFAULT NULL,
  PRIMARY KEY (`ResponseID`),
  KEY `TicketID` (`TicketID`),
  KEY `AdminID` (`AdminID`),
  CONSTRAINT `supportresponses_ibfk_1` FOREIGN KEY (`TicketID`) REFERENCES `supporttickets` (`TicketID`),
  CONSTRAINT `supportresponses_ibfk_2` FOREIGN KEY (`AdminID`) REFERENCES `admin` (`AdminID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supportresponses`
--

LOCK TABLES `supportresponses` WRITE;
/*!40000 ALTER TABLE `supportresponses` DISABLE KEYS */;
INSERT INTO `supportresponses` VALUES (1,1,'Hi, we have noted your request. Our team will get back to you soon.','2024-08-01 09:00:00',1),(2,2,'We have processed your refund. It should reflect in your account within 3-5 business days.','2024-08-01 10:15:00',2),(3,3,'Thank you for reporting the issue. Our technical team is looking into it.','2024-08-01 11:30:00',3),(4,4,'Please provide additional details regarding the issue you are facing with the property.','2024-08-01 12:45:00',4),(5,5,'Your request to change the booking dates has been approved.','2024-08-02 08:00:00',5),(6,6,'We apologize for the inconvenience caused. A cleaner will be sent to the property immediately.','2024-08-02 09:30:00',6),(7,7,'The Wi-Fi issue has been escalated to the local service provider.','2024-08-02 10:45:00',7),(8,8,'A support representative will visit you shortly to help with the check-in process.','2024-08-02 12:00:00',8),(9,9,'Your complaint has been registered, and we are investigating the issue.','2024-08-03 08:20:00',9),(10,10,'We have credited your account with the refund as per our policy.','2024-08-03 09:40:00',10),(11,11,'Our team will look into the overbooking issue and get back to you soon.','2024-08-03 11:00:00',11),(12,12,'The request for an extra bed has been forwarded to the host.','2024-08-03 12:15:00',12),(13,13,'The noise complaint has been sent to the host, and we are awaiting a response.','2024-08-04 08:45:00',13),(14,14,'Your cancellation request has been processed, and the amount will be refunded as per policy.','2024-08-04 09:30:00',14),(15,15,'The malfunctioning air conditioning unit will be repaired by the end of the day.','2024-08-04 10:50:00',15),(16,16,'Thank you for your patience. The hot water issue is being resolved.','2024-08-04 12:10:00',16),(17,17,'The broken lock issue has been reported to the property manager.','2024-08-05 08:30:00',17),(18,18,'The host has agreed to a late check-out. Please confirm the time.','2024-08-05 09:55:00',18),(19,19,'A refund request has been initiated for the damaged property. We will update you soon.','2024-08-05 11:15:00',19),(20,20,'We are processing your complaint about unauthorized access. Our team will be in touch shortly.','2024-08-05 12:30:00',20);
/*!40000 ALTER TABLE `supportresponses` ENABLE KEYS */;
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
