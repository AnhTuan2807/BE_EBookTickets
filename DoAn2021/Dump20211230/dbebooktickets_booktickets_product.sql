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
INSERT INTO `booktickets_product` VALUES ('Đảo Phú Quốc',300.00,1,'ban2.jpg','Phú Quốc, thiên đường nhiệt đới nằm trong Vịnh Thái Lan, là hòn đảo lớn nhất của Việt Nam nằm ở phía Tây Nam, cũng là hòn đảo lớn nhất trong quần thể 22 đảo nhỏ to khác nhau tại đây. Phú Quốc cùng với các hòn đảo khác tạo thành huyện đảo Phú Quốc thuộc tỉnh Kiên Giang.\r\n\r\nPhú Quốc có diện tích 589,23 km², trải dài từ vĩ độ 9°53′ đến 10°28′ độ vĩ bắc và kinh độ từ 103°49′ đến 104°05′ độ kinh đông, nằm cách thành phố Rạch Giá 120 km và cách thành phố Hà Tiên 45 km. Năm 2006, Khu dự trữ sinh quyển ven biển và biển đảo Kiên Giang bao gồm cả Phú Quốc được UNESCO công nhận là khu dự trữ sinh quyển thế giới.\r\n\r\nPhú Quốc, từ lâu, đã trở nên nổi tiếng với khách du lịch khắp mọi miền đất nước và quốc tế. Điều này không chỉ vì Phú Quốc là một hòn đảo xinh đẹp mà nơi đây còn chứa đựng nhiều điều bí ẩn mà không phải ai cũng có thể khám phá hết được.','2021-10-21 22:01:00.000000','2021-10-21 15:01:16.060722','2021-12-28 14:52:37.562235',1,1,5.00,1,2),('Cầu Vàng Đà Nẵng',300.00,1,'ban3.jpg','Cầu Vàng Đà Nẵng là cây cầu đặc biệt, tựa như tấm vải lụa xinh đẹp vắt ngang chừng núi Chúa, thu hút đông đảo du khách trong nước và thế giới đến khám phá trong nhiều năm qua.\r\n\r\nCầu Vàng Đà Nẵng nổi bật với lối kiến trúc sáng tạo, độc đáo, trở thành điểm check-in cực “hot” tại thành phố biển xinh đẹp Đà Nẵng. Cùng khám phá tất tần tật những thông tin thú vị, độc đáo về cây cầu nổi tiếng, nằm trong top 10 kỳ quan mới của thế giới 2021 này.','2021-10-22 22:29:00.000000','2021-10-22 15:29:26.835734','2021-12-28 14:52:26.829594',1,2,4.00,7,6),('Vịnh Hạ Long',300.00,1,'ban1.jpg','Vịnh Hạ Long được Unesco nhiều lần công nhận là Di sản thiên nhiên của Thế giới với hàng nghìn hòn đảo được làm nên bởi tạo hoá kỳ vĩ và sống động. Vịnh Hạ Long có phong cảnh tuyệt đẹp nên nơi đây là một điểm du lịch rất hấp dẫn với du khách trong nước và quốc tế.\r\n\r\nVịnh Hạ Long là một di sản độc đáo bởi địa danh này chứa đựng những dấu tích quan trọng trong quá trình hình thành và phát triển lịch sử trái đất, là cái nôi cư trú của người Việt cổ, đồng thời là tác phẩm nghệ thuật tạo hình vĩ đại của thiên nhiên với sự hiện diện của hàng nghìn đảo đá muôn hình vạn trạng, với nhiều hang động kỳ thú quần tụ thành một thế giới vừa sinh động vừa huyền bí. Bên cạnh đó, vịnh Hạ Long còn là nơi tập trung đa dạng sinh học cao với những hệ sinh thái điển hình cùng với hàng nghìn loài động thực vật vô cùng phong phú, đa dạng. Nơi đây còn gắn liền với những giá trị văn hóa – lịch sử hào hùng của dân tộc.','2021-10-22 22:29:00.000000','2021-10-22 15:29:38.658742','2021-12-28 14:52:17.374466',1,3,3.00,5,6);
/*!40000 ALTER TABLE `booktickets_product` ENABLE KEYS */;
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
