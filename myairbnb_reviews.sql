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
-- Table structure for table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reviews` (
  `ReviewID` int NOT NULL AUTO_INCREMENT,
  `PropertyID` int DEFAULT NULL,
  `Rating` int DEFAULT NULL,
  `Comment` text,
  `CreatedAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `GuestID` int DEFAULT NULL,
  PRIMARY KEY (`ReviewID`),
  KEY `PropertyID` (`PropertyID`),
  KEY `GuestID` (`GuestID`),
  CONSTRAINT `reviews_ibfk_1` FOREIGN KEY (`PropertyID`) REFERENCES `property` (`PropertyID`),
  CONSTRAINT `reviews_ibfk_2` FOREIGN KEY (`GuestID`) REFERENCES `guests` (`GuestID`),
  CONSTRAINT `reviews_chk_1` CHECK ((`Rating` between 1 and 5))
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviews`
--

LOCK TABLES `reviews` WRITE;
/*!40000 ALTER TABLE `reviews` DISABLE KEYS */;
INSERT INTO `reviews` VALUES (1,1,5,'Amazing stay! The host was very welcoming and the property was spotless.','2024-08-01 09:00:00',1),(2,2,4,'Great location, but the Wi-Fi was a bit slow.','2024-08-02 10:30:00',2),(3,3,5,'Loved the amenities and the cozy atmosphere. Will visit again!','2024-08-03 08:45:00',3),(4,4,3,'The stay was okay, but the place could use some updates.','2024-08-04 07:15:00',4),(5,5,4,'Nice place but a bit noisy at night.','2024-08-05 11:20:00',5),(6,6,5,'Perfect for a weekend getaway! Great host and amazing property.','2024-08-06 14:50:00',6),(7,7,4,'Comfortable stay but some issues with the heating system.','2024-08-07 10:05:00',7),(8,8,5,'Fantastic property with stunning views. Highly recommend!','2024-08-08 12:10:00',8),(9,9,3,'Decent place, but the bathroom could have been cleaner.','2024-08-09 13:40:00',9),(10,10,5,'Absolutely loved it! Very friendly host and great amenities.','2024-08-10 15:00:00',10),(11,11,4,'Lovely place, but parking was a bit challenging.','2024-08-11 16:30:00',11),(12,12,5,'Beautiful property with all the amenities we needed. Would stay again.','2024-08-12 09:25:00',12),(13,13,3,'The host was helpful, but the property needs better maintenance.','2024-08-13 17:55:00',13),(14,14,4,'Great location, but the beds were a bit uncomfortable.','2024-08-14 11:10:00',14),(15,15,5,'Had a wonderful stay! The host was very accommodating.','2024-08-15 18:45:00',15),(16,16,4,'Nice stay but could use some improvements in cleanliness.','2024-08-16 13:30:00',16),(17,17,5,'Exceptional experience! Will definitely book again.','2024-08-17 15:15:00',17),(18,18,4,'Good stay, but some noise from the nearby construction site.','2024-08-18 17:20:00',18),(19,19,5,'Beautiful and serene location. Just what we needed!','2024-08-19 19:30:00',19),(20,20,4,'Overall good experience but could use better lighting.','2024-08-20 20:45:00',20);
/*!40000 ALTER TABLE `reviews` ENABLE KEYS */;
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
