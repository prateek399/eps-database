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
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `country_code` varchar(2) DEFAULT NULL,
  `phone` bigint DEFAULT NULL,
  `email` varchar(191) DEFAULT NULL,
  `dob` datetime(3) DEFAULT NULL,
  `os` bigint DEFAULT '0',
  `mac_address` longtext,
  `organization_id` bigint unsigned DEFAULT NULL,
  `user_authentication_id` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `phone` (`phone`),
  UNIQUE KEY `email` (`email`),
  KEY `idx_users_deleted_at` (`deleted_at`),
  KEY `fk_user_authentications_users` (`user_authentication_id`),
  KEY `fk_organizations_users` (`organization_id`),
  CONSTRAINT `fk_organizations_users` FOREIGN KEY (`organization_id`) REFERENCES `organizations` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_user_authentications_users` FOREIGN KEY (`user_authentication_id`) REFERENCES `user_authentications` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (3,'2023-09-22 12:03:17.388','2023-09-22 12:03:17.388',NULL,'username003','IN',9473812913,'username003@gmail.com','2004-09-12 00:00:00.000',2,'',1,4),(4,'2023-09-22 12:03:38.348','2023-11-22 03:07:36.428',NULL,'username004','IN',9473812923,'username004@gmail.com','2004-09-12 00:00:00.000',2,'',1,5),(5,'2023-09-22 12:04:01.287','2023-09-22 12:04:01.287',NULL,'username005','IN',9473812123,'username005@gmail.com','2004-09-12 00:00:00.000',2,'',1,6),(6,'2023-09-22 12:04:18.126','2023-09-22 12:04:18.126',NULL,'username006','IN',9473812124,'username006@gmail.com','2004-09-12 00:00:00.000',2,'',1,7),(7,'2023-09-22 12:04:34.543','2023-09-22 12:04:34.543',NULL,'username007','IN',9473812127,'username007@gmail.com','2004-09-12 00:00:00.000',2,'',1,8),(8,'2023-09-22 12:05:05.419','2023-09-22 12:05:05.419',NULL,'username008','IN',9473812121,'username008@gmail.com','2004-09-12 00:00:00.000',2,'',1,9),(9,'2023-09-22 12:06:27.165','2023-09-22 12:06:27.165',NULL,'username009','IN',9473812628,'username009@gmail.com','2004-09-12 00:00:00.000',2,'',1,10),(10,'2023-09-22 12:06:55.075','2023-09-22 12:06:55.075',NULL,'username010','IN',9473812621,'username010@gmail.com','2004-09-12 00:00:00.000',2,'',1,11),(11,'2023-09-26 18:41:56.010','2023-09-26 18:41:56.010',NULL,'username011','IN',9473412621,'username011@gmail.com','2004-09-12 05:30:00.000',2,'',1,12),(12,'2023-09-26 18:42:07.964','2023-09-26 18:42:07.964',NULL,'username012','IN',9473412121,'username012@gmail.com','2004-09-12 05:30:00.000',2,'',1,13),(13,'2023-09-26 18:43:51.891','2023-09-26 18:43:51.891',NULL,'username013','IN',9472412121,'username013@gmail.com','2004-09-12 05:30:00.000',2,'',1,14),(14,'2023-09-26 18:44:03.466','2023-09-26 18:44:03.466',NULL,'username014','IN',9472412421,'username014@gmail.com','2004-09-12 05:30:00.000',2,'',1,15),(19,'2023-10-09 12:43:48.951','2023-10-10 13:52:44.504',NULL,'username017','IN',9472412254,'username017@gmail.com','2004-09-12 05:30:00.000',2,'',1,21),(20,'2023-10-09 12:46:58.448','2023-10-09 12:46:58.448',NULL,'username018','IN',9472412257,'username018@gmail.com','2004-09-12 05:30:00.000',0,'',1,22),(21,'2023-10-20 17:24:59.300','2023-10-20 17:24:59.300',NULL,'username016','IN',9472412451,'username016@gmail.com','2004-09-12 05:30:00.000',2,'',1,23),(22,'2023-10-20 17:49:00.628','2023-10-20 17:49:00.628',NULL,'username015','IN',9472412456,'username015@gmail.com','2004-09-12 05:30:00.000',2,'',1,24),(25,'2023-10-20 19:20:42.370','2023-10-20 19:20:42.370',NULL,'username019','IN',9472412354,'username019@gmail.com','2004-09-12 05:30:00.000',2,'',1,27),(26,'2023-10-26 14:01:05.324','2023-10-26 14:01:05.324',NULL,'username020','IN',9472412364,'username020@gmail.com','2004-09-12 05:30:00.000',2,'',1,28),(27,'2023-11-10 16:51:32.991','2023-11-10 16:51:32.991',NULL,'username023','IN',9472462369,'username023@gmail.com','2004-09-12 05:30:00.000',2,'',1,29),(29,'2023-11-23 18:01:43.124','2023-11-23 18:01:43.124',NULL,'username024','IN',9472462339,'username024@gmail.com','2004-09-12 05:30:00.000',2,'',1,31),(30,'2023-12-20 21:17:25.035','2023-12-21 12:26:10.226',NULL,'username025','IN',9472462349,'username025@gmail.com','2004-09-12 05:30:00.000',6,'',1,36);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
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
