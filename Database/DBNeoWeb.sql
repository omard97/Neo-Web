-- MySQL dump 10.13  Distrib 5.5.62, for Win64 (AMD64)
--
-- Host: localhost    Database: BDNeoWeb
-- ------------------------------------------------------
-- Server version	5.7.30-0ubuntu0.18.04.1

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
-- Table structure for table `ClienteXProducto`
--

DROP TABLE IF EXISTS `ClienteXProducto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ClienteXProducto` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ID_cliente` int(11) NOT NULL,
  `ID_producto` int(11) NOT NULL,
  `cantProducto` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ID_cliente` (`ID_cliente`),
  KEY `ID_producto` (`ID_producto`),
  CONSTRAINT `ClienteXProducto_ibfk_1` FOREIGN KEY (`ID_cliente`) REFERENCES `cliente` (`idcliente`),
  CONSTRAINT `ClienteXProducto_ibfk_2` FOREIGN KEY (`ID_producto`) REFERENCES `Producto` (`idproducto`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ClienteXProducto`
--

LOCK TABLES `ClienteXProducto` WRITE;
/*!40000 ALTER TABLE `ClienteXProducto` DISABLE KEYS */;
INSERT INTO `ClienteXProducto` VALUES (1,1,1,2),(2,1,2,3),(3,2,3,4),(4,2,2,1),(5,3,1,1),(6,3,4,4),(7,1,6,3),(8,4,7,5);
/*!40000 ALTER TABLE `ClienteXProducto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Producto`
--

DROP TABLE IF EXISTS `Producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Producto` (
  `idproducto` int(11) NOT NULL AUTO_INCREMENT,
  `NombreP` varchar(100) NOT NULL,
  `Precio` varchar(100) NOT NULL,
  PRIMARY KEY (`idproducto`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Producto`
--

LOCK TABLES `Producto` WRITE;
/*!40000 ALTER TABLE `Producto` DISABLE KEYS */;
INSERT INTO `Producto` VALUES (1,'CPU AMD 5 5300','120000'),(2,'CPU AMD 3 3100','10000'),(3,'GPU AMD Radeon RX 550X','30000'),(4,'GPU AMD Radeon RX 540X','35000'),(5,'Placa Madre Asus Prime H310m-r R2.0','140000'),(6,'Asus Placa Base Micro Atx Ddr3 1600 Lga 1150 B85 M-g','150000'),(7,'GPU NVIDIA GeForce RTX 3070','47000');
/*!40000 ALTER TABLE `Producto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cliente` (
  `idcliente` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(100) NOT NULL,
  `Apellido` varchar(100) NOT NULL,
  `Correo` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`idcliente`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,'Gonzalo','Vico','GonzaVico@hotmail.com'),(2,'Matias','Vigoni','MatiVigoni@hotmail.com'),(3,'Omar','Dandrea','omardandrea@hotmail.com'),(4,'Diego','Suarez','Suarez@gmail.com');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'BDNeoWeb'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-05 17:20:36