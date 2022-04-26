-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: 192.168.88.123    Database: UD14ACT10
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
-- Table structure for table `CAJEROS`
--

DROP TABLE IF EXISTS `CAJEROS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CAJEROS` (
  `codigo` int NOT NULL,
  `NomApels` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CAJEROS`
--

LOCK TABLES `CAJEROS` WRITE;
/*!40000 ALTER TABLE `CAJEROS` DISABLE KEYS */;
INSERT INTO `CAJEROS` VALUES (11,'pepe'),(12,'pepa'),(13,'toto'),(14,'tete'),(15,'tito'),(16,'tutu'),(17,'ferran'),(18,'javi'),(19,'varo'),(20,'saray'),(21,'clau');
/*!40000 ALTER TABLE `CAJEROS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MAQUINAS_REGISTRADORAS`
--

DROP TABLE IF EXISTS `MAQUINAS_REGISTRADORAS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `MAQUINAS_REGISTRADORAS` (
  `codigo` int NOT NULL,
  `piso` int NOT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MAQUINAS_REGISTRADORAS`
--

LOCK TABLES `MAQUINAS_REGISTRADORAS` WRITE;
/*!40000 ALTER TABLE `MAQUINAS_REGISTRADORAS` DISABLE KEYS */;
INSERT INTO `MAQUINAS_REGISTRADORAS` VALUES (123123,10010),(124124,10011),(124125,10012),(124126,10013),(124127,10014),(124128,10015),(124129,10016),(124130,10017),(124131,10018),(124132,10019),(124133,10020);
/*!40000 ALTER TABLE `MAQUINAS_REGISTRADORAS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PRODUCTOS`
--

DROP TABLE IF EXISTS `PRODUCTOS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `PRODUCTOS` (
  `codigo` int NOT NULL,
  `nombre` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `precio` int DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PRODUCTOS`
--

LOCK TABLES `PRODUCTOS` WRITE;
/*!40000 ALTER TABLE `PRODUCTOS` DISABLE KEYS */;
INSERT INTO `PRODUCTOS` VALUES (1,'tomate',3),(2,'apio',1),(3,'yogurt',2),(4,'papel WC',3),(5,'agua',1),(6,'manzana',0),(7,'platano',0),(8,'pan',1),(9,'pasta',2),(10,'bollicao',3),(11,'jamon',22);
/*!40000 ALTER TABLE `PRODUCTOS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `VENTA`
--

DROP TABLE IF EXISTS `VENTA`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `VENTA` (
  `ventaID` int NOT NULL AUTO_INCREMENT,
  `codigoCajeros` int DEFAULT NULL,
  `codigoProductos` int DEFAULT NULL,
  `codigoMaquinas` int DEFAULT NULL,
  PRIMARY KEY (`ventaID`),
  KEY `codigoCajeros` (`codigoCajeros`,`codigoProductos`,`codigoMaquinas`),
  KEY `codigoProductos` (`codigoProductos`),
  KEY `codigoMaquinas` (`codigoMaquinas`),
  CONSTRAINT `VENTA_ibfk_1` FOREIGN KEY (`codigoCajeros`) REFERENCES `CAJEROS` (`codigo`),
  CONSTRAINT `VENTA_ibfk_2` FOREIGN KEY (`codigoProductos`) REFERENCES `PRODUCTOS` (`codigo`),
  CONSTRAINT `VENTA_ibfk_3` FOREIGN KEY (`codigoMaquinas`) REFERENCES `MAQUINAS_REGISTRADORAS` (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `VENTA`
--

LOCK TABLES `VENTA` WRITE;
/*!40000 ALTER TABLE `VENTA` DISABLE KEYS */;
INSERT INTO `VENTA` VALUES (2,11,1,124126),(1,11,3,123123),(8,13,3,123123),(9,13,7,123123),(4,14,9,124132),(10,15,9,124127),(5,16,2,124133),(6,17,1,124127),(11,17,5,124125),(7,18,4,124125),(3,21,7,124130);
/*!40000 ALTER TABLE `VENTA` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-26 15:34:04
