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
-- Table structure for table `property`
--

DROP TABLE IF EXISTS `property`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `property` (
  `PropertyID` int NOT NULL AUTO_INCREMENT,
  `HostID` int DEFAULT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `Description` text,
  `LocationID` int DEFAULT NULL,
  `CategoryID` int DEFAULT NULL,
  `PricePerNight` decimal(10,2) DEFAULT NULL,
  `MaxGuests` int DEFAULT NULL,
  `CreatedAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`PropertyID`),
  KEY `HostID` (`HostID`),
  KEY `LocationID` (`LocationID`),
  KEY `CategoryID` (`CategoryID`),
  CONSTRAINT `property_ibfk_1` FOREIGN KEY (`HostID`) REFERENCES `host` (`HostID`),
  CONSTRAINT `property_ibfk_2` FOREIGN KEY (`LocationID`) REFERENCES `location` (`LocationID`),
  CONSTRAINT `property_ibfk_3` FOREIGN KEY (`CategoryID`) REFERENCES `propertycategory` (`CategoryID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `property`
--

LOCK TABLES `property` WRITE;
/*!40000 ALTER TABLE `property` DISABLE KEYS */;
INSERT INTO `property` VALUES (1,10,'Cozy Studio in NYC','A small but cozy studio in the heart of Manhattan. Ideal for solo travelers.',1,1,120.00,2,'2024-08-01 09:00:00'),(2,11,'Luxury Apartment in San Francisco','A modern, luxurious apartment with a stunning view of the city skyline.',2,2,250.00,4,'2024-08-02 10:00:00'),(3,12,'Charming Bungalow in Austin','Quaint bungalow perfect for a weekend getaway. Located near downtown Austin.',3,3,150.00,3,'2024-08-03 11:00:00'),(4,13,'Beachfront Condo in Miami','Enjoy the beach just steps away from this comfortable condo with all amenities.',5,4,300.00,5,'2024-08-04 08:00:00'),(5,14,'Downtown Loft in Los Angeles','Spacious loft in downtown LA with access to nightlife and entertainment.',4,5,200.00,4,'2024-08-05 13:00:00'),(6,15,'Cozy Cabin in Seattle','A rustic cabin with a fireplace, perfect for a peaceful retreat in the woods.',6,6,180.00,4,'2024-08-06 12:00:00'),(7,16,'Modern House in Denver','Newly built modern house with all conveniences, located in a quiet neighborhood.',8,7,220.00,6,'2024-08-07 09:30:00'),(8,17,'Penthouse Suite in Toronto','Luxurious penthouse suite with stunning city views and high-end facilities.',11,8,350.00,6,'2024-08-08 10:15:00'),(9,18,'Historic Cottage in Edinburgh','A charming, historic cottage in the heart of Edinburgh, close to all landmarks.',16,9,160.00,2,'2024-08-09 14:00:00'),(10,19,'City Apartment in London','Modern apartment in London with easy access to public transportation and landmarks.',15,10,280.00,3,'2024-08-10 13:00:00'),(11,20,'Riverfront Villa in Sydney','Spacious riverfront villa with private pool and garden.',18,11,450.00,8,'2024-08-11 08:45:00'),(12,1,'Ski Lodge in Vancouver','Cozy ski lodge close to popular ski resorts. Perfect for winter sports lovers.',12,12,400.00,5,'2024-08-12 12:30:00'),(13,2,'Countryside House in Dublin','Traditional Irish house with a beautiful countryside view and cozy interiors.',17,13,130.00,4,'2024-08-13 15:00:00'),(14,3,'Studio Flat in Melbourne','Comfortable studio flat ideal for solo travelers or couples, located in Melbourne CBD.',19,14,110.00,2,'2024-08-14 11:00:00'),(15,4,'Urban Apartment in Chicago','Stylish urban apartment in Chicago with easy access to shops, restaurants, and attractions.',9,15,210.00,3,'2024-08-15 12:15:00'),(16,5,'Lake House in Calgary','Beautiful lake house with a stunning view and private access to the lake.',13,16,320.00,7,'2024-08-16 10:45:00'),(17,6,'Rustic Farmhouse in Montreal','A rustic farmhouse surrounded by nature, perfect for a relaxing retreat.',14,17,175.00,5,'2024-08-17 14:30:00'),(18,7,'Ocean View Condo in Auckland','Modern condo with stunning ocean views and easy access to the beach.',20,18,270.00,4,'2024-08-18 13:45:00'),(19,8,'Cottage in Portland','Cozy cottage in Portland with a garden, ideal for a quiet vacation.',7,19,140.00,3,'2024-08-19 08:20:00'),(20,9,'Luxury Chalet in Aspen','High-end chalet in Aspen, perfect for large groups and family gatherings.',10,20,600.00,12,'2024-08-20 09:15:00');
/*!40000 ALTER TABLE `property` ENABLE KEYS */;
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
