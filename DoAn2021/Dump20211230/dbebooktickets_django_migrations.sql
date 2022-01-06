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
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2021-09-04 17:18:06.369031'),(2,'contenttypes','0002_remove_content_type_name','2021-09-04 17:18:06.511572'),(3,'auth','0001_initial','2021-09-04 17:18:06.895179'),(4,'auth','0002_alter_permission_name_max_length','2021-09-04 17:18:07.023742'),(5,'auth','0003_alter_user_email_max_length','2021-09-04 17:18:07.034606'),(6,'auth','0004_alter_user_username_opts','2021-09-04 17:18:07.043792'),(7,'auth','0005_alter_user_last_login_null','2021-09-04 17:18:07.054761'),(8,'auth','0006_require_contenttypes_0002','2021-09-04 17:18:07.063789'),(9,'auth','0007_alter_validators_add_error_messages','2021-09-04 17:18:07.075034'),(10,'auth','0008_alter_user_username_max_length','2021-09-04 17:18:07.088147'),(11,'auth','0009_alter_user_last_name_max_length','2021-09-04 17:18:07.096563'),(12,'auth','0010_alter_group_name_max_length','2021-09-04 17:18:07.118440'),(13,'auth','0011_update_proxy_permissions','2021-09-04 17:18:07.127441'),(14,'auth','0012_alter_user_first_name_max_length','2021-09-04 17:18:07.136469'),(15,'BookTickets','0001_initial','2021-09-04 17:18:08.516108'),(16,'admin','0001_initial','2021-09-04 17:18:08.966335'),(17,'admin','0002_logentry_remove_auto_add','2021-09-04 17:18:08.984364'),(18,'admin','0003_logentry_add_action_flag_choices','2021-09-04 17:18:09.003278'),(19,'sessions','0001_initial','2021-09-04 17:18:09.084455'),(20,'BookTickets','0002_busarrangement_active','2021-09-19 11:25:52.076379'),(21,'oauth2_provider','0001_initial','2021-09-19 15:31:49.102015'),(22,'oauth2_provider','0002_auto_20190406_1805','2021-09-19 15:31:49.209931'),(23,'oauth2_provider','0003_auto_20201211_1314','2021-09-19 15:31:49.305106'),(24,'oauth2_provider','0004_auto_20200902_2022','2021-09-19 15:31:50.055776'),(25,'BookTickets','0003_auto_20211028_1917','2021-10-28 12:17:28.754341'),(26,'BookTickets','0004_auto_20211028_1923','2021-10-28 12:23:46.559247'),(27,'BookTickets','0005_busesline_active','2021-10-28 12:50:15.463848'),(28,'BookTickets','0006_auto_20211030_1712','2021-10-30 10:12:41.143296'),(29,'BookTickets','0007_auto_20211108_1707','2021-11-08 10:07:38.831188'),(30,'BookTickets','0008_report','2021-11-10 11:29:26.195639'),(31,'BookTickets','0009_commentbusarrangementdetail','2021-12-18 14:56:00.724528');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
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
