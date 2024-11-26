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
-- Table structure for table `location`
--

DROP TABLE IF EXISTS `location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `location` (
  `LocationID` int NOT NULL AUTO_INCREMENT,
  `Address` varchar(255) DEFAULT NULL,
  `City` varchar(100) DEFAULT NULL,
  `State` varchar(100) DEFAULT NULL,
  `Country` varchar(100) DEFAULT NULL,
  `ZipCode` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`LocationID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `location`
--

LOCK TABLES `location` WRITE;
/*!40000 ALTER TABLE `location` DISABLE KEYS */;
INSERT INTO `location` VALUES (1,'123 Main St','New York','NY','USA','10001'),(2,'456 Elm St','San Francisco','CA','USA','94102'),(3,'789 Oak St','Austin','TX','USA','73301'),(4,'101 Pine Ave','Los Angeles','CA','USA','90001'),(5,'202 Maple Rd','Miami','FL','USA','33101'),(6,'303 Birch Blvd','Seattle','WA','USA','98101'),(7,'404 Cedar St','Portland','OR','USA','97201'),(8,'505 Walnut St','Denver','CO','USA','80201'),(9,'606 Willow Way','Chicago','IL','USA','60601'),(10,'707 Spruce Dr','Boston','MA','USA','02101'),(11,'808 Chestnut Ln','Toronto','ON','Canada','M5A 1A1'),(12,'909 Fir Ave','Vancouver','BC','Canada','V6B 3N9'),(13,'1010 Redwood Rd','Calgary','AB','Canada','T2P 2A4'),(14,'1111 Aspen Ct','Montreal','QC','Canada','H2X 1Y8'),(15,'1212 Oakwood Dr','London','ENG','UK','W1A 1AA'),(16,'1313 Pine Tree Ave','Edinburgh','SCT','UK','EH1 2AB'),(17,'1414 Maple Leaf St','Dublin','D','Ireland','D01 A1B2'),(18,'1515 Riverbank Rd','Sydney','NSW','Australia','2000'),(19,'1616 Harbourview Ln','Melbourne','VIC','Australia','3000'),(20,'1717 Coastal Dr','Auckland','AUK','New Zealand','1010');
/*!40000 ALTER TABLE `location` ENABLE KEYS */;
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
