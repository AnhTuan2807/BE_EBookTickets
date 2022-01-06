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
-- Table structure for table `booktickets_busarrangement`
--

DROP TABLE IF EXISTS `booktickets_busarrangement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `booktickets_busarrangement` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `departure` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `departure_time` datetime(6) DEFAULT NULL,
  `destination` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `next_hour` datetime(6) DEFAULT NULL,
  `departure_day` datetime(6) DEFAULT NULL,
  `created_date` datetime(6) NOT NULL,
  `updated_date` datetime(6) NOT NULL,
  `Buses_id` bigint DEFAULT NULL,
  `BusesLine_id` bigint DEFAULT NULL,
  `User_id` bigint DEFAULT NULL,
  `active` tinyint(1) NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_520_ci,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `ticket_price` decimal(6,2) DEFAULT NULL,
  `ticket_total` smallint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `BookTickets_busarran_Buses_id_5b408df9_fk_BookTicke` (`Buses_id`),
  KEY `BookTickets_busarran_BusesLine_id_477303cb_fk_BookTicke` (`BusesLine_id`),
  KEY `BookTickets_busarran_User_id_db9e426b_fk_BookTicke` (`User_id`),
  CONSTRAINT `BookTickets_busarran_Buses_id_5b408df9_fk_BookTicke` FOREIGN KEY (`Buses_id`) REFERENCES `booktickets_buses` (`id`),
  CONSTRAINT `BookTickets_busarran_BusesLine_id_477303cb_fk_BookTicke` FOREIGN KEY (`BusesLine_id`) REFERENCES `booktickets_busesline` (`id`),
  CONSTRAINT `BookTickets_busarran_User_id_db9e426b_fk_BookTicke` FOREIGN KEY (`User_id`) REFERENCES `booktickets_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booktickets_busarrangement`
--

LOCK TABLES `booktickets_busarrangement` WRITE;
/*!40000 ALTER TABLE `booktickets_busarrangement` DISABLE KEYS */;
INSERT INTO `booktickets_busarrangement` VALUES (1,'Bình Định','2021-10-28 14:30:00.000000','Sài Gòn','2021-10-29 04:45:00.000000','2021-10-28 12:00:00.000000','2021-09-04 17:37:57.834467','2021-11-10 15:03:06.686065',9,1,1,1,'Vip','Bình Định - Sài Gòn',400.00,50),(2,'Bình Định','2021-09-01 14:30:00.000000','Phú Yên','2021-09-01 19:00:00.000000','2021-08-30 12:00:00.000000','2021-09-04 17:39:15.777342','2021-10-28 12:22:04.773138',2,2,1,1,'Thường','Bình Định - Phú Yên',350.00,49),(3,'Phú Yên','2021-09-01 19:00:00.000000','Sài Gòn','2021-09-02 06:00:00.000000','2021-08-30 12:00:00.000000','2021-09-04 17:40:56.690974','2021-10-28 12:22:43.950499',2,3,1,1,'Thường','Phú Yên - Sài Gòn',370.00,40),(4,'Bình Định','2021-10-29 14:30:00.000000','Gia Lai','2021-10-29 20:30:00.000000','2021-10-28 19:21:05.000000','2021-10-29 19:22:27.990397','2021-12-28 16:05:13.904260',2,4,1,1,'','Bình Định - Gia Lai',400.00,1),(5,'Bình Định','2021-10-29 14:30:00.000000','Bình Thuận','2021-10-31 14:30:00.000000','2021-10-29 12:00:00.000000','2021-10-29 19:25:46.438036','2021-10-29 19:25:46.438036',9,5,2,1,'','Bình Định - Bình Thuận',330.00,1),(6,'Bình Định','2021-10-29 14:30:00.000000','Hà Nội','2021-10-31 14:30:00.000000','2021-10-29 12:00:00.000000','2021-10-29 19:26:44.025046','2021-10-29 19:26:44.025046',11,6,2,1,'','Bình Định - Hà Nội',800.00,1);
/*!40000 ALTER TABLE `booktickets_busarrangement` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-30 22:56:48
