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
-- Table structure for table `booktickets_commentbusarrangementdetail`
--

DROP TABLE IF EXISTS `booktickets_commentbusarrangementdetail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `booktickets_commentbusarrangementdetail` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `created_date` datetime(6) NOT NULL,
  `update_date` datetime(6) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `busarrangement_detail_id` bigint NOT NULL,
  `customer_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `BookTickets_commentb_busarrangement_detai_14fec143_fk_BookTicke` (`busarrangement_detail_id`),
  KEY `BookTickets_commentb_customer_id_9f2c5417_fk_BookTicke` (`customer_id`),
  CONSTRAINT `BookTickets_commentb_busarrangement_detai_14fec143_fk_BookTicke` FOREIGN KEY (`busarrangement_detail_id`) REFERENCES `booktickets_busarrangement` (`id`),
  CONSTRAINT `BookTickets_commentb_customer_id_9f2c5417_fk_BookTicke` FOREIGN KEY (`customer_id`) REFERENCES `booktickets_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booktickets_commentbusarrangementdetail`
--

LOCK TABLES `booktickets_commentbusarrangementdetail` WRITE;
/*!40000 ALTER TABLE `booktickets_commentbusarrangementdetail` DISABLE KEYS */;
INSERT INTO `booktickets_commentbusarrangementdetail` VALUES (5,'Tạm','2021-12-22 04:57:14.590321','2021-12-22 04:57:14.590321',1,1,NULL),(6,'Vá non','2021-12-29 17:41:56.838777','2021-12-29 17:41:56.838777',0,1,NULL),(7,'Vá non','2021-12-29 17:44:19.103915','2021-12-29 17:44:19.103915',0,1,NULL),(8,'Vá non','2021-12-29 17:49:16.009111','2021-12-29 17:49:16.009111',0,1,NULL),(9,'abc','2021-12-29 18:07:14.924157','2021-12-29 18:07:14.924157',1,1,NULL),(10,'abc','2021-12-29 18:07:19.127724','2021-12-29 18:07:19.127724',1,1,NULL),(11,'vá tệ','2021-12-29 18:10:21.199843','2021-12-29 18:10:21.199843',1,1,NULL),(12,'vá tệ gà','2021-12-29 18:10:26.310136','2021-12-29 18:10:26.310136',1,1,NULL),(13,'123','2021-12-29 18:11:43.020977','2021-12-29 18:11:43.020977',1,1,NULL),(14,'Vippp','2021-12-29 18:12:28.450065','2021-12-29 18:12:28.450065',1,1,NULL);
/*!40000 ALTER TABLE `booktickets_commentbusarrangementdetail` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-30 22:56:50
