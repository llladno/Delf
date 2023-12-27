-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: delf
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `ticket`
--

DROP TABLE IF EXISTS `ticket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ticket` (
  `idticket` int NOT NULL AUTO_INCREMENT,
  `category` varchar(10) NOT NULL,
  `cost` int NOT NULL,
  `time` varchar(10) NOT NULL,
  `person` int NOT NULL,
  `dateticket` varchar(45) NOT NULL,
  PRIMARY KEY (`idticket`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticket`
--

LOCK TABLES `ticket` WRITE;
/*!40000 ALTER TABLE `ticket` DISABLE KEYS */;
INSERT INTO `ticket` VALUES (2,'2',5,'5',8,'2023-06-18'),(3,'Ребёнок',320,'1',1,'2023-06-17'),(4,'Ребёнок',320,'1',1,'2023-06-19'),(5,'Пенсионер',1920,'2',3,'2023-06-19'),(6,'Пенсионер',3840,'4',3,'2023-06-19'),(7,'Пенсионер',5120,'4',4,'2023-06-19'),(8,'Пенсионер',5120,'4',4,'2023-06-19'),(9,'Пенсионер',5120,'4',4,'2023-06-19'),(10,'Пенсионер',5120,'4',4,'2023-06-19'),(11,'Пенсионер',5120,'4',4,'2023-06-19'),(12,'Взрослый',3600,'3',3,'2023-06-20'),(13,'Взрослый',3600,'3',3,'2023-06-20'),(14,'Взрослый',3600,'3',3,'2023-06-20'),(15,'Взрослый',3600,'3',3,'2023-06-20'),(16,'Взрослый',3600,'3',3,'2023-06-20'),(17,'Взрослый',4800,'3',4,'2023-06-21'),(18,'Взрослый',4000,'5',2,'2023-06-21'),(21,'Взрослый',6400,'4',4,'2023-06-28');
/*!40000 ALTER TABLE `ticket` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-22 12:29:27
