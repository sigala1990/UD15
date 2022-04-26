CREATE DATABASE  IF NOT EXISTS `UD1409` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `UD1409`;
-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: 192.168.88.123    Database: UD1409
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
-- Table structure for table `ASIGNADO_A`
--

DROP TABLE IF EXISTS `ASIGNADO_A`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ASIGNADO_A` (
  `asignadoID` int NOT NULL AUTO_INCREMENT,
  `cientifico` varchar(8) DEFAULT NULL,
  `proyecto` char(4) DEFAULT NULL,
  PRIMARY KEY (`asignadoID`),
  KEY `cientifico` (`cientifico`,`proyecto`),
  KEY `proyecto` (`proyecto`),
  CONSTRAINT `ASIGNADO_A_ibfk_1` FOREIGN KEY (`cientifico`) REFERENCES `CIENTIFICOS` (`dni`),
  CONSTRAINT `ASIGNADO_A_ibfk_2` FOREIGN KEY (`proyecto`) REFERENCES `PROYECTO` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ASIGNADO_A`
--

LOCK TABLES `ASIGNADO_A` WRITE;
/*!40000 ALTER TABLE `ASIGNADO_A` DISABLE KEYS */;
INSERT INTO `ASIGNADO_A` VALUES (3,'100000','1'),(6,'222222','6'),(9,'222222','9'),(10,'444444','10'),(5,'444444','5'),(4,'555555','4'),(8,'555555','8'),(11,'555555','9'),(1,'777777','1'),(2,'888888','3'),(7,'999999','7');
/*!40000 ALTER TABLE `ASIGNADO_A` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CIENTIFICOS`
--

DROP TABLE IF EXISTS `CIENTIFICOS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CIENTIFICOS` (
  `dni` varchar(8) NOT NULL,
  `NomApels` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`dni`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CIENTIFICOS`
--

LOCK TABLES `CIENTIFICOS` WRITE;
/*!40000 ALTER TABLE `CIENTIFICOS` DISABLE KEYS */;
INSERT INTO `CIENTIFICOS` VALUES ('100000','Pablo Escobar'),('111111','Antonio Perico'),('222222','Tomate Sol'),('333333','Herman Tomate'),('444444','Perico Silicio'),('555555','Adri Qtal'),('666666','Lolailo Gimenez'),('777777','Rueda Caballo'),('888888','Toalla Repartir'),('999999','Qwerty Luna');
/*!40000 ALTER TABLE `CIENTIFICOS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PROYECTO`
--

DROP TABLE IF EXISTS `PROYECTO`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `PROYECTO` (
  `id` char(4) NOT NULL,
  `nombre` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `horas` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PROYECTO`
--

LOCK TABLES `PROYECTO` WRITE;
/*!40000 ALTER TABLE `PROYECTO` DISABLE KEYS */;
INSERT INTO `PROYECTO` VALUES ('1','Alpha',3),('10','Puerta',6),('2','Beta',2),('3','Celta',5),('4','Eurus',7),('5','Delta',4),('6','Frank',2),('7','Monte',6),('8','Wisky',5),('9','Friskye',1);
/*!40000 ALTER TABLE `PROYECTO` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-26 10:06:20
