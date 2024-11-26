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
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `UserID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(100) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `CreatedAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `RoleID` int DEFAULT NULL,
  PRIMARY KEY (`UserID`),
  KEY `RoleID` (`RoleID`),
  CONSTRAINT `users_ibfk_1` FOREIGN KEY (`RoleID`) REFERENCES `roles` (`RoleID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Alice Johnson','alice.johnson@example.com','passAlice123!','2024-01-15 10:20:00',1),(2,'Bob Smith','bob.smith@example.com','bobPass2024!','2024-01-16 11:30:00',2),(3,'Clara Davis','clara.davis@example.com','claraSecure45$','2024-01-17 09:45:00',1),(4,'David Brown','david.brown@example.com','davidPass99#','2024-01-18 08:50:00',2),(5,'Eva Wilson','eva.wilson@example.com','evawilson123#','2024-01-19 12:10:00',1),(6,'Frank Taylor','frank.taylor@example.com','frankSecure78!','2024-01-20 13:00:00',2),(7,'Grace Martinez','grace.martinez@example.com','gracePass432!','2024-01-21 15:15:00',1),(8,'Henry Moore','henry.moore@example.com','henrySecure321#','2024-01-22 17:25:00',2),(9,'Isla Thompson','isla.thompson@example.com','islaSafePass123!','2024-01-23 19:40:00',1),(10,'Jack White','jack.white@example.com','jackPassword456#','2024-01-24 20:05:00',2),(11,'Lily Harris','lily.harris@example.com','lilySecure99$','2024-01-25 11:55:00',1),(12,'Mark Clark','mark.clark@example.com','markSafePass789!','2024-01-26 13:35:00',2),(13,'Nora Lewis','nora.lewis@example.com','noraPass567$','2024-01-27 15:05:00',1),(14,'Oscar Walker','oscar.walker@example.com','oscarSecure101!','2024-01-28 16:45:00',2),(15,'Paula Hall','paula.hall@example.com','paulaStrongPass456#','2024-01-29 18:15:00',1),(16,'Quinn Allen','quinn.allen@example.com','quinnPassword321!','2024-01-30 20:25:00',2),(17,'Ryan Young','ryan.young@example.com','ryanSecure654$','2024-01-31 22:30:00',1),(18,'Sophie King','sophie.king@example.com','sophiePass852#','2024-02-01 09:05:00',2),(19,'Tyler Scott','tyler.scott@example.com','tylerSecure908!','2024-02-02 10:55:00',1),(20,'Uma Baker','uma.baker@example.com','umaStrongPass432#','2024-02-03 14:20:00',2);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
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
