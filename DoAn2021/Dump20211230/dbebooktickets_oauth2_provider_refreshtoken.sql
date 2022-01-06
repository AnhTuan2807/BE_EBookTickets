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
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth2_provider_refreshtoken`
--

LOCK TABLES `oauth2_provider_refreshtoken` WRITE;
/*!40000 ALTER TABLE `oauth2_provider_refreshtoken` DISABLE KEYS */;
INSERT INTO `oauth2_provider_refreshtoken` VALUES (1,'zmWW1vhZwACpj4Ry8zVYKBSlzsQ7pv',1,1,2,'2021-09-19 16:24:32.804833','2021-09-19 16:24:32.804833',NULL),(6,'BdpE4W4iTQ7KfCriMc2Fh6bWO9Qfgq',6,1,1,'2021-10-05 20:08:59.015263','2021-10-05 20:08:59.015263',NULL),(7,'qilcGafrMAUk2KjCnjp4uLBHDHZ3aV',7,1,1,'2021-10-05 20:10:03.924077','2021-10-05 20:10:03.924077',NULL),(8,'CwrXhtvMtXIurfpbtca2cln5NRgBOI',8,1,1,'2021-10-05 20:13:46.651195','2021-10-05 20:13:46.651195',NULL),(9,'mOnrxtBp1m0wEbH6PcT4MzRfBHkxcL',9,1,1,'2021-10-05 20:36:49.426535','2021-10-05 20:36:49.426535',NULL),(10,'ZQWFwDET5M2OwfQAY8VcP5dk0iuYWI',10,1,1,'2021-10-05 20:37:11.680001','2021-10-05 20:37:11.680001',NULL),(11,'T1qcTAuFCALpAdIdNeBTsHkXxfUM76',11,1,1,'2021-10-05 20:40:28.073101','2021-10-05 20:40:28.073101',NULL),(12,'88SQvWSzEc0Jpn6JKLyjowsRyxMZLQ',12,1,1,'2021-10-05 20:44:35.542896','2021-10-05 20:44:35.542896',NULL),(13,'FSZemk7aEJlk31CNupWmkI7mVYm5LA',13,1,1,'2021-10-05 20:44:36.388104','2021-10-05 20:44:36.388104',NULL),(14,'e3mqyL7kS72fKIteIvtXQhutU3TzBz',14,1,1,'2021-10-05 20:44:36.701937','2021-10-05 20:44:36.701937',NULL),(15,'BOiEi8T7D4UZJTzk7F5joMwVkcFEEI',15,1,1,'2021-10-05 20:44:36.909348','2021-10-05 20:44:36.909348',NULL),(16,'ouyXZrtey2Lj0GJhDHRG9igc7j5IvF',16,1,1,'2021-10-05 20:47:17.207257','2021-10-05 20:47:17.207257',NULL),(17,'RHOSRGOWS9x2uEUXtjgEQ42JeiQUup',17,1,1,'2021-10-05 20:48:06.100229','2021-10-05 20:48:06.100229',NULL),(18,'Saq3nqtOFLDIWURx5h0xZTk3UcOrhN',18,1,1,'2021-10-05 20:48:39.721007','2021-10-05 20:48:39.721007',NULL),(19,'zifvtQ4qPxvnMD2yvzwZd7ACAko2oV',19,1,1,'2021-10-05 20:56:13.119085','2021-10-05 20:56:13.119085',NULL),(20,'LQrjPIt9xVp5Fd2Y2OcaaPC5vAUzdw',20,1,1,'2021-10-05 20:58:02.352666','2021-10-05 20:58:02.352666',NULL),(21,'2P9k6GA3O6kyXlkcYrGoydRk0gnR5R',21,1,1,'2021-10-05 20:58:03.389640','2021-10-05 20:58:03.389640',NULL),(22,'q4TOBSPn2QHwYb1iJLB3WrH8a2NKnK',22,1,1,'2021-10-05 20:58:03.963625','2021-10-05 20:58:03.963625',NULL),(23,'ZAYVVT3d5rYsalegv8gGfPAC8hNof5',23,1,1,'2021-10-05 20:59:17.237633','2021-10-05 20:59:17.237633',NULL),(24,'yb2R0wBOVLUPwfcnjQRECyjleinnzt',24,1,1,'2021-10-05 20:59:20.489260','2021-10-05 20:59:20.489260',NULL),(25,'mNdC1GzfW1fleC9jEiIQ1xdU2GrIRB',25,1,1,'2021-10-05 21:00:11.819309','2021-10-05 21:00:11.819309',NULL),(26,'qP9KvInkIVy2WRNd11S6wj3w9zkiVn',26,1,1,'2021-10-05 21:04:29.213263','2021-10-05 21:04:29.213263',NULL),(27,'6V4bOfNbgZHlHPz3NEiwxdQQuB7ljL',27,1,1,'2021-10-06 06:35:21.223534','2021-10-06 06:35:21.223534',NULL),(28,'I7Z7pBUl5iSEuAaXMlcCjilKUzxjIC',28,1,1,'2021-10-06 06:36:12.815542','2021-10-06 06:36:12.815542',NULL),(29,'sMVArtXsxL3jWdj1jpXGsyTDVgv8ss',29,1,1,'2021-10-06 06:42:15.574551','2021-10-06 06:42:15.574551',NULL),(30,'6nQS0GbDOkloheOggO17fwMf98uGdK',30,1,1,'2021-10-06 06:53:53.013428','2021-10-06 06:53:53.014430',NULL),(31,'8KacT6yw3JIBugILh7IokjTOy4hjts',31,1,2,'2021-10-06 07:02:09.677905','2021-10-06 07:02:09.677905',NULL),(32,'oUonyYuntiqhrRKpq4U17UcQDXJtmZ',32,1,2,'2021-10-06 07:02:50.423507','2021-10-06 07:02:50.423507',NULL),(33,'jWUEWxZOzi0jX5n0d3KMWWBaoCMXY5',33,1,2,'2021-10-06 07:07:24.220917','2021-10-06 07:07:24.220917',NULL),(34,'P1l86ggIFb81vMitUZq647EdiyEMS7',34,1,6,'2021-10-06 08:33:08.878042','2021-10-06 08:33:08.878042',NULL),(35,'zWAK2GfBYJFnYInFXzmuBhFZpISnFu',35,1,6,'2021-10-06 08:34:51.859430','2021-10-06 08:34:51.859430',NULL),(36,'BXkZa2AcaIdyWwk8GualtciP8FJjKR',36,1,1,'2021-10-06 08:35:15.049511','2021-10-06 08:35:15.049511',NULL),(37,'knb8Xhur7kl9RoJcCKmSxab8qmnfu9',37,1,1,'2021-10-06 08:42:43.803159','2021-10-06 08:42:43.803159',NULL),(38,'si7mMbUVPyJsQu3s2VZPLIDIGXplh8',38,1,1,'2021-10-06 09:13:42.129436','2021-10-06 09:13:42.129436',NULL),(39,'atwNosh101esWzNdE5lW9nnR1jE3Gx',39,1,1,'2021-10-06 09:14:23.010066','2021-10-06 09:14:23.010066',NULL),(40,'XL7g2VQrbbGG8z3O0B8AxKOBoyMx4f',40,1,1,'2021-10-06 09:15:26.314792','2021-10-06 09:15:26.314792',NULL),(41,'tfo2mwmj3lZ6BptGLXQDbdELGKZK5d',41,1,6,'2021-10-06 09:16:50.746693','2021-10-06 09:16:50.746693',NULL),(42,'N3youzxmmyf7tbq71qmlxLq1UZhJNj',42,1,1,'2021-10-06 09:20:31.884327','2021-10-06 09:20:31.884327',NULL),(43,'zalC7Nr2iExjM6wgN0SVFcPXhR9kMf',43,1,1,'2021-10-06 09:23:54.304783','2021-10-06 09:23:54.304783',NULL),(44,'Z2TqUNHD31xxAJmSR85y85jWqM3Cn9',44,1,1,'2021-10-06 09:32:56.592645','2021-10-06 09:32:56.592645',NULL),(45,'1qkp8UPe73hgyVSwbqlI4pXpGhbBFw',45,1,1,'2021-10-06 09:33:53.230366','2021-10-06 09:33:53.230366',NULL),(46,'nvgQlyzWcpzzI7xd93pi2CnuAFZLJh',46,1,1,'2021-10-06 09:34:48.536904','2021-10-06 09:34:48.536904',NULL),(47,'o08Oy2wJXNpZXu1Fvj90duajTyD8Rb',47,1,1,'2021-10-06 09:45:20.417492','2021-10-06 09:45:20.417492',NULL),(48,'exmBDueHImfbqT1DyaJiqoXYew5wWR',48,1,1,'2021-10-06 09:56:18.329818','2021-10-06 09:56:18.329818',NULL),(49,'rYLn4tP3uvU81pDEB6zfLI5liLNGLp',49,1,1,'2021-10-06 10:39:08.647926','2021-10-06 10:39:08.647926',NULL),(50,'6uD3mOfQnQvjDPUeUZzB893NfluQMJ',50,1,1,'2021-10-06 10:39:48.650294','2021-10-06 10:39:48.650294',NULL),(51,'9IhTXP5HtBGQUCX4ssnKUy7lozX2nJ',51,1,1,'2021-10-06 10:40:57.630217','2021-10-06 10:40:57.630217',NULL),(52,'71SRyxAupsxSDbxQFKwpfylTfPhZBU',52,1,1,'2021-10-06 10:46:33.448564','2021-10-06 10:46:33.448564',NULL),(53,'cO0j3PmjH8BQqCRVIUZ1XPUgAeUsHa',53,1,1,'2021-10-06 10:53:42.860137','2021-10-06 10:53:42.860137',NULL),(54,'1nYipWzX0mow57PtjefeQ5O2c7kvvs',54,1,1,'2021-10-06 11:02:37.097566','2021-10-06 11:02:37.097566',NULL),(55,'jnTdSteM7ExeiqWwLPvmgmORGQ0fXA',55,1,1,'2021-10-06 11:11:20.492622','2021-10-06 11:11:20.492622',NULL),(56,'gwgQgzYVyF1BniqSzRsDoW4HClt7SZ',56,1,1,'2021-10-06 11:17:21.469753','2021-10-06 11:17:21.469753',NULL),(57,'ECAMdQOlO7gIpaTFnuaX6mxmlfeNfi',57,1,1,'2021-10-06 11:24:42.827011','2021-10-06 11:24:42.827011',NULL),(58,'9v5xCWBeN10PJpa05lO6Iv2umoZTGz',58,1,1,'2021-10-06 11:40:10.007669','2021-10-06 11:40:10.008667',NULL),(59,'X282ZRUXe8BbcHrrFOUebawHiJCe4J',59,1,1,'2021-10-06 12:04:51.331520','2021-10-06 12:04:51.331520',NULL),(60,'KaYn7hBQs8d4Tmebv94FCm9wvWulTw',60,1,1,'2021-10-06 12:07:16.282800','2021-10-06 12:07:16.282800',NULL),(61,'WZ8EPaJQyUOF8tGmc36GYbzdhc6Fhh',61,1,1,'2021-10-06 12:07:33.770146','2021-10-06 12:07:33.770146',NULL),(62,'bUeag1Gcw3OjyuwE0mq5snCw81jrR5',62,1,1,'2021-10-06 12:08:02.834555','2021-10-06 12:08:02.834555',NULL),(63,'DZiWDtvViTEpgYzObNZI1onBMmX851',63,1,1,'2021-10-28 11:31:15.555637','2021-10-28 11:31:15.555637',NULL),(64,'Fi49Bu3eSM9H5lDaPVFjwFpL1wophB',64,1,7,'2021-10-28 11:40:17.968547','2021-10-28 11:40:17.968547',NULL),(65,'YmXMKqmjYHbfQePc2vAbSzZZLG8iyG',65,1,7,'2021-10-28 11:53:31.717157','2021-10-28 11:53:31.717157',NULL),(66,'HcUvLkIswCtEGsubdkpmxyJoosBSkC',66,1,1,'2021-10-28 12:24:48.422077','2021-10-28 12:24:48.422077',NULL),(67,'ju13TGXKDlKX5klOXAlWinUtjV0U0f',67,1,6,'2021-10-28 15:41:30.917907','2021-10-28 15:41:30.917907',NULL),(68,'i4BxEvsdIHlBm1avG7o4weKsbczjnM',68,1,1,'2021-10-29 19:13:34.384437','2021-10-29 19:13:34.384437',NULL),(69,'LFikwH1zwF7EGDB5zSUR0Qex4vAEc2',69,1,1,'2021-10-30 07:18:35.597569','2021-10-30 07:18:35.597569',NULL),(70,'vILpBa6KvkgpY3vDtN7n8vcz7q7rE1',70,1,1,'2021-10-30 09:38:50.330927','2021-10-30 09:38:50.330927',NULL),(71,'VlKXjMnjjXCKqZzzh1XzGLEfMRDnvO',71,1,1,'2021-10-30 14:58:50.360161','2021-10-30 14:58:50.360161',NULL),(72,'DTDutW1CAAK31vyfg23xHZwcihU1On',72,1,1,'2021-11-09 09:31:33.040954','2021-11-09 09:31:33.040954',NULL),(73,'LXOWdL01I4gaiVv8qsJHENr9kTPc1W',73,1,1,'2021-11-09 10:32:07.196871','2021-11-09 10:32:07.196871',NULL),(74,'7hWnlzocrdgHUnmmvQs5iXpR9xwEJz',74,1,1,'2021-11-09 11:11:09.439382','2021-11-09 11:11:09.439382',NULL),(75,'uTmcTlZQvmBW5rbBZSTDYE2FGlfLCw',75,1,1,'2021-11-09 15:10:50.608261','2021-11-09 15:10:50.608261',NULL),(76,'5duijvRe6JijkaSzmz9JMZUSrU9HIF',76,1,1,'2021-11-09 16:56:18.513820','2021-11-09 16:56:18.513820',NULL),(77,'cMa4o9lAI1zhuRV6FQHoZPjfd52XLm',77,1,1,'2021-11-15 09:16:55.824162','2021-11-15 09:16:55.824162',NULL),(78,'WTtQLdmPKgcakxjUP7dyjqzqc2FfSW',78,1,1,'2021-11-15 09:40:23.513558','2021-11-15 09:40:23.513558',NULL),(79,'NTtSHv9lj1R2Ip9SFHEEmP4sy3cGgA',79,1,1,'2021-11-15 09:47:23.369844','2021-11-15 09:47:23.369844',NULL),(80,'RAQTnJeVTSm63U2w2K96MPAoGgHE3k',80,1,1,'2021-11-15 09:47:24.239841','2021-11-15 09:47:24.240874',NULL),(81,'Tkt4pO9WmNkiRHRRYpf6RWQkON7whu',81,1,1,'2021-11-15 09:47:27.393917','2021-11-15 09:47:27.393917',NULL),(82,'T1XQsI5cHqYR8eGS8Jh8f4NBnk4x3j',82,1,1,'2021-11-27 11:01:56.837338','2021-11-27 11:01:56.837338',NULL),(83,'Bz6xWzA9cbs5ifJEwXHmbaD0WmWYhY',83,1,1,'2021-12-07 16:04:44.812730','2021-12-07 16:04:44.812730',NULL),(84,'k68Flxs8QkllT1uyaVt8DT76ZG2cfN',84,1,1,'2021-12-13 14:19:56.162256','2021-12-13 14:19:56.162256',NULL),(85,'OUevBewG6DCGaLkEWLwM7sSy9EKYiy',85,1,1,'2021-12-13 14:35:09.690317','2021-12-13 14:35:09.690317',NULL),(86,'9ZPFIFNmwvGotDGBPt7UjD1Rdm18Bu',86,1,1,'2021-12-13 14:53:46.419104','2021-12-13 14:53:46.419104',NULL),(87,'qSVFBuyniEXooIw6bJXKXXXgy7trKm',87,1,1,'2021-12-13 14:54:08.337854','2021-12-13 14:54:08.337854',NULL),(88,'Acm4In2hQK0OKA2yhBjbBjZqC5bG8F',88,1,1,'2021-12-19 16:01:12.940233','2021-12-19 16:01:12.940233',NULL),(89,'Hv4su4CjzDmyFEVelo5utC0onGLYFa',89,1,1,'2021-12-19 19:09:01.514257','2021-12-19 19:09:01.514257',NULL),(90,'wV3xx43iG5cechI0FNFxxCN1FY3skL',90,1,1,'2021-12-21 14:16:39.717126','2021-12-21 14:16:39.717126',NULL),(91,'xD4Keo2mJ8uJNyRJgoNuNvNgUUGNi3',91,1,1,'2021-12-22 14:42:57.762999','2021-12-22 14:42:57.762999',NULL),(92,'M9rOh4Jr1ss8monJglAd6AxdUnpTkJ',92,1,1,'2021-12-25 16:52:35.472067','2021-12-25 16:52:35.472067',NULL),(93,'cPgM23I86qHgShSvRxHbPkwZMcd16c',93,1,1,'2021-12-25 17:50:04.637275','2021-12-25 17:50:04.637275',NULL),(94,'Yi2ELbGnpWd9OxxdmPyxtOFgGDiP7h',94,1,1,'2021-12-26 17:01:41.471130','2021-12-26 17:01:41.471130',NULL),(95,'UOPSzfEwTmTBjYTcQAerYrvZmcrzmc',95,1,1,'2021-12-26 17:38:01.618301','2021-12-26 17:38:01.618301',NULL),(96,'vcAQtFnjeD89vIDQjGAZgntyTeCTUB',96,1,1,'2021-12-26 17:38:12.437337','2021-12-26 17:38:12.437337',NULL),(97,'Sd69wPUWiDQSr1zIfeskjd4eyVwfsi',97,1,1,'2021-12-27 12:14:35.418215','2021-12-27 12:14:35.418215',NULL),(98,'F9WxVovneoME6tKYCYhjM6RwVbs0MG',98,1,1,'2021-12-27 12:14:35.415216','2021-12-27 12:14:35.416186',NULL),(99,'BmbBLtcPZSuxoGn3rs1aVNdOUjgsLG',99,1,1,'2021-12-27 12:14:37.815789','2021-12-27 12:14:37.815789',NULL),(100,'w8NB3MyL8lJ2UAh4fieCbfITlJTO0C',100,1,1,'2021-12-29 14:23:41.812024','2021-12-29 14:23:41.812024',NULL),(101,'5PUo829uAnBlnMEwEPLpVh5mfgegBG',101,1,1,'2021-12-29 15:02:32.843283','2021-12-29 15:02:32.843283',NULL),(102,'LfO9gcfDz7IuC3fxAMbhmHgBlgj6fM',102,1,1,'2021-12-30 13:57:36.566456','2021-12-30 13:57:36.566456',NULL),(103,'Ysw4y4LnkcfkyFReipiAzXfhzLLCpm',103,1,1,'2021-12-30 14:11:02.491891','2021-12-30 14:11:02.492892',NULL),(104,'ypRrmhvQFzqPYUMvIKjJJQCQt1uixy',104,1,1,'2021-12-30 15:32:51.526662','2021-12-30 15:32:51.526662',NULL),(105,'A4ct2yR3zaKV1a5HjocLMzrDrcrK7n',105,1,1,'2021-12-30 15:33:09.111552','2021-12-30 15:33:09.111552',NULL);
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

-- Dump completed on 2021-12-30 22:56:48
