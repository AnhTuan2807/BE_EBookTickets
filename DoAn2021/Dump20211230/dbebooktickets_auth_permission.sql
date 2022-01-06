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
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add content type',4,'add_contenttype'),(14,'Can change content type',4,'change_contenttype'),(15,'Can delete content type',4,'delete_contenttype'),(16,'Can view content type',4,'view_contenttype'),(17,'Can add session',5,'add_session'),(18,'Can change session',5,'change_session'),(19,'Can delete session',5,'delete_session'),(20,'Can view session',5,'view_session'),(21,'Can add bus arrangement',6,'add_busarrangement'),(22,'Can change bus arrangement',6,'change_busarrangement'),(23,'Can delete bus arrangement',6,'delete_busarrangement'),(24,'Can view bus arrangement',6,'view_busarrangement'),(25,'Can add buses',7,'add_buses'),(26,'Can change buses',7,'change_buses'),(27,'Can delete buses',7,'delete_buses'),(28,'Can view buses',7,'view_buses'),(29,'Can add buses line',8,'add_busesline'),(30,'Can change buses line',8,'change_busesline'),(31,'Can delete buses line',8,'delete_busesline'),(32,'Can view buses line',8,'view_busesline'),(33,'Can add user',9,'add_user'),(34,'Can change user',9,'change_user'),(35,'Can delete user',9,'delete_user'),(36,'Can view user',9,'view_user'),(37,'Can add user_ role',10,'add_user_role'),(38,'Can change user_ role',10,'change_user_role'),(39,'Can delete user_ role',10,'delete_user_role'),(40,'Can view user_ role',10,'view_user_role'),(41,'Can add ticket',11,'add_ticket'),(42,'Can change ticket',11,'change_ticket'),(43,'Can delete ticket',11,'delete_ticket'),(44,'Can view ticket',11,'view_ticket'),(45,'Can add application',12,'add_application'),(46,'Can change application',12,'change_application'),(47,'Can delete application',12,'delete_application'),(48,'Can view application',12,'view_application'),(49,'Can add access token',13,'add_accesstoken'),(50,'Can change access token',13,'change_accesstoken'),(51,'Can delete access token',13,'delete_accesstoken'),(52,'Can view access token',13,'view_accesstoken'),(53,'Can add grant',14,'add_grant'),(54,'Can change grant',14,'change_grant'),(55,'Can delete grant',14,'delete_grant'),(56,'Can view grant',14,'view_grant'),(57,'Can add refresh token',15,'add_refreshtoken'),(58,'Can change refresh token',15,'change_refreshtoken'),(59,'Can delete refresh token',15,'delete_refreshtoken'),(60,'Can view refresh token',15,'view_refreshtoken'),(61,'Can add id token',16,'add_idtoken'),(62,'Can change id token',16,'change_idtoken'),(63,'Can delete id token',16,'delete_idtoken'),(64,'Can view id token',16,'view_idtoken'),(65,'Can add order',17,'add_order'),(66,'Can change order',17,'change_order'),(67,'Can delete order',17,'delete_order'),(68,'Can view order',17,'view_order'),(69,'Can add product',18,'add_product'),(70,'Can change product',18,'change_product'),(71,'Can delete product',18,'delete_product'),(72,'Can view product',18,'view_product'),(73,'Can add shipping address',19,'add_shippingaddress'),(74,'Can change shipping address',19,'change_shippingaddress'),(75,'Can delete shipping address',19,'delete_shippingaddress'),(76,'Can view shipping address',19,'view_shippingaddress'),(77,'Can add order item',20,'add_orderitem'),(78,'Can change order item',20,'change_orderitem'),(79,'Can delete order item',20,'delete_orderitem'),(80,'Can view order item',20,'view_orderitem'),(81,'Can add review',21,'add_review'),(82,'Can change review',21,'change_review'),(83,'Can delete review',21,'delete_review'),(84,'Can view review',21,'view_review'),(85,'Can add address',22,'add_address'),(86,'Can change address',22,'change_address'),(87,'Can delete address',22,'delete_address'),(88,'Can view address',22,'view_address'),(89,'Can add address',21,'add_address'),(90,'Can change address',21,'change_address'),(91,'Can delete address',21,'delete_address'),(92,'Can view address',21,'view_address'),(93,'Can add report',22,'add_report'),(94,'Can change report',22,'change_report'),(95,'Can delete report',22,'delete_report'),(96,'Can view report',22,'view_report'),(97,'Can add review',19,'add_review'),(98,'Can change review',19,'change_review'),(99,'Can delete review',19,'delete_review'),(100,'Can view review',19,'view_review'),(101,'Can add comment bus arrangement detail',23,'add_commentbusarrangementdetail'),(102,'Can change comment bus arrangement detail',23,'change_commentbusarrangementdetail'),(103,'Can delete comment bus arrangement detail',23,'delete_commentbusarrangementdetail'),(104,'Can view comment bus arrangement detail',23,'view_commentbusarrangementdetail');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-30 22:56:45
