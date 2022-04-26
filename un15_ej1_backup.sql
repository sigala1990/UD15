CREATE DATABASE  IF NOT EXISTS `ud15_ej1` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `ud15_ej1`;
-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: 192.168.111.236    Database: ud15_ej1
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `despachos`
--

DROP TABLE IF EXISTS `despachos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `despachos` (
  `numero` int NOT NULL,
  `capacidad` int DEFAULT NULL,
  PRIMARY KEY (`numero`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `despachos`
--

LOCK TABLES `despachos` WRITE;
/*!40000 ALTER TABLE `despachos` DISABLE KEYS */;
INSERT INTO `despachos` VALUES (11,4),(22,4),(33,4),(44,4),(55,4),(66,4),(77,4),(88,4),(99,4),(111,4);
/*!40000 ALTER TABLE `despachos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `directores`
--

DROP TABLE IF EXISTS `directores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `directores` (
  `DNI` varchar(8) NOT NULL,
  `nombreApellidos` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `despacho_FK` int DEFAULT NULL,
  `DNIJefe_FK` varchar(8) DEFAULT NULL,
  PRIMARY KEY (`DNI`),
  KEY `despacho_FK` (`despacho_FK`),
  KEY `DNIJefe_FK` (`DNIJefe_FK`),
  CONSTRAINT `directores_ibfk_1` FOREIGN KEY (`despacho_FK`) REFERENCES `despachos` (`numero`),
  CONSTRAINT `directores_ibfk_2` FOREIGN KEY (`DNIJefe_FK`) REFERENCES `directores` (`DNI`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `directores`
--

LOCK TABLES `directores` WRITE;
/*!40000 ALTER TABLE `directores` DISABLE KEYS */;
INSERT INTO `directores` VALUES ('A1234567','Verónica P.',11,'A1234567'),('B1234567','Adria Q.',11,'A1234567'),('C1234567','Aida Q.',22,'A1234567'),('D1234567','Marc P.',44,'A1234567'),('E1234567','Marc L.',55,'A1234567'),('F1234567','Gerard S.',22,'A1234567'),('G1234567','Eloi M.',77,'A1234567'),('H1234567','Octavio B.',55,'A1234567'),('I1234567','Marc N.',33,'A1234567'),('J1234567','Joan H.',99,'A1234567');
/*!40000 ALTER TABLE `directores` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-26 16:36:00
