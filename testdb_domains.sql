-- MySQL dump 10.13  Distrib 8.0.32, for Linux (x86_64)
--
-- Host: localhost    Database: testdb
-- ------------------------------------------------------
-- Server version	8.0.35-0ubuntu0.23.04.1

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
-- Table structure for table `domains`
--

DROP TABLE IF EXISTS `domains`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `domains` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `domain_name` varchar(200) DEFAULT NULL,
  `web_classification_id` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_domains_deleted_at` (`deleted_at`),
  KEY `fk_web_classifications_domains` (`web_classification_id`),
  CONSTRAINT `fk_web_classifications_domains` FOREIGN KEY (`web_classification_id`) REFERENCES `web_classifications` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `domains`
--

LOCK TABLES `domains` WRITE;
/*!40000 ALTER TABLE `domains` DISABLE KEYS */;
INSERT INTO `domains` VALUES (1,'2023-09-22 12:18:06.876','2023-09-22 12:18:06.876',NULL,'google.com',1),(2,'2023-09-22 12:18:06.876','2023-09-22 12:18:06.876',NULL,'gmail.com',1),(3,'2023-09-22 12:18:06.876','2023-09-22 12:18:06.876',NULL,'youtube.com',1),(4,'2023-09-22 12:18:20.842','2023-09-22 12:18:20.842',NULL,'google.com',2),(5,'2023-09-22 12:18:36.467','2023-09-22 12:18:36.467',NULL,'gmail.com',3),(6,'2023-09-22 12:18:36.467','2023-09-22 12:18:36.467',NULL,'youtube.com',3),(7,'2023-09-22 12:19:02.006','2023-09-22 12:19:02.006',NULL,'trello.com',4),(8,'2023-09-22 12:19:02.006','2023-09-22 12:19:02.006',NULL,'golang.com',4),(9,'2023-09-22 12:19:02.006','2023-09-22 12:19:02.006',NULL,'youtube.com',4),(10,'2023-09-22 12:20:24.792','2023-09-22 12:20:24.792',NULL,'chat.openai.com',5),(11,'2023-09-22 12:20:24.792','2023-09-22 12:20:24.792',NULL,'golang.com',5),(12,'2023-09-22 12:20:24.792','2023-09-22 12:20:24.792',NULL,'youtube.com',5),(13,'2023-09-22 12:26:39.680','2023-09-22 12:26:39.680',NULL,'chat.openai.com',6),(14,'2023-09-22 12:26:39.680','2023-09-22 12:26:39.680',NULL,'https://stackoverflow.com/questions/4371/how-do-i-retrieve-my-mysql-username-and-password',6),(15,'2023-09-22 12:26:39.680','2023-09-22 12:26:39.680',NULL,'youtube.com',6),(16,'2023-09-22 12:27:27.271','2023-09-22 12:27:27.271',NULL,'chat.openai.com',7),(17,'2023-09-22 12:27:27.271','2023-09-22 12:27:27.271',NULL,'https://stackoverflow.com/questions/4371/how-do-i-retrieve-my-mysql-username-and-password',7),(18,'2023-09-22 12:27:27.271','2023-09-22 12:27:27.271',NULL,'https://gorm.io/index.html',7),(19,'2023-09-22 12:27:52.200','2023-09-22 12:27:52.200',NULL,'chat.openai.com',8),(20,'2023-09-22 12:27:52.200','2023-09-22 12:27:52.200',NULL,'https://miro.com/app/board/uXjVMtpXl2I=/?share_link_id=202851781473',8),(21,'2023-09-22 12:27:52.200','2023-09-22 12:27:52.200',NULL,'https://gorm.io/index.html',8),(22,'2023-09-22 12:28:32.700','2023-09-22 12:28:32.700',NULL,'https://miro.com/app/board/uXjVMrCIkj4=/?share_link_id=117328006530',9),(23,'2023-09-22 12:28:32.700','2023-09-22 12:28:32.700',NULL,'https://gitlab.httpcart.com/PrateekArya',9),(24,'2023-09-22 12:28:32.700','2023-09-22 12:28:32.700',NULL,'https://gorm.io/index.html',9),(25,'2023-09-22 12:29:33.836','2023-09-22 12:29:33.836',NULL,'https://stackoverflow.com/questions/39281594/error-1698-28000-access-denied-for-user-rootlocalhost',10),(26,'2023-09-22 12:29:33.836','2023-09-22 12:29:33.836',NULL,'https://gitlab.httpcart.com/PrateekArya',10),(27,'2023-09-22 12:29:33.836','2023-09-22 12:29:33.836',NULL,'https://www.geeksforgeeks.org/how-to-install-mysql-workbench-on-ubuntu/',10),(28,'2023-09-25 07:11:50.783','2023-09-25 07:11:50.783',NULL,'https://stackoverflow.com/questions/39281594/error-1698-28000-access-denied-for-user-rootlocalhost',11),(29,'2023-09-25 07:11:50.783','2023-09-25 07:11:50.783',NULL,'https://gitlab.httpcart.com/PrateekArya',11),(30,'2023-09-25 07:11:50.783','2023-09-25 07:11:50.783',NULL,'https://www.geeksforgeeks.org/how-to-install-mysql-workbench-on-ubuntu/',11);
/*!40000 ALTER TABLE `domains` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-28 14:04:30
