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
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `AdminID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(100) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `CreatedAt` timestamp NULL DEFAULT NULL,
  `RoleID` int DEFAULT NULL,
  PRIMARY KEY (`AdminID`),
  KEY `fk_admin_role` (`RoleID`),
  CONSTRAINT `fk_admin_role` FOREIGN KEY (`RoleID`) REFERENCES `roles` (`RoleID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'John Doe','johndoe@example.com','password123','2024-08-30 09:00:00',1),(2,'Jane Smith','janesmith@example.com','password123','2024-08-30 09:10:00',2),(3,'Mike Johnson','mikejohnson@example.com','password123','2024-08-30 09:20:00',3),(4,'Emily Davis','emilydavis@example.com','password123','2024-08-30 09:30:00',4),(5,'Chris Brown','chrisbrown@example.com','password123','2024-08-30 09:40:00',5),(6,'Sarah Wilson','sarahwilson@example.com','password123','2024-08-30 09:50:00',6),(7,'David Miller','davidmiller@example.com','password123','2024-08-30 10:00:00',7),(8,'Laura Taylor','laurataylor@example.com','password123','2024-08-30 10:10:00',8),(9,'James Anderson','jamesanderson@example.com','password123','2024-08-30 10:20:00',9),(10,'Patricia Thomas','patriciathomas@example.com','password123','2024-08-30 10:30:00',10),(11,'Robert Jackson','robertjackson@example.com','password123','2024-08-30 10:40:00',11),(12,'Linda White','lindawhite@example.com','password123','2024-08-30 10:50:00',12),(13,'Charles Harris','charlesharris@example.com','password123','2024-08-30 11:00:00',13),(14,'Barbara Martin','barbaramartin@example.com','password123','2024-08-30 11:10:00',14),(15,'Joseph Lee','josephlee@example.com','password123','2024-08-30 11:20:00',15),(16,'Nancy Hall','nancyhall@example.com','password123','2024-08-30 11:30:00',16),(17,'Kevin Allen','kevinallen@example.com','password123','2024-08-30 11:40:00',17),(18,'Karen Young','karenyoung@example.com','password123','2024-08-30 11:50:00',18),(19,'Mark King','markking@example.com','password123','2024-08-30 12:00:00',19),(20,'Lisa Wright','lisawright@example.com','password123','2024-08-30 12:10:00',20);
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
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
