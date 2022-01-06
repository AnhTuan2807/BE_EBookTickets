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
-- Table structure for table `booktickets_ticket`
--

DROP TABLE IF EXISTS `booktickets_ticket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `booktickets_ticket` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `payments_method` smallint DEFAULT NULL,
  `payments_status` smallint DEFAULT NULL,
  `ticket_status` smallint DEFAULT NULL,
  `ticket_price` int DEFAULT NULL,
  `ticket_quantity` smallint DEFAULT NULL,
  `created_date` datetime(6) NOT NULL,
  `updated_date` datetime(6) NOT NULL,
  `BusArrangement_id` bigint DEFAULT NULL,
  `User_id` bigint DEFAULT NULL,
  `isPaid` tinyint(1) NOT NULL,
  `paymentMethod` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `phone` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `username` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `payments_method` (`payments_method`),
  UNIQUE KEY `payments_status` (`payments_status`),
  UNIQUE KEY `ticket_status` (`ticket_status`),
  UNIQUE KEY `ticket_price` (`ticket_price`),
  UNIQUE KEY `ticket_quantity` (`ticket_quantity`),
  UNIQUE KEY `phone` (`phone`),
  KEY `BookTickets_ticket_BusArrangement_id_4ca3e6d1_fk_BookTicke` (`BusArrangement_id`),
  KEY `BookTickets_ticket_User_id_73d36194_fk_BookTickets_user_id` (`User_id`),
  CONSTRAINT `BookTickets_ticket_BusArrangement_id_4ca3e6d1_fk_BookTicke` FOREIGN KEY (`BusArrangement_id`) REFERENCES `booktickets_busarrangement` (`id`),
  CONSTRAINT `BookTickets_ticket_User_id_73d36194_fk_BookTickets_user_id` FOREIGN KEY (`User_id`) REFERENCES `booktickets_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=180 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booktickets_ticket`
--

LOCK TABLES `booktickets_ticket` WRITE;
/*!40000 ALTER TABLE `booktickets_ticket` DISABLE KEYS */;
/*!40000 ALTER TABLE `booktickets_ticket` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-30 22:56:46
