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
-- Table structure for table `booktickets_report`
--

DROP TABLE IF EXISTS `booktickets_report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `booktickets_report` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `reason` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `image` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `reported_date` datetime(6) NOT NULL,
  `updated_date` datetime(6) NOT NULL,
  `creator_id` bigint DEFAULT NULL,
  `user_is_reported_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `BookTickets_report_creator_id_user_is_reported_id_eec68cb0_uniq` (`creator_id`,`user_is_reported_id`),
  KEY `BookTickets_report_user_is_reported_id_9a7a0583_fk_BookTicke` (`user_is_reported_id`),
  CONSTRAINT `BookTickets_report_creator_id_f207e2df_fk_BookTickets_user_id` FOREIGN KEY (`creator_id`) REFERENCES `booktickets_user` (`id`),
  CONSTRAINT `BookTickets_report_user_is_reported_id_9a7a0583_fk_BookTicke` FOREIGN KEY (`user_is_reported_id`) REFERENCES `booktickets_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booktickets_report`
--

LOCK TABLES `booktickets_report` WRITE;
/*!40000 ALTER TABLE `booktickets_report` DISABLE KEYS */;
/*!40000 ALTER TABLE `booktickets_report` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-30 22:56:44
