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
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `messages` (
  `MessageID` int NOT NULL AUTO_INCREMENT,
  `SenderID` int DEFAULT NULL,
  `ReceiverID` int DEFAULT NULL,
  `Content` text,
  `SentAt` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`MessageID`),
  KEY `fk_receiver_id` (`ReceiverID`),
  KEY `fk_sender_id` (`SenderID`),
  CONSTRAINT `fk_receiver_id` FOREIGN KEY (`ReceiverID`) REFERENCES `users` (`UserID`),
  CONSTRAINT `fk_sender_id` FOREIGN KEY (`SenderID`) REFERENCES `users` (`UserID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` VALUES (1,10,11,'Hi Lucas, can you confirm the booking details for my stay next week?','2024-08-01 08:15:00'),(2,11,10,'Hello Karen, your booking is confirmed. Looking forward to hosting you!','2024-08-01 08:45:00'),(3,12,13,'Hi Ethan, do you need any special arrangements for your upcoming visit?','2024-08-02 13:00:00'),(4,13,12,'Hello Mia, no special arrangements needed. See you soon!','2024-08-02 13:30:00'),(5,14,15,'Hi Alexander, can you provide more details about the amenities?','2024-08-03 10:00:00'),(6,15,14,'Hello Charlotte, our amenities include a fully equipped kitchen and a gym.','2024-08-03 10:30:00'),(7,16,17,'Hi Daniel, I would like to schedule an event at your place next month.','2024-08-04 07:20:00'),(8,17,16,'Hello Ava, please provide the date and details for the event.','2024-08-04 07:50:00'),(9,18,19,'Hi Henry, could you let me know if you have availability for a long-term stay?','2024-08-05 09:10:00'),(10,19,18,'Hello Grace, we do have availability. Please provide your check-in and check-out dates.','2024-08-05 09:40:00'),(11,20,10,'Hi Karen, I have some questions regarding the data privacy measures at your property.','2024-08-06 11:25:00'),(12,10,20,'Hello Victoria, we ensure high standards of data privacy. Let me know if you need specific details.','2024-08-06 11:55:00'),(13,11,12,'Hi Mia, can you confirm the check-in time?','2024-08-07 13:30:00'),(14,12,11,'Hello Lucas, check-in is from 3 PM onwards. Let me know if you need an earlier time.','2024-08-07 14:00:00'),(15,13,14,'Hi Charlotte, I need to cancel my reservation. What is the process?','2024-08-08 08:00:00'),(16,14,13,'Hello Ethan, please provide your reservation details and we will guide you through the cancellation process.','2024-08-08 08:30:00'),(17,15,16,'Hi Ava, can you confirm if the property is pet-friendly?','2024-08-09 10:20:00'),(18,16,15,'Hello Alexander, yes, we do allow pets. Please let us know if you need any additional arrangements.','2024-08-09 10:50:00'),(19,17,18,'Hi Grace, I’m interested in hosting a workshop. Can we discuss the details?','2024-08-10 13:00:00'),(20,18,17,'Hello Daniel, I’d be happy to discuss the workshop. When would be a good time for you?','2024-08-10 13:30:00');
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-09-14 21:22:22
