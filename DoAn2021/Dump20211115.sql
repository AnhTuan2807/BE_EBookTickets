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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add content type',4,'add_contenttype'),(14,'Can change content type',4,'change_contenttype'),(15,'Can delete content type',4,'delete_contenttype'),(16,'Can view content type',4,'view_contenttype'),(17,'Can add session',5,'add_session'),(18,'Can change session',5,'change_session'),(19,'Can delete session',5,'delete_session'),(20,'Can view session',5,'view_session'),(21,'Can add bus arrangement',6,'add_busarrangement'),(22,'Can change bus arrangement',6,'change_busarrangement'),(23,'Can delete bus arrangement',6,'delete_busarrangement'),(24,'Can view bus arrangement',6,'view_busarrangement'),(25,'Can add buses',7,'add_buses'),(26,'Can change buses',7,'change_buses'),(27,'Can delete buses',7,'delete_buses'),(28,'Can view buses',7,'view_buses'),(29,'Can add buses line',8,'add_busesline'),(30,'Can change buses line',8,'change_busesline'),(31,'Can delete buses line',8,'delete_busesline'),(32,'Can view buses line',8,'view_busesline'),(33,'Can add user',9,'add_user'),(34,'Can change user',9,'change_user'),(35,'Can delete user',9,'delete_user'),(36,'Can view user',9,'view_user'),(37,'Can add user_ role',10,'add_user_role'),(38,'Can change user_ role',10,'change_user_role'),(39,'Can delete user_ role',10,'delete_user_role'),(40,'Can view user_ role',10,'view_user_role'),(41,'Can add ticket',11,'add_ticket'),(42,'Can change ticket',11,'change_ticket'),(43,'Can delete ticket',11,'delete_ticket'),(44,'Can view ticket',11,'view_ticket'),(45,'Can add application',12,'add_application'),(46,'Can change application',12,'change_application'),(47,'Can delete application',12,'delete_application'),(48,'Can view application',12,'view_application'),(49,'Can add access token',13,'add_accesstoken'),(50,'Can change access token',13,'change_accesstoken'),(51,'Can delete access token',13,'delete_accesstoken'),(52,'Can view access token',13,'view_accesstoken'),(53,'Can add grant',14,'add_grant'),(54,'Can change grant',14,'change_grant'),(55,'Can delete grant',14,'delete_grant'),(56,'Can view grant',14,'view_grant'),(57,'Can add refresh token',15,'add_refreshtoken'),(58,'Can change refresh token',15,'change_refreshtoken'),(59,'Can delete refresh token',15,'delete_refreshtoken'),(60,'Can view refresh token',15,'view_refreshtoken'),(61,'Can add id token',16,'add_idtoken'),(62,'Can change id token',16,'change_idtoken'),(63,'Can delete id token',16,'delete_idtoken'),(64,'Can view id token',16,'view_idtoken'),(65,'Can add order',17,'add_order'),(66,'Can change order',17,'change_order'),(67,'Can delete order',17,'delete_order'),(68,'Can view order',17,'view_order'),(69,'Can add product',18,'add_product'),(70,'Can change product',18,'change_product'),(71,'Can delete product',18,'delete_product'),(72,'Can view product',18,'view_product'),(73,'Can add shipping address',19,'add_shippingaddress'),(74,'Can change shipping address',19,'change_shippingaddress'),(75,'Can delete shipping address',19,'delete_shippingaddress'),(76,'Can view shipping address',19,'view_shippingaddress'),(77,'Can add order item',20,'add_orderitem'),(78,'Can change order item',20,'change_orderitem'),(79,'Can delete order item',20,'delete_orderitem'),(80,'Can view order item',20,'view_orderitem'),(81,'Can add review',21,'add_review'),(82,'Can change review',21,'change_review'),(83,'Can delete review',21,'delete_review'),(84,'Can view review',21,'view_review'),(85,'Can add address',22,'add_address'),(86,'Can change address',22,'change_address'),(87,'Can delete address',22,'delete_address'),(88,'Can view address',22,'view_address'),(89,'Can add address',21,'add_address'),(90,'Can change address',21,'change_address'),(91,'Can delete address',21,'delete_address'),(92,'Can view address',21,'view_address'),(93,'Can add report',22,'add_report'),(94,'Can change report',22,'change_report'),(95,'Can delete report',22,'delete_report'),(96,'Can view report',22,'view_report'),(97,'Can add review',19,'add_review'),(98,'Can change review',19,'change_review'),(99,'Can delete review',19,'delete_review'),(100,'Can view review',19,'view_review');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `booktickets_address`
--

DROP TABLE IF EXISTS `booktickets_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `booktickets_address` (
  `address` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `city` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `state` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `_id` int NOT NULL AUTO_INCREMENT,
  `order_id` int DEFAULT NULL,
  PRIMARY KEY (`_id`),
  KEY `BookTickets_address_order_id_0da5533e_fk_BookTickets_order__id` (`order_id`),
  CONSTRAINT `BookTickets_address_order_id_0da5533e_fk_BookTickets_order__id` FOREIGN KEY (`order_id`) REFERENCES `booktickets_order` (`_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booktickets_address`
--

LOCK TABLES `booktickets_address` WRITE;
/*!40000 ALTER TABLE `booktickets_address` DISABLE KEYS */;
/*!40000 ALTER TABLE `booktickets_address` ENABLE KEYS */;
UNLOCK TABLES;

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
INSERT INTO `booktickets_busarrangement` VALUES (1,'Bình Định','2021-10-28 14:30:00.000000','Sài Gòn','2021-10-29 04:45:00.000000','2021-10-28 12:00:00.000000','2021-09-04 17:37:57.834467','2021-11-10 15:03:06.686065',9,1,1,1,'Vip','Bình Định - Sài Gòn',400.00,50),(2,'Bình Định','2021-09-01 14:30:00.000000','Phú Yên','2021-09-01 19:00:00.000000','2021-08-30 12:00:00.000000','2021-09-04 17:39:15.777342','2021-10-28 12:22:04.773138',2,2,1,1,'Thường','Bình Định - Phú Yên',350.00,49),(3,'Phú Yên','2021-09-01 19:00:00.000000','Sài Gòn','2021-09-02 06:00:00.000000','2021-08-30 12:00:00.000000','2021-09-04 17:40:56.690974','2021-10-28 12:22:43.950499',2,3,1,1,'Thường','Phú Yên - Sài Gòn',370.00,40),(4,'Bình Định','2021-10-29 14:30:00.000000','Gia Lai','2021-10-29 20:30:00.000000','2021-10-28 19:21:05.000000','2021-10-29 19:22:27.990397','2021-10-29 19:22:48.965035',2,4,1,1,'','Bình Định - Gia Lai',400.00,1),(5,'Bình Định','2021-10-29 14:30:00.000000','Bình Thuận','2021-10-31 14:30:00.000000','2021-10-29 12:00:00.000000','2021-10-29 19:25:46.438036','2021-10-29 19:25:46.438036',9,5,2,1,'','Bình Định - Bình Thuận',330.00,1),(6,'Bình Định','2021-10-29 14:30:00.000000','Hà Nội','2021-10-31 14:30:00.000000','2021-10-29 12:00:00.000000','2021-10-29 19:26:44.025046','2021-10-29 19:26:44.025046',11,6,2,1,'','Bình Định - Hà Nội',800.00,1);
/*!40000 ALTER TABLE `booktickets_busarrangement` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `booktickets_busesline`
--

DROP TABLE IF EXISTS `booktickets_busesline`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `booktickets_busesline` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `departure` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `destination` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `created_date` datetime(6) NOT NULL,
  `updated_date` datetime(6) NOT NULL,
  `active` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booktickets_busesline`
--

LOCK TABLES `booktickets_busesline` WRITE;
/*!40000 ALTER TABLE `booktickets_busesline` DISABLE KEYS */;
INSERT INTO `booktickets_busesline` VALUES (1,'Bình Định','Sài Gòn','2021-09-04 17:34:02.903726','2021-10-29 19:19:52.205525',1),(2,'Bình Định','Phú Yên','2021-09-04 17:34:12.401186','2021-09-04 17:34:12.401186',1),(3,'Phú Yên','Sài Gòn','2021-09-04 17:34:31.616494','2021-09-04 17:34:31.616494',1),(4,'Bình Định','Gia Lai','2021-10-29 19:22:02.741833','2021-10-29 19:22:02.741833',1),(5,'Bình Định','Bình Thuận','2021-10-29 19:23:56.268121','2021-10-29 19:23:56.268121',1),(6,'Bình Định','Hà Nội','2021-10-29 19:24:11.388526','2021-10-29 19:24:11.388526',1);
/*!40000 ALTER TABLE `booktickets_busesline` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `booktickets_order`
--

DROP TABLE IF EXISTS `booktickets_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `booktickets_order` (
  `paymentMethod` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `date_ordered` datetime(6) NOT NULL,
  `totalPrice` decimal(7,2) DEFAULT NULL,
  `isPaid` tinyint(1) NOT NULL,
  `paidAt` datetime(6) DEFAULT NULL,
  `createAt` datetime(6) NOT NULL,
  `complete` tinyint(1) NOT NULL,
  `_id` int NOT NULL AUTO_INCREMENT,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`_id`),
  KEY `BookTickets_order_user_id_ec9ddb32_fk_BookTickets_user_id` (`user_id`),
  CONSTRAINT `BookTickets_order_user_id_ec9ddb32_fk_BookTickets_user_id` FOREIGN KEY (`user_id`) REFERENCES `booktickets_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booktickets_order`
--

LOCK TABLES `booktickets_order` WRITE;
/*!40000 ALTER TABLE `booktickets_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `booktickets_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `booktickets_orderitem`
--

DROP TABLE IF EXISTS `booktickets_orderitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `booktickets_orderitem` (
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `price` decimal(7,2) DEFAULT NULL,
  `_id` int NOT NULL AUTO_INCREMENT,
  `order_id` int DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  PRIMARY KEY (`_id`),
  KEY `BookTickets_orderitem_order_id_2c86fd17_fk_BookTickets_order__id` (`order_id`),
  KEY `BookTickets_orderite_product_id_dd104ee6_fk_BookTicke` (`product_id`),
  CONSTRAINT `BookTickets_orderite_product_id_dd104ee6_fk_BookTicke` FOREIGN KEY (`product_id`) REFERENCES `booktickets_product` (`_id`),
  CONSTRAINT `BookTickets_orderitem_order_id_2c86fd17_fk_BookTickets_order__id` FOREIGN KEY (`order_id`) REFERENCES `booktickets_order` (`_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booktickets_orderitem`
--

LOCK TABLES `booktickets_orderitem` WRITE;
/*!40000 ALTER TABLE `booktickets_orderitem` DISABLE KEYS */;
/*!40000 ALTER TABLE `booktickets_orderitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `booktickets_product`
--

DROP TABLE IF EXISTS `booktickets_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `booktickets_product` (
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `price` decimal(7,2) NOT NULL,
  `digital` tinyint(1) DEFAULT NULL,
  `image` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  `datetime` datetime(6) DEFAULT NULL,
  `created_date` datetime(6) NOT NULL,
  `updated_date` datetime(6) NOT NULL,
  `action` tinyint(1) DEFAULT NULL,
  `_id` int NOT NULL AUTO_INCREMENT,
  `rating` decimal(7,2) DEFAULT NULL,
  `numReviews` int DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`_id`),
  KEY `BookTickets_product_user_id_f50b6c22_fk_BookTickets_user_id` (`user_id`),
  CONSTRAINT `BookTickets_product_user_id_f50b6c22_fk_BookTickets_user_id` FOREIGN KEY (`user_id`) REFERENCES `booktickets_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booktickets_product`
--

LOCK TABLES `booktickets_product` WRITE;
/*!40000 ALTER TABLE `booktickets_product` DISABLE KEYS */;
INSERT INTO `booktickets_product` VALUES ('Đảo Phú Quốc',300.00,1,'ban2.jpg','Phú Quốc, thiên đường nhiệt đới nằm trong Vịnh Thái Lan, là hòn đảo lớn nhất của Việt Nam nằm ở phía Tây Nam, cũng là hòn đảo lớn nhất trong quần thể 22 đảo nhỏ to khác nhau tại đây. Phú Quốc cùng với các hòn đảo khác tạo thành huyện đảo Phú Quốc thuộc tỉnh Kiên Giang.\r\n\r\nPhú Quốc có diện tích 589,23 km², trải dài từ vĩ độ 9°53′ đến 10°28′ độ vĩ bắc và kinh độ từ 103°49′ đến 104°05′ độ kinh đông, nằm cách thành phố Rạch Giá 120 km và cách thành phố Hà Tiên 45 km. Năm 2006, Khu dự trữ sinh quyển ven biển và biển đảo Kiên Giang bao gồm cả Phú Quốc được UNESCO công nhận là khu dự trữ sinh quyển thế giới.\r\n\r\nPhú Quốc, từ lâu, đã trở nên nổi tiếng với khách du lịch khắp mọi miền đất nước và quốc tế. Điều này không chỉ vì Phú Quốc là một hòn đảo xinh đẹp mà nơi đây còn chứa đựng nhiều điều bí ẩn mà không phải ai cũng có thể khám phá hết được.','2021-10-21 22:01:00.000000','2021-10-21 15:01:16.060722','2021-11-09 09:50:37.458066',1,1,7.00,1,2),('Cầu Vàng Đà Nẵng',300.00,1,'ban3.jpg','Cầu Vàng Đà Nẵng là cây cầu đặc biệt, tựa như tấm vải lụa xinh đẹp vắt ngang chừng núi Chúa, thu hút đông đảo du khách trong nước và thế giới đến khám phá trong nhiều năm qua.\r\n\r\nCầu Vàng Đà Nẵng nổi bật với lối kiến trúc sáng tạo, độc đáo, trở thành điểm check-in cực “hot” tại thành phố biển xinh đẹp Đà Nẵng. Cùng khám phá tất tần tật những thông tin thú vị, độc đáo về cây cầu nổi tiếng, nằm trong top 10 kỳ quan mới của thế giới 2021 này.','2021-10-22 22:29:00.000000','2021-10-22 15:29:26.835734','2021-11-09 09:50:43.489108',1,2,7.00,7,6),('Vịnh Hạ Long',300.00,1,'ban1.jpg','Vịnh Hạ Long được Unesco nhiều lần công nhận là Di sản thiên nhiên của Thế giới với hàng nghìn hòn đảo được làm nên bởi tạo hoá kỳ vĩ và sống động. Vịnh Hạ Long có phong cảnh tuyệt đẹp nên nơi đây là một điểm du lịch rất hấp dẫn với du khách trong nước và quốc tế.\r\n\r\nVịnh Hạ Long là một di sản độc đáo bởi địa danh này chứa đựng những dấu tích quan trọng trong quá trình hình thành và phát triển lịch sử trái đất, là cái nôi cư trú của người Việt cổ, đồng thời là tác phẩm nghệ thuật tạo hình vĩ đại của thiên nhiên với sự hiện diện của hàng nghìn đảo đá muôn hình vạn trạng, với nhiều hang động kỳ thú quần tụ thành một thế giới vừa sinh động vừa huyền bí. Bên cạnh đó, vịnh Hạ Long còn là nơi tập trung đa dạng sinh học cao với những hệ sinh thái điển hình cùng với hàng nghìn loài động thực vật vô cùng phong phú, đa dạng. Nơi đây còn gắn liền với những giá trị văn hóa – lịch sử hào hùng của dân tộc.','2021-10-22 22:29:00.000000','2021-10-22 15:29:38.658742','2021-11-09 09:50:50.791958',1,3,5.00,5,6);
/*!40000 ALTER TABLE `booktickets_product` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `booktickets_review`
--

DROP TABLE IF EXISTS `booktickets_review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `booktickets_review` (
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `rating` int DEFAULT NULL,
  `comment` longtext COLLATE utf8mb4_unicode_520_ci,
  `_id` int NOT NULL AUTO_INCREMENT,
  `product_id` int DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`_id`),
  KEY `BookTickets_review_product_id_0a02c3e2_fk_BookTicke` (`product_id`),
  KEY `BookTickets_review_user_id_c936ee61_fk_BookTickets_user_id` (`user_id`),
  CONSTRAINT `BookTickets_review_product_id_0a02c3e2_fk_BookTicke` FOREIGN KEY (`product_id`) REFERENCES `booktickets_product` (`_id`),
  CONSTRAINT `BookTickets_review_user_id_c936ee61_fk_BookTickets_user_id` FOREIGN KEY (`user_id`) REFERENCES `booktickets_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booktickets_review`
--

LOCK TABLES `booktickets_review` WRITE;
/*!40000 ALTER TABLE `booktickets_review` DISABLE KEYS */;
/*!40000 ALTER TABLE `booktickets_review` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booktickets_ticket`
--

LOCK TABLES `booktickets_ticket` WRITE;
/*!40000 ALTER TABLE `booktickets_ticket` DISABLE KEYS */;
INSERT INTO `booktickets_ticket` VALUES (1,'<p>V&eacute; vip</p>',1,1,1,3000,1,'2021-09-07 15:42:11.600497','2021-09-07 16:51:49.526116',1,1,0,NULL,NULL,NULL);
/*!40000 ALTER TABLE `booktickets_ticket` ENABLE KEYS */;
UNLOCK TABLES;

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
INSERT INTO `booktickets_user` VALUES (1,'2021-10-28 11:50:24.000000',1,'Tuấn Anh','Nguyễn',1,1,'2021-09-04 17:35:40.000000','admin','pbkdf2_sha256$260000$Ea2uFFFRO0mdiRpMJskkje$FKvHLZESrpiFeg488ZRVRzKdmNvvXoj1HLH9Yc6ImBY=','Image-User/2021/10/Vjp.jpg','nguyenleanhtuan2708@gmail.com','0356818998','2021-09-04 17:35:40.727333','2021-10-28 11:56:52.774057'),(2,'2021-09-19 16:05:57.000000',0,'','',0,1,'2021-09-19 16:05:55.000000','admin2','pbkdf2_sha256$260000$WxPaOwsbWBSZkzPenPbskv$HGBrPrkDAWkbaXJjtA0rs/P5oMmy6fx5dIFfOft61hw=','Image-User/2021/09/Vjp_Ch7Pcz3.jpg','1851050169tuan@ou.edu.vn','01656818998','2021-09-19 16:06:29.228815','2021-09-19 16:09:50.503903'),(4,NULL,0,'Tuan','Nguyen',0,1,'2021-09-19 17:01:48.736605','admin3','123456','Image-User/2021/09/Vjp_XGwM9tE.jpg','nguyentuananh280700@gmail.com',NULL,'2021-09-19 17:01:49.084095','2021-09-19 17:01:49.084095'),(6,NULL,0,'Thuy Dung','Tran',0,1,'2021-10-06 07:12:29.000000','admin4','pbkdf2_sha256$260000$v0Y8XwGV6hSXiaPfmXyGdy$ZiHazLBUXh9IGe9/pxDaj3TRHk/mLnmfY1uLGWf+V8U=','Image-User/2021/10/Dung.jpg','1851050016dung@ou.edu.vn','01234567890','2021-10-06 07:12:30.253913','2021-10-28 11:51:57.675676'),(7,NULL,0,'Hoang','Kiet',0,1,'2021-10-28 11:40:13.843640','hoangkiet','pbkdf2_sha256$260000$PSNCeZkklBjo77Uk07fQrq$AZeSGnbHeyabdZJyax+gLlrL6yGtCvQaUxZlsvUnlXg=','Image-User/2021/10/HoangKiet.jpg','1851050073kiet@ou.edu.vn',NULL,'2021-10-28 11:40:13.992443','2021-10-28 11:40:13.992443');
/*!40000 ALTER TABLE `booktickets_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `booktickets_user_groups`
--

DROP TABLE IF EXISTS `booktickets_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `booktickets_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `BookTickets_user_groups_user_id_group_id_846f0742_uniq` (`user_id`,`group_id`),
  KEY `BookTickets_user_groups_group_id_0e93e957_fk_auth_group_id` (`group_id`),
  CONSTRAINT `BookTickets_user_groups_group_id_0e93e957_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `BookTickets_user_groups_user_id_49066a79_fk_BookTickets_user_id` FOREIGN KEY (`user_id`) REFERENCES `booktickets_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booktickets_user_groups`
--

LOCK TABLES `booktickets_user_groups` WRITE;
/*!40000 ALTER TABLE `booktickets_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `booktickets_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `booktickets_user_role`
--

DROP TABLE IF EXISTS `booktickets_user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `booktickets_user_role` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `role` smallint DEFAULT NULL,
  `created_date` datetime(6) NOT NULL,
  `updated_date` datetime(6) NOT NULL,
  `User_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `BookTickets_user_role_User_id_55817800_fk_BookTickets_user_id` (`User_id`),
  CONSTRAINT `BookTickets_user_role_User_id_55817800_fk_BookTickets_user_id` FOREIGN KEY (`User_id`) REFERENCES `booktickets_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booktickets_user_role`
--

LOCK TABLES `booktickets_user_role` WRITE;
/*!40000 ALTER TABLE `booktickets_user_role` DISABLE KEYS */;
INSERT INTO `booktickets_user_role` VALUES (1,1,'2021-09-21 18:11:45.988068','2021-09-21 18:11:45.988068',1),(2,2,'2021-10-05 14:21:36.195214','2021-10-05 14:21:36.195214',2),(3,3,'2021-10-05 14:21:43.349529','2021-10-05 14:21:43.349529',4);
/*!40000 ALTER TABLE `booktickets_user_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `booktickets_user_user_permissions`
--

DROP TABLE IF EXISTS `booktickets_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `booktickets_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `BookTickets_user_user_pe_user_id_permission_id_8b36919e_uniq` (`user_id`,`permission_id`),
  KEY `BookTickets_user_use_permission_id_15e45169_fk_auth_perm` (`permission_id`),
  CONSTRAINT `BookTickets_user_use_permission_id_15e45169_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `BookTickets_user_use_user_id_717a5b50_fk_BookTicke` FOREIGN KEY (`user_id`) REFERENCES `booktickets_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booktickets_user_user_permissions`
--

LOCK TABLES `booktickets_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `booktickets_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `booktickets_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2021-09-04 17:36:50.917713','1','admin',2,'[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"Avatar\", \"Phone\"]}}]',9,1),(2,'2021-09-04 17:37:57.836517','1','BusArrangement object (1)',1,'[{\"added\": {}}]',6,1),(3,'2021-09-04 17:39:15.778340','2','BusArrangement object (2)',1,'[{\"added\": {}}]',6,1),(4,'2021-09-04 17:40:56.692942','3','BusArrangement object (3)',1,'[{\"added\": {}}]',6,1),(5,'2021-09-07 15:42:11.608472','1','Ticket object (1)',1,'[{\"added\": {}}]',11,1),(6,'2021-09-07 16:51:49.528940','1','Ticket object (1)',2,'[{\"changed\": {\"fields\": [\"Ticket price\"]}}]',11,1),(7,'2021-09-19 15:54:44.066763','2','admin2',1,'[{\"added\": {}}]',9,1),(8,'2021-09-19 15:55:12.258914','2','admin2',2,'[{\"changed\": {\"fields\": [\"First name\", \"Last name\"]}}]',9,1),(9,'2021-09-19 16:01:19.152238','2','admin2',3,'',9,1),(10,'2021-09-19 16:06:29.236452','3','admin2',1,'[{\"added\": {}}]',9,1),(11,'2021-09-21 15:14:44.170936','5','admin4',2,'[{\"changed\": {\"fields\": [\"Last name\", \"Active\", \"Phone\"]}}]',9,1),(12,'2021-09-21 15:25:33.781827','1','BusArrangement object (1)',2,'[{\"changed\": {\"fields\": [\"Active\"]}}]',6,1),(13,'2021-09-21 15:26:01.451233','1','BusArrangement object (1)',2,'[{\"changed\": {\"fields\": [\"Active\"]}}]',6,1),(14,'2021-09-21 18:11:46.012969','1','User_Role object (1)',1,'[{\"added\": {}}]',10,1),(15,'2021-10-05 14:21:36.227128','2','User_Role object (2)',1,'[{\"added\": {}}]',10,1),(16,'2021-10-05 14:21:43.369039','3','User_Role object (3)',1,'[{\"added\": {}}]',10,1),(17,'2021-10-05 14:21:50.418352','4','User_Role object (4)',1,'[{\"added\": {}}]',10,1),(18,'2021-10-06 07:11:09.543469','4','User_Role object (4)',3,'',10,1),(19,'2021-10-06 07:11:23.688960','5','admin4',3,'',9,1),(20,'2021-10-28 11:51:57.735516','6','admin4',2,'[{\"changed\": {\"fields\": [\"Last name\", \"Phone\"]}}]',9,1),(21,'2021-10-28 11:56:52.835923','1','admin',2,'[{\"changed\": {\"fields\": [\"Avatar\"]}}]',9,1),(22,'2021-10-28 12:20:49.191733','1','BusArrangement object (1)',2,'[{\"changed\": {\"fields\": [\"Name\", \"Description\", \"Ticket total\", \"Ticket price\"]}}]',6,1),(23,'2021-10-28 12:21:13.032775','1','BusArrangement object (1)',2,'[{\"changed\": {\"fields\": [\"Name\"]}}]',6,1),(24,'2021-10-28 12:22:04.793158','2','BusArrangement object (2)',2,'[{\"changed\": {\"fields\": [\"Name\", \"Description\", \"Ticket total\", \"Ticket price\"]}}]',6,1),(25,'2021-10-28 12:22:43.971448','3','BusArrangement object (3)',2,'[{\"changed\": {\"fields\": [\"Name\", \"Description\", \"Ticket total\", \"Ticket price\"]}}]',6,1),(26,'2021-10-29 19:19:52.271819','1','Tuyến Xe: Bình Định - Sài Gòn',2,'[{\"changed\": {\"name\": \"bus arrangement\", \"object\": \"BusArrangement object (1)\", \"fields\": [\"Departure time\", \"Next hour\", \"Departure day\"]}}]',8,1),(27,'2021-10-29 19:22:02.765518','4','Tuyến Xe: Bình Định - Gia Lai',1,'[{\"added\": {}}]',8,1),(28,'2021-10-29 19:22:28.012373','4','BusArrangement object (4)',1,'[{\"added\": {}}]',6,1),(29,'2021-10-29 19:22:48.989557','4','BusArrangement object (4)',2,'[{\"changed\": {\"fields\": [\"Name\", \"BusesLine\"]}}]',6,1),(30,'2021-10-29 19:23:56.287819','5','Tuyến Xe: Bình Định - Bình Thuận',1,'[{\"added\": {}}]',8,1),(31,'2021-10-29 19:24:11.410405','6','Tuyến Xe: Bình Định - Hà Nội',1,'[{\"added\": {}}]',8,1),(32,'2021-10-29 19:25:46.463215','5','BusArrangement object (5)',1,'[{\"added\": {}}]',6,1),(33,'2021-10-29 19:26:44.051001','6','BusArrangement object (6)',1,'[{\"added\": {}}]',6,1),(34,'2021-11-09 09:43:35.817908','3','Vịnh Hạ Long',2,'[{\"changed\": {\"fields\": [\"Name\", \"Image\", \"Description\"]}}]',18,1),(35,'2021-11-09 09:45:13.814526','3','Vịnh Hạ Long',2,'[]',18,1),(36,'2021-11-09 09:45:33.990607','2','German Shepherds',2,'[]',18,1),(37,'2021-11-09 09:48:51.162638','2','Cầu Vàng Đà Nẵng',2,'[{\"changed\": {\"fields\": [\"Name\", \"Image\", \"Description\"]}}]',18,1),(38,'2021-11-09 09:50:26.510856','1','the breathing process',2,'[{\"changed\": {\"fields\": [\"User\", \"Image\", \"Description\"]}}]',18,1),(39,'2021-11-09 09:50:37.478660','1','Đảo Phú Quốc',2,'[{\"changed\": {\"fields\": [\"Name\"]}}]',18,1),(40,'2021-11-09 09:50:43.514037','2','Cầu Vàng Đà Nẵng',2,'[{\"changed\": {\"fields\": [\"Description\"]}}]',18,1),(41,'2021-11-09 09:50:50.813977','3','Vịnh Hạ Long',2,'[]',18,1),(42,'2021-11-10 15:03:05.824919','1','BusArrangement object (1)',2,'[]',6,1),(43,'2021-11-10 15:03:06.677089','1','BusArrangement object (1)',2,'[]',6,1),(44,'2021-11-10 15:03:06.798784','1','BusArrangement object (1)',2,'[]',6,1),(45,'2021-11-10 15:03:07.021171','1','BusArrangement object (1)',2,'[]',6,1),(46,'2021-11-10 15:03:07.245603','1','BusArrangement object (1)',2,'[]',6,1),(47,'2021-11-10 15:03:07.453015','1','BusArrangement object (1)',2,'[]',6,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `model` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(21,'BookTickets','address'),(6,'BookTickets','busarrangement'),(7,'BookTickets','buses'),(8,'BookTickets','busesline'),(17,'BookTickets','order'),(20,'BookTickets','orderitem'),(18,'BookTickets','product'),(22,'BookTickets','report'),(19,'BookTickets','review'),(11,'BookTickets','ticket'),(9,'BookTickets','user'),(10,'BookTickets','user_role'),(4,'contenttypes','contenttype'),(13,'oauth2_provider','accesstoken'),(12,'oauth2_provider','application'),(14,'oauth2_provider','grant'),(16,'oauth2_provider','idtoken'),(15,'oauth2_provider','refreshtoken'),(5,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2021-09-04 17:18:06.369031'),(2,'contenttypes','0002_remove_content_type_name','2021-09-04 17:18:06.511572'),(3,'auth','0001_initial','2021-09-04 17:18:06.895179'),(4,'auth','0002_alter_permission_name_max_length','2021-09-04 17:18:07.023742'),(5,'auth','0003_alter_user_email_max_length','2021-09-04 17:18:07.034606'),(6,'auth','0004_alter_user_username_opts','2021-09-04 17:18:07.043792'),(7,'auth','0005_alter_user_last_login_null','2021-09-04 17:18:07.054761'),(8,'auth','0006_require_contenttypes_0002','2021-09-04 17:18:07.063789'),(9,'auth','0007_alter_validators_add_error_messages','2021-09-04 17:18:07.075034'),(10,'auth','0008_alter_user_username_max_length','2021-09-04 17:18:07.088147'),(11,'auth','0009_alter_user_last_name_max_length','2021-09-04 17:18:07.096563'),(12,'auth','0010_alter_group_name_max_length','2021-09-04 17:18:07.118440'),(13,'auth','0011_update_proxy_permissions','2021-09-04 17:18:07.127441'),(14,'auth','0012_alter_user_first_name_max_length','2021-09-04 17:18:07.136469'),(15,'BookTickets','0001_initial','2021-09-04 17:18:08.516108'),(16,'admin','0001_initial','2021-09-04 17:18:08.966335'),(17,'admin','0002_logentry_remove_auto_add','2021-09-04 17:18:08.984364'),(18,'admin','0003_logentry_add_action_flag_choices','2021-09-04 17:18:09.003278'),(19,'sessions','0001_initial','2021-09-04 17:18:09.084455'),(20,'BookTickets','0002_busarrangement_active','2021-09-19 11:25:52.076379'),(21,'oauth2_provider','0001_initial','2021-09-19 15:31:49.102015'),(22,'oauth2_provider','0002_auto_20190406_1805','2021-09-19 15:31:49.209931'),(23,'oauth2_provider','0003_auto_20201211_1314','2021-09-19 15:31:49.305106'),(24,'oauth2_provider','0004_auto_20200902_2022','2021-09-19 15:31:50.055776'),(25,'BookTickets','0003_auto_20211028_1917','2021-10-28 12:17:28.754341'),(26,'BookTickets','0004_auto_20211028_1923','2021-10-28 12:23:46.559247'),(27,'BookTickets','0005_busesline_active','2021-10-28 12:50:15.463848'),(28,'BookTickets','0006_auto_20211030_1712','2021-10-30 10:12:41.143296'),(29,'BookTickets','0007_auto_20211108_1707','2021-11-08 10:07:38.831188'),(30,'BookTickets','0008_report','2021-11-10 11:29:26.195639');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `session_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('35hufjbk510b5gipf5eacu5xyli6y3gr','.eJxVjMsOwiAQRf-FtSEQHoJL934DGWYGqRpISrsy_rtt0oVuzzn3vkWCdalpHTynicRFaHH6ZRnwyW0X9IB27xJ7W-Ypyz2Rhx3y1olf16P9O6gw6rYGbTJETZnC2YNhLj4jK-02GrwldgEVMFpVTKGgGI2N0WbSrNF7Jz5fFAs47Q:1mXqof:Lt79XATFnCm5NP0dtR0YV4GZ33l_T4GCLNY4lLUgzDg','2021-10-19 20:13:33.425819'),('4fiaeoa3d8phmgyr8dk4czp7f1a0x1dj','.eJxVjMsOwiAQRf-FtSEQHoJL934DGWYGqRpISrsy_rtt0oVuzzn3vkWCdalpHTynicRFaHH6ZRnwyW0X9IB27xJ7W-Ypyz2Rhx3y1olf16P9O6gw6rYGbTJETZnC2YNhLj4jK-02GrwldgEVMFpVTKGgGI2N0WbSrNF7Jz5fFAs47Q:1mRurz:D1X2R2t5FDQj27MKJagcLG1Vs8AvEXoUL__SnCjEAK0','2021-10-03 11:20:27.873938'),('70hpbu652bzggu0tcn1ka0dd3mqnmugp','.eJxVjMsOwiAQRf-FtSEQHoJL934DGWYGqRpISrsy_rtt0oVuzzn3vkWCdalpHTynicRFaHH6ZRnwyW0X9IB27xJ7W-Ypyz2Rhx3y1olf16P9O6gw6rYGbTJETZnC2YNhLj4jK-02GrwldgEVMFpVTKGgGI2N0WbSrNF7Jz5fFAs47Q:1mSeFA:U6CnMFGgfpT599dz_CayeVSXo6U0iKzXpgi0LD81ZbY','2021-10-05 11:47:24.149324'),('9qqgfiuj9wlj251x7fqpjcqrfln7zym3','.eJxVjMsOwiAQRf-FtSEQHoJL934DGWYGqRpISrsy_rtt0oVuzzn3vkWCdalpHTynicRFaHH6ZRnwyW0X9IB27xJ7W-Ypyz2Rhx3y1olf16P9O6gw6rYGbTJETZnC2YNhLj4jK-02GrwldgEVMFpVTKGgGI2N0WbSrNF7Jz5fFAs47Q:1mNdfm:56WdNNd9QC58qzmOl4J5-MhyDcMJXw6Mabex-oP0VVI','2021-09-21 16:10:10.719511'),('i8df4qv86y5oqzapehhauh7meza1tq2i','.eJxVjMsOwiAQRf-FtSEQHoJL934DGWYGqRpISrsy_rtt0oVuzzn3vkWCdalpHTynicRFaHH6ZRnwyW0X9IB27xJ7W-Ypyz2Rhx3y1olf16P9O6gw6rYGbTJETZnC2YNhLj4jK-02GrwldgEVMFpVTKGgGI2N0WbSrNF7Jz5fFAs47Q:1mg3vN:oysEsEK01qpszRlCHrCo4zhZgmuC8-yIs-ZaEoMPWLk','2021-11-11 11:50:25.064344'),('itxyerlhbwukyud2f4aq8xfykm0igvf3','.eJxVjMsOwiAQRf-FtSEQHoJL934DGWYGqRpISrsy_rtt0oVuzzn3vkWCdalpHTynicRFaHH6ZRnwyW0X9IB27xJ7W-Ypyz2Rhx3y1olf16P9O6gw6rYGbTJETZnC2YNhLj4jK-02GrwldgEVMFpVTKGgGI2N0WbSrNF7Jz5fFAs47Q:1mShe6:BKprJgl7Frtn-mR9Dx6GJ05jSnJZ-C8pf2yujD7yZ7A','2021-10-05 15:25:22.446199'),('lzr0gt2ap4qebp8l1uzds0qprkvaaqci','.eJxVjMsOwiAQRf-FtSEQHoJL934DGWYGqRpISrsy_rtt0oVuzzn3vkWCdalpHTynicRFaHH6ZRnwyW0X9IB27xJ7W-Ypyz2Rhx3y1olf16P9O6gw6rYGbTJETZnC2YNhLj4jK-02GrwldgEVMFpVTKGgGI2N0WbSrNF7Jz5fFAs47Q:1mSe2U:7HMRvhw4QyPyTf_ZnWl-wx2T7d1a9RI28pYa-jpOdjY','2021-10-05 11:34:18.096694'),('qnkjb1jz95esfb0yxxkotjuga6adbphm','.eJxVjMsOwiAQRf-FtSEQHoJL934DGWYGqRpISrsy_rtt0oVuzzn3vkWCdalpHTynicRFaHH6ZRnwyW0X9IB27xJ7W-Ypyz2Rhx3y1olf16P9O6gw6rYGbTJETZnC2YNhLj4jK-02GrwldgEVMFpVTKGgGI2N0WbSrNF7Jz5fFAs47Q:1mNuc8:YV0H-ZbiAWqbVUyobvGEdC0bTjTAD3cbhsEaFQGK7rA','2021-09-22 10:15:32.464892'),('w1ed4cmhsse1cdu70llj7lq1s8d23b1l','.eJxVjMsOwiAQRf-FtSEQHoJL934DGWYGqRpISrsy_rtt0oVuzzn3vkWCdalpHTynicRFaHH6ZRnwyW0X9IB27xJ7W-Ypyz2Rhx3y1olf16P9O6gw6rYGbTJETZnC2YNhLj4jK-02GrwldgEVMFpVTKGgGI2N0WbSrNF7Jz5fFAs47Q:1mO0IF:X1OVmGgeR7YbqNB7COjb61TZ33vzjIYeCD8bAT6Tt9I','2021-09-22 16:19:23.405772'),('xsn7srzgk7zz48f71cby6u8d20coh5za','.eJxVjMsOwiAQRf-FtSEQHoJL934DGWYGqRpISrsy_rtt0oVuzzn3vkWCdalpHTynicRFaHH6ZRnwyW0X9IB27xJ7W-Ypyz2Rhx3y1olf16P9O6gw6rYGbTJETZnC2YNhLj4jK-02GrwldgEVMFpVTKGgGI2N0WbSrNF7Jz5fFAs47Q:1mMZaQ:ToilF59hI_vPh-01afo3HH6vzLAwTjdTf-E8ADEGZpY','2021-09-18 17:36:14.039475'),('z024z68m292bjw0dl9ctly6y74lmqxrw','.eJxVjMsOwiAQRf-FtSEQHoJL934DGWYGqRpISrsy_rtt0oVuzzn3vkWCdalpHTynicRFaHH6ZRnwyW0X9IB27xJ7W-Ypyz2Rhx3y1olf16P9O6gw6rYGbTJETZnC2YNhLj4jK-02GrwldgEVMFpVTKGgGI2N0WbSrNF7Jz5fFAs47Q:1mNuiJ:YumGRIBzoNjeREGxoVRRXuU6tfEKtAKib8ljjT-syWQ','2021-09-22 10:21:55.689389');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth2_provider_accesstoken`
--

DROP TABLE IF EXISTS `oauth2_provider_accesstoken`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth2_provider_accesstoken` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `expires` datetime(6) NOT NULL,
  `scope` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `application_id` bigint DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  `source_refresh_token_id` bigint DEFAULT NULL,
  `id_token_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `token` (`token`),
  UNIQUE KEY `source_refresh_token_id` (`source_refresh_token_id`),
  UNIQUE KEY `id_token_id` (`id_token_id`),
  KEY `oauth2_provider_acce_application_id_b22886e1_fk_oauth2_pr` (`application_id`),
  KEY `oauth2_provider_acce_user_id_6e4c9a65_fk_BookTicke` (`user_id`),
  CONSTRAINT `oauth2_provider_acce_application_id_b22886e1_fk_oauth2_pr` FOREIGN KEY (`application_id`) REFERENCES `oauth2_provider_application` (`id`),
  CONSTRAINT `oauth2_provider_acce_id_token_id_85db651b_fk_oauth2_pr` FOREIGN KEY (`id_token_id`) REFERENCES `oauth2_provider_idtoken` (`id`),
  CONSTRAINT `oauth2_provider_acce_source_refresh_token_e66fbc72_fk_oauth2_pr` FOREIGN KEY (`source_refresh_token_id`) REFERENCES `oauth2_provider_refreshtoken` (`id`),
  CONSTRAINT `oauth2_provider_acce_user_id_6e4c9a65_fk_BookTicke` FOREIGN KEY (`user_id`) REFERENCES `booktickets_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth2_provider_accesstoken`
--

LOCK TABLES `oauth2_provider_accesstoken` WRITE;
/*!40000 ALTER TABLE `oauth2_provider_accesstoken` DISABLE KEYS */;
INSERT INTO `oauth2_provider_accesstoken` VALUES (1,'ka1UrvZt6b9AVUKa51z88wl4HIKljq','2021-09-20 02:24:32.798685','read write',1,2,'2021-09-19 16:24:32.798685','2021-09-19 16:24:32.798685',NULL,NULL),(6,'krosLpSVdkLHF4orIWdItQA5GlifJh','2021-10-06 06:08:58.953056','read write',1,1,'2021-10-05 20:08:58.954091','2021-10-05 20:08:58.954091',NULL,NULL),(7,'wZmrnmqW2NnTg1Z0MV3kPVvcTApJQf','2021-10-06 06:10:03.898885','read write',1,1,'2021-10-05 20:10:03.899848','2021-10-05 20:10:03.899848',NULL,NULL),(8,'Jvop9Js39uSaxCiWg6Tqcx8NDbxBfG','2021-10-06 06:13:46.623328','read write',1,1,'2021-10-05 20:13:46.624325','2021-10-05 20:13:46.624325',NULL,NULL),(9,'rxVQPsl8GGecGFBK5OaYP12OfnWY3o','2021-10-06 06:36:49.392626','read write',1,1,'2021-10-05 20:36:49.392626','2021-10-05 20:36:49.392626',NULL,NULL),(10,'gwvRBy6GdRKOgU88BINVzCz9d7U3zf','2021-10-06 06:37:11.655091','read write',1,1,'2021-10-05 20:37:11.655091','2021-10-05 20:37:11.655091',NULL,NULL),(11,'ml9K42a5v4WFx8QPEfdTGimYvAOOXw','2021-10-06 06:40:28.048077','read write',1,1,'2021-10-05 20:40:28.048077','2021-10-05 20:40:28.048077',NULL,NULL),(12,'sirgIWyek2vM4I2VU5Dx5hET3ojVuN','2021-10-06 06:44:35.517975','read write',1,1,'2021-10-05 20:44:35.517975','2021-10-05 20:44:35.517975',NULL,NULL),(13,'hNMwpivvTuKBSBfB6AajPlxlDnnL17','2021-10-06 06:44:36.352815','read write',1,1,'2021-10-05 20:44:36.353779','2021-10-05 20:44:36.353779',NULL,NULL),(14,'PGd4DbHtLmTjquGUHcJ6CLDQ9nEkSR','2021-10-06 06:44:36.670348','read write',1,1,'2021-10-05 20:44:36.671345','2021-10-05 20:44:36.671345',NULL,NULL),(15,'hIfcr7CWxlMhutOqGL7A4xm019o8V1','2021-10-06 06:44:36.887406','read write',1,1,'2021-10-05 20:44:36.887406','2021-10-05 20:44:36.887406',NULL,NULL),(16,'xyYiPvezXO0eWwR0CkYNqOU3wgRC00','2021-10-06 06:47:17.181302','read write',1,1,'2021-10-05 20:47:17.181302','2021-10-05 20:47:17.181302',NULL,NULL),(17,'0a5IGouLF1V1ikE43eVqEeYpAC6cxM','2021-10-06 06:48:06.075061','read write',1,1,'2021-10-05 20:48:06.075061','2021-10-05 20:48:06.075061',NULL,NULL),(18,'l27ei3gELxsh480ol7182RmzipOVdz','2021-10-06 06:48:39.697074','read write',1,1,'2021-10-05 20:48:39.698069','2021-10-05 20:48:39.698069',NULL,NULL),(19,'wkT8fZeyhYPe2AC0QwTjdCx9XGg5Id','2021-10-06 06:56:13.081836','read write',1,1,'2021-10-05 20:56:13.081836','2021-10-05 20:56:13.081836',NULL,NULL),(20,'4HBySYnt6mXcVyvqhJWzv4SI6XUFQm','2021-10-06 06:58:02.325727','read write',1,1,'2021-10-05 20:58:02.326726','2021-10-05 20:58:02.326726',NULL,NULL),(21,'WOtfc6e9d4K9y3II0MI1IWRNaEF9hO','2021-10-06 06:58:03.364748','read write',1,1,'2021-10-05 20:58:03.364748','2021-10-05 20:58:03.364748',NULL,NULL),(22,'3rHy78eCuxUOZJsgWcHrwaVVOshDh2','2021-10-06 06:58:03.940409','read write',1,1,'2021-10-05 20:58:03.941382','2021-10-05 20:58:03.941382',NULL,NULL),(23,'b4i2HPYdNgT5GgsvbfDg5IyxZ4OGmH','2021-10-06 06:59:17.214287','read write',1,1,'2021-10-05 20:59:17.214287','2021-10-05 20:59:17.214287',NULL,NULL),(24,'hgVnFx37PhpK2N76hnXKQIgy8RuET1','2021-10-06 06:59:20.463298','read write',1,1,'2021-10-05 20:59:20.464296','2021-10-05 20:59:20.464296',NULL,NULL),(25,'spGLqSc5qisaT3BHsHDlnzz5T6tUuw','2021-10-06 07:00:11.797367','read write',1,1,'2021-10-05 21:00:11.797367','2021-10-05 21:00:11.797367',NULL,NULL),(26,'gtToQQRg8f6aphdW8E4pERtKOkAe13','2021-10-06 07:04:29.188208','read write',1,1,'2021-10-05 21:04:29.188208','2021-10-05 21:04:29.188208',NULL,NULL),(27,'dvBFlitCrocQRxCSe2wJ1YY68fYt6i','2021-10-06 16:35:21.140732','read write',1,1,'2021-10-06 06:35:21.140732','2021-10-06 06:35:21.140732',NULL,NULL),(28,'0amtQeKfyfPSejiBSlMCOC4RBnq6PS','2021-10-06 16:36:12.790565','read write',1,1,'2021-10-06 06:36:12.790565','2021-10-06 06:36:12.790565',NULL,NULL),(29,'fePVoM93PAiAFzi8gQJa8bXvs2l5gC','2021-10-06 16:42:15.548780','read write',1,1,'2021-10-06 06:42:15.549745','2021-10-06 06:42:15.549745',NULL,NULL),(30,'leCBPWYv0bw956SDj0yI8iq97rmSIH','2021-10-06 16:53:52.976870','read write',1,1,'2021-10-06 06:53:52.976870','2021-10-06 06:53:52.976870',NULL,NULL),(31,'No0K01WWPeXoRnlDrF1NUSpIIhpqeM','2021-10-06 17:02:09.648956','read write',1,2,'2021-10-06 07:02:09.649954','2021-10-06 07:02:09.649954',NULL,NULL),(32,'istVQOYUBPHtO1eqoPMNWPBHPGL0Hr','2021-10-06 17:02:50.399381','read write',1,2,'2021-10-06 07:02:50.400377','2021-10-06 07:02:50.400377',NULL,NULL),(33,'faLTsFU6p84fK8EVr4ygZJvGgaeENl','2021-10-06 17:07:24.192991','read write',1,2,'2021-10-06 07:07:24.193989','2021-10-06 07:07:24.193989',NULL,NULL),(34,'dBO6JLXnf0aDTu8j1Hq6p3CGTTmNxL','2021-10-06 18:33:08.847115','read write',1,6,'2021-10-06 08:33:08.848143','2021-10-06 08:33:08.848143',NULL,NULL),(35,'T76r4kwDiXvohyYTnPixOdM5pd1iMK','2021-10-06 18:34:51.808929','read write',1,6,'2021-10-06 08:34:51.809927','2021-10-06 08:34:51.809927',NULL,NULL),(36,'6SRd93fj170oPicFvYuOem6ll2CNLc','2021-10-06 18:35:15.025851','read write',1,1,'2021-10-06 08:35:15.026849','2021-10-06 08:35:15.026849',NULL,NULL),(37,'VEflevB2tILEwRz4j0jI0kiCIFKlF6','2021-10-06 18:42:43.779223','read write',1,1,'2021-10-06 08:42:43.780222','2021-10-06 08:42:43.780222',NULL,NULL),(38,'ehBemDDoc5XQh2OoH4h9dq7hqxfQy3','2021-10-06 19:13:42.093030','read write',1,1,'2021-10-06 09:13:42.093030','2021-10-06 09:13:42.093030',NULL,NULL),(39,'pyZ3Pdo9QsO1180KELPRC8EzfMWIjm','2021-10-06 19:14:22.983101','read write',1,1,'2021-10-06 09:14:22.984098','2021-10-06 09:14:22.984098',NULL,NULL),(40,'T5sLVTttphedpejltZqxWBspFLfuOp','2021-10-06 19:15:26.276843','read write',1,1,'2021-10-06 09:15:26.276843','2021-10-06 09:15:26.276843',NULL,NULL),(41,'ZdyQDJXYrxsbyXQK7oXjiJhdGla7kY','2021-10-06 19:16:50.710594','read write',1,6,'2021-10-06 09:16:50.710594','2021-10-06 09:16:50.710594',NULL,NULL),(42,'BXWzTHtyfhVkcfiXbRFzWczy1noc4h','2021-10-06 19:20:31.855474','read write',1,1,'2021-10-06 09:20:31.855474','2021-10-06 09:20:31.855474',NULL,NULL),(43,'FxJVlwbnHe963G9h4pIBFahirAdvFn','2021-10-06 19:23:54.281745','read write',1,1,'2021-10-06 09:23:54.281745','2021-10-06 09:23:54.281745',NULL,NULL),(44,'wzIxqqo5bIHp6QFgA1TMaDBzrQFCrY','2021-10-06 19:32:56.569705','read write',1,1,'2021-10-06 09:32:56.570739','2021-10-06 09:32:56.570739',NULL,NULL),(45,'gfvTo9MMS9Fy7e84AuVzl8mGwZfP1L','2021-10-06 19:33:53.192352','read write',1,1,'2021-10-06 09:33:53.192352','2021-10-06 09:33:53.192352',NULL,NULL),(46,'zLPCxSpIgVRRidmUp8rO7Ba6plhvV2','2021-10-06 19:34:48.515289','read write',1,1,'2021-10-06 09:34:48.515289','2021-10-06 09:34:48.515289',NULL,NULL),(47,'wsC36azYHjYLu9aOJXlgZJ7xIBueJi','2021-10-06 19:45:20.379569','read write',1,1,'2021-10-06 09:45:20.380566','2021-10-06 09:45:20.380566',NULL,NULL),(48,'5QBINDrPv0ZPx9uRwn1vCr2b1m5RwG','2021-10-06 19:56:18.307103','read write',1,1,'2021-10-06 09:56:18.307103','2021-10-06 09:56:18.307103',NULL,NULL),(49,'H8OgJbFswi7KwzCAXAgvViIbuXX1fi','2021-10-06 20:39:08.620728','read write',1,1,'2021-10-06 10:39:08.621699','2021-10-06 10:39:08.621699',NULL,NULL),(50,'a7OHSEWEoVUrIqUIRscw7ZXhDI0l9s','2021-10-06 20:39:48.614493','read write',1,1,'2021-10-06 10:39:48.614493','2021-10-06 10:39:48.614493',NULL,NULL),(51,'YK7ouP93yQUiITvceSr3Jqa9qGi9y5','2021-10-06 20:40:57.606222','read write',1,1,'2021-10-06 10:40:57.606222','2021-10-06 10:40:57.606222',NULL,NULL),(52,'1pCPgT2IX9OEoEOwcFmlYc1kT69SCk','2021-10-06 20:46:33.424503','read write',1,1,'2021-10-06 10:46:33.425497','2021-10-06 10:46:33.425497',NULL,NULL),(53,'JdKbzOu4rcUBwGcmNwBGeKqHq2prqg','2021-10-06 20:53:42.823027','read write',1,1,'2021-10-06 10:53:42.823027','2021-10-06 10:53:42.823027',NULL,NULL),(54,'xTETDCwbwxP9S1ZNg1OpLrRu9kCbpg','2021-10-06 21:02:37.075600','read write',1,1,'2021-10-06 11:02:37.075600','2021-10-06 11:02:37.075600',NULL,NULL),(55,'J3HHZwi3OiAcn2fzFXuGPyX6uGNRIW','2021-10-06 21:11:20.469684','read write',1,1,'2021-10-06 11:11:20.469684','2021-10-06 11:11:20.469684',NULL,NULL),(56,'6CLm6m3OswqYVfkjMIXsh09IPdjV2Y','2021-10-06 21:17:21.445449','read write',1,1,'2021-10-06 11:17:21.445449','2021-10-06 11:17:21.445449',NULL,NULL),(57,'9BsBRJ83Ub6Z4c36hoBQo3tNpdjuW6','2021-10-06 21:24:42.805036','read write',1,1,'2021-10-06 11:24:42.805036','2021-10-06 11:24:42.805036',NULL,NULL),(58,'n88nuvr7pPWM83T5KtuaDyBCzKEtt5','2021-10-06 21:40:09.982905','read write',1,1,'2021-10-06 11:40:09.982905','2021-10-06 11:40:09.982905',NULL,NULL),(59,'GkH4cAhHOCqqIY76SmdmkinHLZCXnr','2021-10-06 22:04:51.308581','read write',1,1,'2021-10-06 12:04:51.309578','2021-10-06 12:04:51.309578',NULL,NULL),(60,'4qLOYhL5cLNDbldgCTxc8QDzv9Kw6t','2021-10-06 22:07:16.259422','read write',1,1,'2021-10-06 12:07:16.260371','2021-10-06 12:07:16.260371',NULL,NULL),(61,'j7Dro8rWmslMggmY7pXTKgCrg9MiJ9','2021-10-06 22:07:33.747854','read write',1,1,'2021-10-06 12:07:33.747854','2021-10-06 12:07:33.747854',NULL,NULL),(62,'m2tmkavV3UO8qWStqGBBErJh86Jwwo','2021-10-06 22:08:02.813612','read write',1,1,'2021-10-06 12:08:02.813612','2021-10-06 12:08:02.813612',NULL,NULL),(63,'WmDSSIA9J2yfk34n4Z3zk40rTG4THF','2021-10-28 21:31:15.485751','read write',1,1,'2021-10-28 11:31:15.486783','2021-10-28 11:31:15.486783',NULL,NULL),(64,'Op2ioYeNQIQDMC22DzTQ1W412Dha9o','2021-10-28 21:40:17.939626','read write',1,7,'2021-10-28 11:40:17.939626','2021-10-28 11:40:17.940624',NULL,NULL),(65,'iYtZHVEbfkSu7HphB1ZLUNvPp4pHWI','2021-10-28 21:53:31.691192','read write',1,7,'2021-10-28 11:53:31.691192','2021-10-28 11:53:31.691192',NULL,NULL),(66,'d0430Ww7TaR5Bif5ot5jB89CKlmvHm','2021-10-28 22:24:48.388167','read write',1,1,'2021-10-28 12:24:48.388167','2021-10-28 12:24:48.388167',NULL,NULL),(67,'FHxWUyhmT4qWQaIFpQFi7DKG89N7Hj','2021-10-29 01:41:30.772294','read write',1,6,'2021-10-28 15:41:30.773292','2021-10-28 15:41:30.773292',NULL,NULL),(68,'7a9jDjkLnDSxJ4ZmUEknEWi9QEKf3Q','2021-10-30 05:13:34.260739','read write',1,1,'2021-10-29 19:13:34.277414','2021-10-29 19:13:34.277414',NULL,NULL),(69,'cpUwZS4ej3fTnjmJJPEnHNh2ojnBq3','2021-10-30 17:18:35.493930','read write',1,1,'2021-10-30 07:18:35.494970','2021-10-30 07:18:35.494970',NULL,NULL),(70,'A10yTy2kxVWhtxzBbGlPtEshOdwrH6','2021-10-30 19:38:50.237237','read write',1,1,'2021-10-30 09:38:50.237237','2021-10-30 09:38:50.237237',NULL,NULL),(71,'1pyo8g3QSzKSwsSfOQUpaOJgnYbtAN','2021-10-31 00:58:50.246395','read write',1,1,'2021-10-30 14:58:50.251673','2021-10-30 14:58:50.251673',NULL,NULL),(72,'N3Sw0vsr2Y2OWJGRsXlMVm8uEN8lPE','2021-11-09 19:31:32.964160','read write',1,1,'2021-11-09 09:31:32.965157','2021-11-09 09:31:32.965157',NULL,NULL),(73,'RSzpIVUm8qYzwxEsjNYvGhyGVP8TAx','2021-11-09 20:32:07.163993','read write',1,1,'2021-11-09 10:32:07.164958','2021-11-09 10:32:07.164958',NULL,NULL),(74,'RXj3AoX0vBf4TAqp82vKVp616UvLFo','2021-11-09 21:11:09.415151','read write',1,1,'2021-11-09 11:11:09.416148','2021-11-09 11:11:09.416148',NULL,NULL),(75,'uhIliC8CBTjqzX7KR3H1WScNjlef4Z','2021-11-10 01:10:50.534462','read write',1,1,'2021-11-09 15:10:50.534462','2021-11-09 15:10:50.534462',NULL,NULL),(76,'bth1slWxSqZd82wwoZtIdg2adAO0SB','2021-11-10 02:56:18.445727','read write',1,1,'2021-11-09 16:56:18.450898','2021-11-09 16:56:18.450898',NULL,NULL),(77,'n57WPknEX6p4m46i6qb1spfJMINkyQ','2021-11-15 19:16:55.727869','read write',1,1,'2021-11-15 09:16:55.727869','2021-11-15 09:16:55.727869',NULL,NULL);
/*!40000 ALTER TABLE `oauth2_provider_accesstoken` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth2_provider_application`
--

DROP TABLE IF EXISTS `oauth2_provider_application`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth2_provider_application` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `client_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `redirect_uris` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `client_type` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `authorization_grant_type` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `client_secret` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` bigint DEFAULT NULL,
  `skip_authorization` tinyint(1) NOT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  `algorithm` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `client_id` (`client_id`),
  KEY `oauth2_provider_appl_user_id_79829054_fk_BookTicke` (`user_id`),
  KEY `oauth2_provider_application_client_secret_53133678` (`client_secret`),
  CONSTRAINT `oauth2_provider_appl_user_id_79829054_fk_BookTicke` FOREIGN KEY (`user_id`) REFERENCES `booktickets_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth2_provider_application`
--

LOCK TABLES `oauth2_provider_application` WRITE;
/*!40000 ALTER TABLE `oauth2_provider_application` DISABLE KEYS */;
INSERT INTO `oauth2_provider_application` VALUES (1,'BEagoNAduJTwUTRdXm6eW5ddLQodgVZP29gE4WFI','','confidential','password','TsQ5ZErzaTMdjVzN4eemYi5fYPwYNva2quSt0CB46eAQuLRFcMKbRKeoZlZSU038dlrwuGQ5V0hRbajsfa0FQ3xaNoPnzVijD6PNgRk1U4szp89hqHxaelschimws7tU','EBookTicketsApp',1,0,'2021-09-19 15:33:31.677764','2021-09-19 15:33:31.677764','');
/*!40000 ALTER TABLE `oauth2_provider_application` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth2_provider_grant`
--

DROP TABLE IF EXISTS `oauth2_provider_grant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth2_provider_grant` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `expires` datetime(6) NOT NULL,
  `redirect_uri` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `scope` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `application_id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  `code_challenge` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `code_challenge_method` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `nonce` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `claims` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT (_utf8mb3''),
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`),
  KEY `oauth2_provider_gran_application_id_81923564_fk_oauth2_pr` (`application_id`),
  KEY `oauth2_provider_grant_user_id_e8f62af8_fk_BookTickets_user_id` (`user_id`),
  CONSTRAINT `oauth2_provider_gran_application_id_81923564_fk_oauth2_pr` FOREIGN KEY (`application_id`) REFERENCES `oauth2_provider_application` (`id`),
  CONSTRAINT `oauth2_provider_grant_user_id_e8f62af8_fk_BookTickets_user_id` FOREIGN KEY (`user_id`) REFERENCES `booktickets_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth2_provider_grant`
--

LOCK TABLES `oauth2_provider_grant` WRITE;
/*!40000 ALTER TABLE `oauth2_provider_grant` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth2_provider_grant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth2_provider_idtoken`
--

DROP TABLE IF EXISTS `oauth2_provider_idtoken`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth2_provider_idtoken` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `jti` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `expires` datetime(6) NOT NULL,
  `scope` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  `application_id` bigint DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `jti` (`jti`),
  KEY `oauth2_provider_idto_application_id_08c5ff4f_fk_oauth2_pr` (`application_id`),
  KEY `oauth2_provider_idtoken_user_id_dd512b59_fk_BookTickets_user_id` (`user_id`),
  CONSTRAINT `oauth2_provider_idto_application_id_08c5ff4f_fk_oauth2_pr` FOREIGN KEY (`application_id`) REFERENCES `oauth2_provider_application` (`id`),
  CONSTRAINT `oauth2_provider_idtoken_user_id_dd512b59_fk_BookTickets_user_id` FOREIGN KEY (`user_id`) REFERENCES `booktickets_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth2_provider_idtoken`
--

LOCK TABLES `oauth2_provider_idtoken` WRITE;
/*!40000 ALTER TABLE `oauth2_provider_idtoken` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth2_provider_idtoken` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth2_provider_refreshtoken`
--

DROP TABLE IF EXISTS `oauth2_provider_refreshtoken`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth2_provider_refreshtoken` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `access_token_id` bigint DEFAULT NULL,
  `application_id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  `revoked` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `access_token_id` (`access_token_id`),
  UNIQUE KEY `oauth2_provider_refreshtoken_token_revoked_af8a5134_uniq` (`token`,`revoked`),
  KEY `oauth2_provider_refr_application_id_2d1c311b_fk_oauth2_pr` (`application_id`),
  KEY `oauth2_provider_refr_user_id_da837fce_fk_BookTicke` (`user_id`),
  CONSTRAINT `oauth2_provider_refr_access_token_id_775e84e8_fk_oauth2_pr` FOREIGN KEY (`access_token_id`) REFERENCES `oauth2_provider_accesstoken` (`id`),
  CONSTRAINT `oauth2_provider_refr_application_id_2d1c311b_fk_oauth2_pr` FOREIGN KEY (`application_id`) REFERENCES `oauth2_provider_application` (`id`),
  CONSTRAINT `oauth2_provider_refr_user_id_da837fce_fk_BookTicke` FOREIGN KEY (`user_id`) REFERENCES `booktickets_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth2_provider_refreshtoken`
--

LOCK TABLES `oauth2_provider_refreshtoken` WRITE;
/*!40000 ALTER TABLE `oauth2_provider_refreshtoken` DISABLE KEYS */;
INSERT INTO `oauth2_provider_refreshtoken` VALUES (1,'zmWW1vhZwACpj4Ry8zVYKBSlzsQ7pv',1,1,2,'2021-09-19 16:24:32.804833','2021-09-19 16:24:32.804833',NULL),(6,'BdpE4W4iTQ7KfCriMc2Fh6bWO9Qfgq',6,1,1,'2021-10-05 20:08:59.015263','2021-10-05 20:08:59.015263',NULL),(7,'qilcGafrMAUk2KjCnjp4uLBHDHZ3aV',7,1,1,'2021-10-05 20:10:03.924077','2021-10-05 20:10:03.924077',NULL),(8,'CwrXhtvMtXIurfpbtca2cln5NRgBOI',8,1,1,'2021-10-05 20:13:46.651195','2021-10-05 20:13:46.651195',NULL),(9,'mOnrxtBp1m0wEbH6PcT4MzRfBHkxcL',9,1,1,'2021-10-05 20:36:49.426535','2021-10-05 20:36:49.426535',NULL),(10,'ZQWFwDET5M2OwfQAY8VcP5dk0iuYWI',10,1,1,'2021-10-05 20:37:11.680001','2021-10-05 20:37:11.680001',NULL),(11,'T1qcTAuFCALpAdIdNeBTsHkXxfUM76',11,1,1,'2021-10-05 20:40:28.073101','2021-10-05 20:40:28.073101',NULL),(12,'88SQvWSzEc0Jpn6JKLyjowsRyxMZLQ',12,1,1,'2021-10-05 20:44:35.542896','2021-10-05 20:44:35.542896',NULL),(13,'FSZemk7aEJlk31CNupWmkI7mVYm5LA',13,1,1,'2021-10-05 20:44:36.388104','2021-10-05 20:44:36.388104',NULL),(14,'e3mqyL7kS72fKIteIvtXQhutU3TzBz',14,1,1,'2021-10-05 20:44:36.701937','2021-10-05 20:44:36.701937',NULL),(15,'BOiEi8T7D4UZJTzk7F5joMwVkcFEEI',15,1,1,'2021-10-05 20:44:36.909348','2021-10-05 20:44:36.909348',NULL),(16,'ouyXZrtey2Lj0GJhDHRG9igc7j5IvF',16,1,1,'2021-10-05 20:47:17.207257','2021-10-05 20:47:17.207257',NULL),(17,'RHOSRGOWS9x2uEUXtjgEQ42JeiQUup',17,1,1,'2021-10-05 20:48:06.100229','2021-10-05 20:48:06.100229',NULL),(18,'Saq3nqtOFLDIWURx5h0xZTk3UcOrhN',18,1,1,'2021-10-05 20:48:39.721007','2021-10-05 20:48:39.721007',NULL),(19,'zifvtQ4qPxvnMD2yvzwZd7ACAko2oV',19,1,1,'2021-10-05 20:56:13.119085','2021-10-05 20:56:13.119085',NULL),(20,'LQrjPIt9xVp5Fd2Y2OcaaPC5vAUzdw',20,1,1,'2021-10-05 20:58:02.352666','2021-10-05 20:58:02.352666',NULL),(21,'2P9k6GA3O6kyXlkcYrGoydRk0gnR5R',21,1,1,'2021-10-05 20:58:03.389640','2021-10-05 20:58:03.389640',NULL),(22,'q4TOBSPn2QHwYb1iJLB3WrH8a2NKnK',22,1,1,'2021-10-05 20:58:03.963625','2021-10-05 20:58:03.963625',NULL),(23,'ZAYVVT3d5rYsalegv8gGfPAC8hNof5',23,1,1,'2021-10-05 20:59:17.237633','2021-10-05 20:59:17.237633',NULL),(24,'yb2R0wBOVLUPwfcnjQRECyjleinnzt',24,1,1,'2021-10-05 20:59:20.489260','2021-10-05 20:59:20.489260',NULL),(25,'mNdC1GzfW1fleC9jEiIQ1xdU2GrIRB',25,1,1,'2021-10-05 21:00:11.819309','2021-10-05 21:00:11.819309',NULL),(26,'qP9KvInkIVy2WRNd11S6wj3w9zkiVn',26,1,1,'2021-10-05 21:04:29.213263','2021-10-05 21:04:29.213263',NULL),(27,'6V4bOfNbgZHlHPz3NEiwxdQQuB7ljL',27,1,1,'2021-10-06 06:35:21.223534','2021-10-06 06:35:21.223534',NULL),(28,'I7Z7pBUl5iSEuAaXMlcCjilKUzxjIC',28,1,1,'2021-10-06 06:36:12.815542','2021-10-06 06:36:12.815542',NULL),(29,'sMVArtXsxL3jWdj1jpXGsyTDVgv8ss',29,1,1,'2021-10-06 06:42:15.574551','2021-10-06 06:42:15.574551',NULL),(30,'6nQS0GbDOkloheOggO17fwMf98uGdK',30,1,1,'2021-10-06 06:53:53.013428','2021-10-06 06:53:53.014430',NULL),(31,'8KacT6yw3JIBugILh7IokjTOy4hjts',31,1,2,'2021-10-06 07:02:09.677905','2021-10-06 07:02:09.677905',NULL),(32,'oUonyYuntiqhrRKpq4U17UcQDXJtmZ',32,1,2,'2021-10-06 07:02:50.423507','2021-10-06 07:02:50.423507',NULL),(33,'jWUEWxZOzi0jX5n0d3KMWWBaoCMXY5',33,1,2,'2021-10-06 07:07:24.220917','2021-10-06 07:07:24.220917',NULL),(34,'P1l86ggIFb81vMitUZq647EdiyEMS7',34,1,6,'2021-10-06 08:33:08.878042','2021-10-06 08:33:08.878042',NULL),(35,'zWAK2GfBYJFnYInFXzmuBhFZpISnFu',35,1,6,'2021-10-06 08:34:51.859430','2021-10-06 08:34:51.859430',NULL),(36,'BXkZa2AcaIdyWwk8GualtciP8FJjKR',36,1,1,'2021-10-06 08:35:15.049511','2021-10-06 08:35:15.049511',NULL),(37,'knb8Xhur7kl9RoJcCKmSxab8qmnfu9',37,1,1,'2021-10-06 08:42:43.803159','2021-10-06 08:42:43.803159',NULL),(38,'si7mMbUVPyJsQu3s2VZPLIDIGXplh8',38,1,1,'2021-10-06 09:13:42.129436','2021-10-06 09:13:42.129436',NULL),(39,'atwNosh101esWzNdE5lW9nnR1jE3Gx',39,1,1,'2021-10-06 09:14:23.010066','2021-10-06 09:14:23.010066',NULL),(40,'XL7g2VQrbbGG8z3O0B8AxKOBoyMx4f',40,1,1,'2021-10-06 09:15:26.314792','2021-10-06 09:15:26.314792',NULL),(41,'tfo2mwmj3lZ6BptGLXQDbdELGKZK5d',41,1,6,'2021-10-06 09:16:50.746693','2021-10-06 09:16:50.746693',NULL),(42,'N3youzxmmyf7tbq71qmlxLq1UZhJNj',42,1,1,'2021-10-06 09:20:31.884327','2021-10-06 09:20:31.884327',NULL),(43,'zalC7Nr2iExjM6wgN0SVFcPXhR9kMf',43,1,1,'2021-10-06 09:23:54.304783','2021-10-06 09:23:54.304783',NULL),(44,'Z2TqUNHD31xxAJmSR85y85jWqM3Cn9',44,1,1,'2021-10-06 09:32:56.592645','2021-10-06 09:32:56.592645',NULL),(45,'1qkp8UPe73hgyVSwbqlI4pXpGhbBFw',45,1,1,'2021-10-06 09:33:53.230366','2021-10-06 09:33:53.230366',NULL),(46,'nvgQlyzWcpzzI7xd93pi2CnuAFZLJh',46,1,1,'2021-10-06 09:34:48.536904','2021-10-06 09:34:48.536904',NULL),(47,'o08Oy2wJXNpZXu1Fvj90duajTyD8Rb',47,1,1,'2021-10-06 09:45:20.417492','2021-10-06 09:45:20.417492',NULL),(48,'exmBDueHImfbqT1DyaJiqoXYew5wWR',48,1,1,'2021-10-06 09:56:18.329818','2021-10-06 09:56:18.329818',NULL),(49,'rYLn4tP3uvU81pDEB6zfLI5liLNGLp',49,1,1,'2021-10-06 10:39:08.647926','2021-10-06 10:39:08.647926',NULL),(50,'6uD3mOfQnQvjDPUeUZzB893NfluQMJ',50,1,1,'2021-10-06 10:39:48.650294','2021-10-06 10:39:48.650294',NULL),(51,'9IhTXP5HtBGQUCX4ssnKUy7lozX2nJ',51,1,1,'2021-10-06 10:40:57.630217','2021-10-06 10:40:57.630217',NULL),(52,'71SRyxAupsxSDbxQFKwpfylTfPhZBU',52,1,1,'2021-10-06 10:46:33.448564','2021-10-06 10:46:33.448564',NULL),(53,'cO0j3PmjH8BQqCRVIUZ1XPUgAeUsHa',53,1,1,'2021-10-06 10:53:42.860137','2021-10-06 10:53:42.860137',NULL),(54,'1nYipWzX0mow57PtjefeQ5O2c7kvvs',54,1,1,'2021-10-06 11:02:37.097566','2021-10-06 11:02:37.097566',NULL),(55,'jnTdSteM7ExeiqWwLPvmgmORGQ0fXA',55,1,1,'2021-10-06 11:11:20.492622','2021-10-06 11:11:20.492622',NULL),(56,'gwgQgzYVyF1BniqSzRsDoW4HClt7SZ',56,1,1,'2021-10-06 11:17:21.469753','2021-10-06 11:17:21.469753',NULL),(57,'ECAMdQOlO7gIpaTFnuaX6mxmlfeNfi',57,1,1,'2021-10-06 11:24:42.827011','2021-10-06 11:24:42.827011',NULL),(58,'9v5xCWBeN10PJpa05lO6Iv2umoZTGz',58,1,1,'2021-10-06 11:40:10.007669','2021-10-06 11:40:10.008667',NULL),(59,'X282ZRUXe8BbcHrrFOUebawHiJCe4J',59,1,1,'2021-10-06 12:04:51.331520','2021-10-06 12:04:51.331520',NULL),(60,'KaYn7hBQs8d4Tmebv94FCm9wvWulTw',60,1,1,'2021-10-06 12:07:16.282800','2021-10-06 12:07:16.282800',NULL),(61,'WZ8EPaJQyUOF8tGmc36GYbzdhc6Fhh',61,1,1,'2021-10-06 12:07:33.770146','2021-10-06 12:07:33.770146',NULL),(62,'bUeag1Gcw3OjyuwE0mq5snCw81jrR5',62,1,1,'2021-10-06 12:08:02.834555','2021-10-06 12:08:02.834555',NULL),(63,'DZiWDtvViTEpgYzObNZI1onBMmX851',63,1,1,'2021-10-28 11:31:15.555637','2021-10-28 11:31:15.555637',NULL),(64,'Fi49Bu3eSM9H5lDaPVFjwFpL1wophB',64,1,7,'2021-10-28 11:40:17.968547','2021-10-28 11:40:17.968547',NULL),(65,'YmXMKqmjYHbfQePc2vAbSzZZLG8iyG',65,1,7,'2021-10-28 11:53:31.717157','2021-10-28 11:53:31.717157',NULL),(66,'HcUvLkIswCtEGsubdkpmxyJoosBSkC',66,1,1,'2021-10-28 12:24:48.422077','2021-10-28 12:24:48.422077',NULL),(67,'ju13TGXKDlKX5klOXAlWinUtjV0U0f',67,1,6,'2021-10-28 15:41:30.917907','2021-10-28 15:41:30.917907',NULL),(68,'i4BxEvsdIHlBm1avG7o4weKsbczjnM',68,1,1,'2021-10-29 19:13:34.384437','2021-10-29 19:13:34.384437',NULL),(69,'LFikwH1zwF7EGDB5zSUR0Qex4vAEc2',69,1,1,'2021-10-30 07:18:35.597569','2021-10-30 07:18:35.597569',NULL),(70,'vILpBa6KvkgpY3vDtN7n8vcz7q7rE1',70,1,1,'2021-10-30 09:38:50.330927','2021-10-30 09:38:50.330927',NULL),(71,'VlKXjMnjjXCKqZzzh1XzGLEfMRDnvO',71,1,1,'2021-10-30 14:58:50.360161','2021-10-30 14:58:50.360161',NULL),(72,'DTDutW1CAAK31vyfg23xHZwcihU1On',72,1,1,'2021-11-09 09:31:33.040954','2021-11-09 09:31:33.040954',NULL),(73,'LXOWdL01I4gaiVv8qsJHENr9kTPc1W',73,1,1,'2021-11-09 10:32:07.196871','2021-11-09 10:32:07.196871',NULL),(74,'7hWnlzocrdgHUnmmvQs5iXpR9xwEJz',74,1,1,'2021-11-09 11:11:09.439382','2021-11-09 11:11:09.439382',NULL),(75,'uTmcTlZQvmBW5rbBZSTDYE2FGlfLCw',75,1,1,'2021-11-09 15:10:50.608261','2021-11-09 15:10:50.608261',NULL),(76,'5duijvRe6JijkaSzmz9JMZUSrU9HIF',76,1,1,'2021-11-09 16:56:18.513820','2021-11-09 16:56:18.513820',NULL),(77,'cMa4o9lAI1zhuRV6FQHoZPjfd52XLm',77,1,1,'2021-11-15 09:16:55.824162','2021-11-15 09:16:55.824162',NULL);
/*!40000 ALTER TABLE `oauth2_provider_refreshtoken` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-11-15 16:21:27
