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
-- Table structure for table `guests`
--

DROP TABLE IF EXISTS `guests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `guests` (
  `GuestID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(100) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `CreatedAt` timestamp NULL DEFAULT NULL,
  `PhoneNumber` text,
  `RoleID` int DEFAULT NULL,
  PRIMARY KEY (`GuestID`),
  KEY `fk_guest_role` (`RoleID`),
  CONSTRAINT `fk_guest_role` FOREIGN KEY (`RoleID`) REFERENCES `roles` (`RoleID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guests`
--

LOCK TABLES `guests` WRITE;
/*!40000 ALTER TABLE `guests` DISABLE KEYS */;
INSERT INTO `guests` VALUES (1,'Jon Doe','joh.doe@example.com','jonDoePass123','2024-08-01 09:00:00','123-456-7890',1),(2,'Jane Smith','jane.smith@example.com','janeSecure456','2024-08-02 10:10:00','234-567-8901',1),(3,'Michael Johnson','michael.johnson@example.com','mikeExec789','2024-08-03 08:20:00','345-678-9012',1),(4,'Emily Davis','emily.davis@example.com','emilyPass012','2024-08-04 07:30:00','456-789-0123',1),(5,'William Brown','william.brown@example.com','brownRetiree123','2024-08-05 13:40:00','567-890-1234',1),(6,'Sophia Wilson','sophia.wilson@example.com','sophiaTrips456','2024-08-06 12:50:00','678-901-2345',1),(7,'James Miller','james.miller@example.com','adventureJames789','2024-08-07 11:00:00','789-012-3456',1),(8,'Isabella Martinez','isabella.martinez@example.com','familyTripsIsabella','2024-08-08 10:30:00','890-123-4567',1),(9,'Oliver Anderson','oliver.anderson@example.com','oliverTechPro012','2024-08-09 14:45:00','901-234-5678',1),(10,'Amelia Taylor','amelia.taylor@example.com','ameliaLove456','2024-08-10 15:15:00','012-345-6789',1),(11,'Lucas Lee','lucas.lee@example.com','photoLucas789','2024-08-11 09:20:00','123-456-7891',1),(12,'Mia Thomas','mia.thomas@example.com','safeTripsMia012','2024-08-12 08:35:00','234-567-8902',1),(13,'Ethan Harris','ethan.harris@example.com','petLoverEthan345','2024-08-13 10:50:00','345-678-9013',1),(14,'Charlotte Clark','charlotte.clark@example.com','foodieCharlotte456','2024-08-14 09:05:00','456-789-0124',1),(15,'Alexander Young','alexander.young@example.com','conferenceAlex789','2024-08-15 13:55:00','567-890-1235',1),(16,'Ava King','ava.king@example.com','yogaAva012','2024-08-16 12:10:00','678-901-2346',1),(17,'Daniel Wright','daniel.wright@example.com','partyDaniel345','2024-08-17 11:25:00','789-012-3457',1),(18,'Grace Lopez','grace.lopez@example.com','creativeGrace456','2024-08-18 11:40:00','890-123-4568',1),(19,'Henry Hill','henry.hill@example.com','snowbirdHenry789','2024-08-19 15:05:00','901-234-5679',1),(20,'Victoria Scott','victoria.scott@example.com','instaVictoria012','2024-08-20 10:35:00','012-345-6780',1);
/*!40000 ALTER TABLE `guests` ENABLE KEYS */;
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
