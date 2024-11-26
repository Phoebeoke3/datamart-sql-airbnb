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
-- Table structure for table `host`
--

DROP TABLE IF EXISTS `host`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `host` (
  `HostID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(100) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `CreatedAt` timestamp NULL DEFAULT NULL,
  `PhoneNumber` text,
  `RoleID` int DEFAULT NULL,
  PRIMARY KEY (`HostID`),
  KEY `fk_host_role` (`RoleID`),
  CONSTRAINT `fk_host_role` FOREIGN KEY (`RoleID`) REFERENCES `roles` (`RoleID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `host`
--

LOCK TABLES `host` WRITE;
/*!40000 ALTER TABLE `host` DISABLE KEYS */;
INSERT INTO `host` VALUES (1,'Karen Mitchell','karen.mitchell@example.com','cityHost123!','2023-01-10 09:30:00','+11234567890',1),(2,'Linda and George Edwards','linda.george.edwards@example.com','countryRetirees2023','2023-01-15 14:15:00','+11234567891',2),(3,'Sam Turner','sam.turner@example.com','travelNomad2024!','2023-02-05 12:45:00','+11234567892',3),(4,'Emma Brown','emma.brown@example.com','studioRental2024$','2023-02-20 08:30:00','+11234567893',4),(5,'Alex Gomez','alex.gomez@example.com','propertyManager2023!','2023-03-02 16:00:00','+11234567894',5),(6,'Zoe Martinez','zoe.martinez@example.com','artLoft2023@','2023-03-12 10:20:00','+11234567895',6),(7,'Daniel Peters','daniel.peters@example.com','tinyHouseEco!','2023-03-25 11:55:00','+11234567896',7),(8,'The Johnson Family','johnson.family@example.com','familyStay123!','2023-04-01 12:30:00','+11234567897',8),(9,'Richard Wallace','richard.wallace@example.com','historyHome2023!','2023-04-10 14:45:00','+11234567898',9),(10,'Sarah King','sarah.king@example.com','designerHome456!','2023-04-20 13:10:00','+11234567899',10),(11,'Mike and Nancy Reed','mike.nancy.reed@example.com','lakeCabin2023@','2023-05-02 08:20:00','+11234567900',11),(12,'Liam O\'Sullivan','liam.osullivan@example.com','bnbHost2024$','2023-05-15 15:30:00','+11234567901',12),(13,'Olivia Green','olivia.green@example.com','petFriendly2023!','2023-05-25 16:40:00','+11234567902',13),(14,'Barbara Miller','barbara.miller@example.com','teachParis2024!','2023-06-05 10:15:00','+11234567903',14),(15,'Chris Anderson','chris.anderson@example.com','mountainChalet!','2023-06-12 09:00:00','+11234567904',15),(16,'Tom and Lisa Bennett','tom.lisa.bennett@example.com','guesthouse2023!','2023-06-20 13:50:00','+11234567905',16),(17,'Jessica Carter','jessica.carter@example.com','urbanLoftChicago$','2023-07-02 14:05:00','+11234567906',17),(18,'Rajesh Patel','rajesh.patel@example.com','seasideVilla2023@','2023-07-10 12:30:00','+11234567907',18),(19,'Amy White','amy.white@example.com','smartHomeTech2024!','2023-07-25 08:15:00','+11234567908',19),(20,'Matthew Ross','matthew.ross@example.com','barnStay2023#','2023-08-01 07:45:00','+11234567909',20);
/*!40000 ALTER TABLE `host` ENABLE KEYS */;
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
