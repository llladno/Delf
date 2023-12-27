CREATE DATABASE  IF NOT EXISTS `delf` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `delf`;
-- MySQL dump 10.13  Distrib 5.5.62, for debian-linux-gnu (x86_64)
--
-- Host: 127.0.0.1    Database: delf
-- ------------------------------------------------------
-- Server version	5.5.62-0ubuntu0.14.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `cheque`
--

DROP TABLE IF EXISTS `cheque`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cheque` (
  `idcheque` int(11) NOT NULL AUTO_INCREMENT,
  `idemployee` int(11) NOT NULL,
  `idclient` int(11) NOT NULL,
  `idticket` int(11) NOT NULL,
  `dateandtime` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`idcheque`),
  KEY `idemployee` (`idemployee`),
  KEY `idclient` (`idclient`),
  KEY `idticket` (`idticket`),
  CONSTRAINT `cheque_ibfk_1` FOREIGN KEY (`idemployee`) REFERENCES `employee` (`idemployee`) ON DELETE CASCADE,
  CONSTRAINT `cheque_ibfk_2` FOREIGN KEY (`idclient`) REFERENCES `client` (`idclient`) ON DELETE CASCADE,
  CONSTRAINT `cheque_ibfk_3` FOREIGN KEY (`idticket`) REFERENCES `ticket` (`idticket`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cheque`
--

LOCK TABLES `cheque` WRITE;
/*!40000 ALTER TABLE `cheque` DISABLE KEYS */;
INSERT INTO `cheque` VALUES (1,2,13,21,'27.06.2023, 22:00:33'),(2,2,13,22,'27.06.2023, 22:01:08'),(3,2,13,23,'27.06.2023, 22:01:19'),(4,2,18,24,'01.07.2023, 19:53:54'),(5,2,18,25,'01.07.2023, 20:11:37'),(6,2,19,26,'01.07.2023, 20:12:29'),(7,2,20,27,'15.07.2023, 18:22:01'),(8,2,20,28,'15.07.2023, 18:22:08');
/*!40000 ALTER TABLE `cheque` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `client`
--

DROP TABLE IF EXISTS `client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `client` (
  `idclient` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pol` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `datebirthday` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `passwd` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`idclient`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client`
--

LOCK TABLES `client` WRITE;
/*!40000 ALTER TABLE `client` DISABLE KEYS */;
INSERT INTO `client` VALUES (3,'1111','11111','1111-11-11','1111','111','111'),(11,'Анна','m','1949-05-19','@mail','8999','1'),(12,'321','m','1950-02-20','321','222','1'),(13,'Г','m','2000-02-20','12','7','1'),(14,'test1','m','2006-12-31','test1','2','2'),(15,'test2','m','2006-02-20','test2','2','2'),(16,'qwe','w','2013-01-20','qwe','2222','qwe'),(17,'qwe1','w','2009-02-20','qwe1','22222','qwe1'),(18,'b2','m','2018-02-20','b2','2222','b2'),(19,'c3','m','','c3','2222','c3'),(20,'anya','w','2003-06-25','anya','11111','anya'),(21,'Ann','w','2003-06-25','123@mail.com','4567754','1'),(22,'Анна','w','1999-04-03','1111mail.ru','65435566','123'),(23,'макс','m','2000-07-25','512mail.ru','78123456787','1'),(24,'123333','m','2019-12-26','123333','123333','123333');
/*!40000 ALTER TABLE `client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee` (
  `idemployee` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `datebirthday` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`idemployee`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (2,'Анна','888','2002-02-20');
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ticket`
--

DROP TABLE IF EXISTS `ticket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ticket` (
  `idticket` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cost` int(11) NOT NULL,
  `time` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `person` int(11) NOT NULL,
  `dateticket` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`idticket`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticket`
--

LOCK TABLES `ticket` WRITE;
/*!40000 ALTER TABLE `ticket` DISABLE KEYS */;
INSERT INTO `ticket` VALUES (2,'2',5,'5',8,'2023-06-18'),(3,'Ребёнок',320,'1',1,'2023-06-17'),(4,'Ребёнок',320,'1',1,'2023-06-19'),(5,'Пенсионер',1920,'2',3,'2023-06-19'),(6,'Пенсионер',3840,'4',3,'2023-06-19'),(7,'Пенсионер',5120,'4',4,'2023-06-19'),(8,'Пенсионер',5120,'4',4,'2023-06-19'),(9,'Пенсионер',5120,'4',4,'2023-06-19'),(10,'Пенсионер',5120,'4',4,'2023-06-19'),(11,'Пенсионер',5120,'4',4,'2023-06-19'),(12,'Взрослый',3600,'3',3,'2023-06-20'),(13,'Взрослый',3600,'3',3,'2023-06-20'),(14,'Взрослый',3600,'3',3,'2023-06-20'),(15,'Взрослый',3600,'3',3,'2023-06-20'),(16,'Взрослый',3600,'3',3,'2023-06-20'),(17,'Взрослый',4800,'3',4,'2023-06-21'),(18,'Взрослый',4000,'5',2,'2023-06-21'),(21,'Взрослый',6400,'4',4,'2023-06-28'),(22,'Взрослый',6400,'4',4,'2023-06-29'),(23,'Взрослый',4000,'2',5,'2023-06-30'),(24,'Взрослый',4000,'2',5,'2023-06-30'),(25,'Ребёнок',2880,'3',3,'2023-07-03'),(26,'Ребёнок',1280,'2',2,'2023-07-05'),(27,'Взрослый',1600,'4',1,'2023-07-04'),(28,'Взрослый',3600,'3',3,'2023-07-18'),(29,'Взрослый',3600,'3',3,'2023-07-18');
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

-- Dump completed on 2023-12-27 18:19:56
