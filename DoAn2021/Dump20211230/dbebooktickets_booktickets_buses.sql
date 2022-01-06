-- MySQL dump 10.13  Distrib 8.0.25, for Win64 (x86_64)
--
-- Host: localhost    Database: dbebooktickets
-- ------------------------------------------------------
-- Server version	8.0.25

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
-- Table structure for table `booktickets_buses`
--

DROP TABLE IF EXISTS `booktickets_buses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `booktickets_buses` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `license_plates` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `description` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `created_date` datetime(6) NOT NULL,
  `updated_date` datetime(6) NOT NULL,
  `active` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `license_plates` (`license_plates`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booktickets_buses`
--

LOCK TABLES `booktickets_buses` WRITE;
/*!40000 ALTER TABLE `booktickets_buses` DISABLE KEYS */;
INSERT INTO `booktickets_buses` VALUES (1,'52B - 19578','Giường nằm','2021-09-04 17:25:56.272441','2021-09-04 17:25:56.272441',1),(2,'52B - 53475','Phòng nằm','2021-09-04 17:26:29.298171','2021-09-04 17:26:29.298171',1),(3,'52B - 56332','Giường nằm','2021-09-04 17:26:49.031492','2021-09-04 17:26:49.031492',1),(4,'52B - 83752','Giường nằm','2021-09-04 17:27:08.033853','2021-09-04 17:27:08.033853',1),(5,'52G - 83473','Giường nằm','2021-09-04 17:27:31.441850','2021-09-04 17:27:31.441850',1),(7,'52G - 27422','Giường nằm cao cấp','2021-09-04 17:29:20.674288','2021-09-04 17:29:20.674288',1),(8,'52G - 94830','Giường nằm cao cấp','2021-09-04 17:29:45.881195','2021-09-04 17:29:45.881195',1),(9,'52G - 48352','Phòng nằm','2021-09-04 17:30:19.914282','2021-09-04 17:30:19.914282',1),(10,'52G - 65372','Giường nằm cao cấp','2021-09-04 17:30:39.713552','2021-09-04 17:30:39.713552',1),(11,'52G - 23062','Giường nằm','2021-09-19 10:31:50.550575','2021-09-19 10:33:14.164711',1);
/*!40000 ALTER TABLE `booktickets_buses` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-30 22:56:47
