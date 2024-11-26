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
-- Table structure for table `wishlists`
--

DROP TABLE IF EXISTS `wishlists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wishlists` (
  `WishlistID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(100) DEFAULT NULL,
  `CreatedAt` timestamp NULL DEFAULT NULL,
  `GuestID` int DEFAULT NULL,
  `PropertyID` int DEFAULT NULL,
  PRIMARY KEY (`WishlistID`),
  KEY `GuestID` (`GuestID`),
  KEY `PropertyID` (`PropertyID`),
  CONSTRAINT `wishlists_ibfk_1` FOREIGN KEY (`GuestID`) REFERENCES `guests` (`GuestID`),
  CONSTRAINT `wishlists_ibfk_2` FOREIGN KEY (`PropertyID`) REFERENCES `property` (`PropertyID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wishlists`
--

LOCK TABLES `wishlists` WRITE;
/*!40000 ALTER TABLE `wishlists` DISABLE KEYS */;
INSERT INTO `wishlists` VALUES (1,'Romantic Getaways','2024-08-01 09:00:00',1,5),(2,'Family Vacations','2024-08-02 10:15:00',2,3),(3,'Beachfront Homes','2024-08-03 08:30:00',3,7),(4,'Mountain Retreats','2024-08-04 13:20:00',4,2),(5,'City Explorers','2024-08-05 15:45:00',5,10),(6,'Budget-Friendly Stays','2024-08-06 11:10:00',6,12),(7,'Luxury Escapes','2024-08-07 14:50:00',7,8),(8,'Pet-Friendly Spots','2024-08-08 12:05:00',8,11),(9,'Unique Rentals','2024-08-09 08:25:00',9,1),(10,'Historical Homes','2024-08-10 17:35:00',10,4),(11,'Farm Stays','2024-08-11 07:45:00',11,14),(12,'Cabin Adventures','2024-08-12 09:55:00',12,6),(13,'Downtown Apartments','2024-08-13 13:15:00',13,9),(14,'Countryside Getaways','2024-08-14 11:35:00',14,15),(15,'Eco-Friendly Retreats','2024-08-15 16:25:00',15,17),(16,'Hostels and More','2024-08-16 10:20:00',16,13),(17,'Desert Oasis','2024-08-17 08:40:00',17,16),(18,'Secluded Stays','2024-08-18 14:10:00',18,19),(19,'Island Villas','2024-08-19 12:30:00',19,18),(20,'Tiny Homes','2024-08-20 13:55:00',20,20);
/*!40000 ALTER TABLE `wishlists` ENABLE KEYS */;
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
