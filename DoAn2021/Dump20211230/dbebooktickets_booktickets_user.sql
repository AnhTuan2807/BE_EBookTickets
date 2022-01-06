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
-- Table structure for table `booktickets_user`
--

DROP TABLE IF EXISTS `booktickets_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `booktickets_user` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `first_name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `last_name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `username` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `avatar` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `phone` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `created_date` datetime(6) NOT NULL,
  `updated_date` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `phone` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booktickets_user`
--

LOCK TABLES `booktickets_user` WRITE;
/*!40000 ALTER TABLE `booktickets_user` DISABLE KEYS */;
INSERT INTO `booktickets_user` VALUES (1,'2021-12-18 15:53:54.473439',1,'Tuấn Anh','Nguyễn',1,1,'2021-09-04 17:35:40.000000','admin','pbkdf2_sha256$260000$Ea2uFFFRO0mdiRpMJskkje$FKvHLZESrpiFeg488ZRVRzKdmNvvXoj1HLH9Yc6ImBY=','Image-User/2021/10/Vjp.jpg','nguyenleanhtuan2708@gmail.com','0356818998','2021-09-04 17:35:40.727333','2021-10-28 11:56:52.774057'),(2,'2021-09-19 16:05:57.000000',0,'','',0,1,'2021-09-19 16:05:55.000000','admin2','pbkdf2_sha256$260000$WxPaOwsbWBSZkzPenPbskv$HGBrPrkDAWkbaXJjtA0rs/P5oMmy6fx5dIFfOft61hw=','Image-User/2021/09/Vjp_Ch7Pcz3.jpg','1851050169tuan@ou.edu.vn','01656818998','2021-09-19 16:06:29.228815','2021-09-19 16:09:50.503903'),(4,NULL,0,'Tuan','Nguyen',0,1,'2021-09-19 17:01:48.736605','admin3','123456','Image-User/2021/09/Vjp_XGwM9tE.jpg','nguyentuananh280700@gmail.com',NULL,'2021-09-19 17:01:49.084095','2021-09-19 17:01:49.084095'),(6,NULL,0,'Thuy Dung','Tran',0,1,'2021-10-06 07:12:29.000000','admin4','pbkdf2_sha256$260000$v0Y8XwGV6hSXiaPfmXyGdy$ZiHazLBUXh9IGe9/pxDaj3TRHk/mLnmfY1uLGWf+V8U=','Image-User/2021/10/Dung.jpg','1851050016dung@ou.edu.vn','01234567890','2021-10-06 07:12:30.253913','2021-10-28 11:51:57.675676'),(7,NULL,0,'Hoang','Kiet',0,1,'2021-10-28 11:40:13.843640','hoangkiet','pbkdf2_sha256$260000$PSNCeZkklBjo77Uk07fQrq$AZeSGnbHeyabdZJyax+gLlrL6yGtCvQaUxZlsvUnlXg=','Image-User/2021/10/HoangKiet.jpg','1851050073kiet@ou.edu.vn',NULL,'2021-10-28 11:40:13.992443','2021-10-28 11:40:13.992443');
/*!40000 ALTER TABLE `booktickets_user` ENABLE KEYS */;
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
