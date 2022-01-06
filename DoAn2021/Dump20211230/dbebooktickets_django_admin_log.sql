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
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  `object_repr` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_BookTickets_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_BookTickets_user_id` FOREIGN KEY (`user_id`) REFERENCES `booktickets_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2021-09-04 17:36:50.917713','1','admin',2,'[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"Avatar\", \"Phone\"]}}]',9,1),(2,'2021-09-04 17:37:57.836517','1','BusArrangement object (1)',1,'[{\"added\": {}}]',6,1),(3,'2021-09-04 17:39:15.778340','2','BusArrangement object (2)',1,'[{\"added\": {}}]',6,1),(4,'2021-09-04 17:40:56.692942','3','BusArrangement object (3)',1,'[{\"added\": {}}]',6,1),(5,'2021-09-07 15:42:11.608472','1','Ticket object (1)',1,'[{\"added\": {}}]',11,1),(6,'2021-09-07 16:51:49.528940','1','Ticket object (1)',2,'[{\"changed\": {\"fields\": [\"Ticket price\"]}}]',11,1),(7,'2021-09-19 15:54:44.066763','2','admin2',1,'[{\"added\": {}}]',9,1),(8,'2021-09-19 15:55:12.258914','2','admin2',2,'[{\"changed\": {\"fields\": [\"First name\", \"Last name\"]}}]',9,1),(9,'2021-09-19 16:01:19.152238','2','admin2',3,'',9,1),(10,'2021-09-19 16:06:29.236452','3','admin2',1,'[{\"added\": {}}]',9,1),(11,'2021-09-21 15:14:44.170936','5','admin4',2,'[{\"changed\": {\"fields\": [\"Last name\", \"Active\", \"Phone\"]}}]',9,1),(12,'2021-09-21 15:25:33.781827','1','BusArrangement object (1)',2,'[{\"changed\": {\"fields\": [\"Active\"]}}]',6,1),(13,'2021-09-21 15:26:01.451233','1','BusArrangement object (1)',2,'[{\"changed\": {\"fields\": [\"Active\"]}}]',6,1),(14,'2021-09-21 18:11:46.012969','1','User_Role object (1)',1,'[{\"added\": {}}]',10,1),(15,'2021-10-05 14:21:36.227128','2','User_Role object (2)',1,'[{\"added\": {}}]',10,1),(16,'2021-10-05 14:21:43.369039','3','User_Role object (3)',1,'[{\"added\": {}}]',10,1),(17,'2021-10-05 14:21:50.418352','4','User_Role object (4)',1,'[{\"added\": {}}]',10,1),(18,'2021-10-06 07:11:09.543469','4','User_Role object (4)',3,'',10,1),(19,'2021-10-06 07:11:23.688960','5','admin4',3,'',9,1),(20,'2021-10-28 11:51:57.735516','6','admin4',2,'[{\"changed\": {\"fields\": [\"Last name\", \"Phone\"]}}]',9,1),(21,'2021-10-28 11:56:52.835923','1','admin',2,'[{\"changed\": {\"fields\": [\"Avatar\"]}}]',9,1),(22,'2021-10-28 12:20:49.191733','1','BusArrangement object (1)',2,'[{\"changed\": {\"fields\": [\"Name\", \"Description\", \"Ticket total\", \"Ticket price\"]}}]',6,1),(23,'2021-10-28 12:21:13.032775','1','BusArrangement object (1)',2,'[{\"changed\": {\"fields\": [\"Name\"]}}]',6,1),(24,'2021-10-28 12:22:04.793158','2','BusArrangement object (2)',2,'[{\"changed\": {\"fields\": [\"Name\", \"Description\", \"Ticket total\", \"Ticket price\"]}}]',6,1),(25,'2021-10-28 12:22:43.971448','3','BusArrangement object (3)',2,'[{\"changed\": {\"fields\": [\"Name\", \"Description\", \"Ticket total\", \"Ticket price\"]}}]',6,1),(26,'2021-10-29 19:19:52.271819','1','Tuyến Xe: Bình Định - Sài Gòn',2,'[{\"changed\": {\"name\": \"bus arrangement\", \"object\": \"BusArrangement object (1)\", \"fields\": [\"Departure time\", \"Next hour\", \"Departure day\"]}}]',8,1),(27,'2021-10-29 19:22:02.765518','4','Tuyến Xe: Bình Định - Gia Lai',1,'[{\"added\": {}}]',8,1),(28,'2021-10-29 19:22:28.012373','4','BusArrangement object (4)',1,'[{\"added\": {}}]',6,1),(29,'2021-10-29 19:22:48.989557','4','BusArrangement object (4)',2,'[{\"changed\": {\"fields\": [\"Name\", \"BusesLine\"]}}]',6,1),(30,'2021-10-29 19:23:56.287819','5','Tuyến Xe: Bình Định - Bình Thuận',1,'[{\"added\": {}}]',8,1),(31,'2021-10-29 19:24:11.410405','6','Tuyến Xe: Bình Định - Hà Nội',1,'[{\"added\": {}}]',8,1),(32,'2021-10-29 19:25:46.463215','5','BusArrangement object (5)',1,'[{\"added\": {}}]',6,1),(33,'2021-10-29 19:26:44.051001','6','BusArrangement object (6)',1,'[{\"added\": {}}]',6,1),(34,'2021-11-09 09:43:35.817908','3','Vịnh Hạ Long',2,'[{\"changed\": {\"fields\": [\"Name\", \"Image\", \"Description\"]}}]',18,1),(35,'2021-11-09 09:45:13.814526','3','Vịnh Hạ Long',2,'[]',18,1),(36,'2021-11-09 09:45:33.990607','2','German Shepherds',2,'[]',18,1),(37,'2021-11-09 09:48:51.162638','2','Cầu Vàng Đà Nẵng',2,'[{\"changed\": {\"fields\": [\"Name\", \"Image\", \"Description\"]}}]',18,1),(38,'2021-11-09 09:50:26.510856','1','the breathing process',2,'[{\"changed\": {\"fields\": [\"User\", \"Image\", \"Description\"]}}]',18,1),(39,'2021-11-09 09:50:37.478660','1','Đảo Phú Quốc',2,'[{\"changed\": {\"fields\": [\"Name\"]}}]',18,1),(40,'2021-11-09 09:50:43.514037','2','Cầu Vàng Đà Nẵng',2,'[{\"changed\": {\"fields\": [\"Description\"]}}]',18,1),(41,'2021-11-09 09:50:50.813977','3','Vịnh Hạ Long',2,'[]',18,1),(42,'2021-11-10 15:03:05.824919','1','BusArrangement object (1)',2,'[]',6,1),(43,'2021-11-10 15:03:06.677089','1','BusArrangement object (1)',2,'[]',6,1),(44,'2021-11-10 15:03:06.798784','1','BusArrangement object (1)',2,'[]',6,1),(45,'2021-11-10 15:03:07.021171','1','BusArrangement object (1)',2,'[]',6,1),(46,'2021-11-10 15:03:07.245603','1','BusArrangement object (1)',2,'[]',6,1),(47,'2021-11-10 15:03:07.453015','1','BusArrangement object (1)',2,'[]',6,1),(48,'2021-12-21 17:09:33.209198','1','CommentBusArrangementDetail object (1)',2,'[{\"changed\": {\"fields\": [\"Customer\"]}}]',23,1),(49,'2021-12-21 17:09:45.831982','2','CommentBusArrangementDetail object (2)',1,'[{\"added\": {}}]',23,1),(50,'2021-12-21 17:25:30.963857','4','CommentBusArrangementDetail object (4)',3,'',23,1),(51,'2021-12-21 17:25:31.002755','3','CommentBusArrangementDetail object (3)',3,'',23,1),(52,'2021-12-21 17:25:31.038645','2','CommentBusArrangementDetail object (2)',3,'',23,1),(53,'2021-12-21 17:25:31.062365','1','CommentBusArrangementDetail object (1)',3,'',23,1),(54,'2021-12-28 14:52:17.559416','3','Vịnh Hạ Long',2,'[{\"changed\": {\"fields\": [\"Rating\"]}}]',18,1),(55,'2021-12-28 14:52:26.862504','2','Cầu Vàng Đà Nẵng',2,'[{\"changed\": {\"fields\": [\"Rating\"]}}]',18,1),(56,'2021-12-28 14:52:37.592152','1','Đảo Phú Quốc',2,'[{\"changed\": {\"fields\": [\"Rating\"]}}]',18,1),(57,'2021-12-28 16:04:40.705889','4','BusArrangement object (4)',2,'[{\"changed\": {\"fields\": [\"Active\"]}}]',6,1),(58,'2021-12-28 16:05:13.950479','4','BusArrangement object (4)',2,'[{\"changed\": {\"fields\": [\"Active\"]}}]',6,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-30 22:56:51
