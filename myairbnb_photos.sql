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
-- Table structure for table `photos`
--

DROP TABLE IF EXISTS `photos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `photos` (
  `PhotoID` int NOT NULL AUTO_INCREMENT,
  `PropertyID` int DEFAULT NULL,
  `PhotoURL` varchar(255) DEFAULT NULL,
  `Description` text,
  `CreatedAt` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`PhotoID`),
  KEY `fk_property_id` (`PropertyID`),
  CONSTRAINT `fk_property_id` FOREIGN KEY (`PropertyID`) REFERENCES `property` (`PropertyID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `photos`
--

LOCK TABLES `photos` WRITE;
/*!40000 ALTER TABLE `photos` DISABLE KEYS */;
INSERT INTO `photos` VALUES (1,1,'https://example.com/photos/1.jpg','Cozy living room with a view','2024-08-01 08:00:00'),(2,1,'https://example.com/photos/2.jpg','Spacious kitchen area','2024-08-01 08:15:00'),(3,2,'https://example.com/photos/3.jpg','Modern bathroom with a bathtub','2024-08-02 09:00:00'),(4,2,'https://example.com/photos/4.jpg','Elegant bedroom with king-sized bed','2024-08-02 09:30:00'),(5,3,'https://example.com/photos/5.jpg','Charming garden view','2024-08-03 10:00:00'),(6,3,'https://example.com/photos/6.jpg','Stylish dining area','2024-08-03 10:30:00'),(7,4,'https://example.com/photos/7.jpg','Bright and airy living room','2024-08-04 11:00:00'),(8,4,'https://example.com/photos/8.jpg','Cozy fireplace area','2024-08-04 11:30:00'),(9,5,'https://example.com/photos/9.jpg','Stunning rooftop terrace','2024-08-05 12:00:00'),(10,5,'https://example.com/photos/10.jpg','Spacious and modern living area','2024-08-05 12:30:00'),(11,6,'https://example.com/photos/11.jpg','Comfy bedroom with a balcony','2024-08-06 13:00:00'),(12,6,'https://example.com/photos/12.jpg','Well-equipped kitchen','2024-08-06 13:30:00'),(13,7,'https://example.com/photos/13.jpg','Elegant dining setup','2024-08-07 14:00:00'),(14,7,'https://example.com/photos/14.jpg','Luxurious master bedroom','2024-08-07 14:30:00'),(15,8,'https://example.com/photos/15.jpg','Chic urban view','2024-08-08 15:00:00'),(16,8,'https://example.com/photos/16.jpg','Modern and functional workspace','2024-08-08 15:30:00'),(17,9,'https://example.com/photos/17.jpg','Spacious backyard with pool','2024-08-09 16:00:00'),(18,9,'https://example.com/photos/18.jpg','Comfortable living area','2024-08-09 16:30:00'),(19,10,'https://example.com/photos/19.jpg','Trendy interior design','2024-08-10 17:00:00'),(20,10,'https://example.com/photos/20.jpg','Inviting outdoor seating area','2024-08-10 17:30:00');
/*!40000 ALTER TABLE `photos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-09-14 21:22:20
