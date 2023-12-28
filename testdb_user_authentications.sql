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
-- Table structure for table `user_authentications`
--

DROP TABLE IF EXISTS `user_authentications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_authentications` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(50) NOT NULL,
  `user_type` bigint DEFAULT '2',
  `invalid_attempt` bigint DEFAULT '0',
  `holding_datetime` datetime(3) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT '1',
  `is_admin` tinyint(1) DEFAULT '0',
  `organization_id` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  KEY `idx_user_authentications_deleted_at` (`deleted_at`),
  KEY `fk_organizations_user_authentications` (`organization_id`),
  CONSTRAINT `fk_organizations_user_authentications` FOREIGN KEY (`organization_id`) REFERENCES `organizations` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_authentications`
--

LOCK TABLES `user_authentications` WRITE;
/*!40000 ALTER TABLE `user_authentications` DISABLE KEYS */;
INSERT INTO `user_authentications` VALUES (2,'2023-09-22 12:02:35.920','2023-09-22 12:02:35.920',NULL,'username001','sadsdfd',2,0,'2023-09-22 12:02:35.920',1,0,1),(3,'2023-09-22 12:03:01.040','2023-09-22 12:03:01.040',NULL,'username002','sadsdfd',2,0,'2023-09-22 12:03:01.040',1,0,1),(4,'2023-09-22 12:03:17.388','2023-09-22 12:03:17.388',NULL,'username003','sadsdfd',2,0,'2023-09-22 12:03:17.388',1,0,1),(5,'2023-09-22 12:03:38.348','2023-11-07 17:02:50.228',NULL,'username004','sadsdfd',2,0,'2023-09-22 12:03:38.348',1,0,1),(6,'2023-09-22 12:04:01.287','2023-09-22 12:04:01.287',NULL,'username005','sadsdfd',2,0,'2023-09-22 12:04:01.287',1,0,1),(7,'2023-09-22 12:04:18.126','2023-09-22 12:04:18.126',NULL,'username006','sadsdfd',2,0,'2023-09-22 12:04:18.126',1,0,1),(8,'2023-09-22 12:04:34.543','2023-09-22 12:04:34.543',NULL,'username007','sadsdfd',2,0,'2023-09-22 12:04:34.543',1,0,1),(9,'2023-09-22 12:05:05.419','2023-09-22 12:05:05.419',NULL,'username008','sadsdfd',2,0,'2023-09-22 12:05:05.419',1,0,1),(10,'2023-09-22 12:06:27.165','2023-09-22 12:06:27.165',NULL,'username009','sadsdfd',2,0,'2023-09-22 12:06:27.165',1,0,1),(11,'2023-09-22 12:06:55.074','2023-09-22 12:06:55.074',NULL,'username010','sadsdfd',2,0,'2023-09-22 12:06:55.074',1,0,1),(12,'2023-09-26 18:41:56.010','2023-09-26 18:41:56.010',NULL,'username011','sadsdfd',2,0,'2023-09-26 18:41:56.010',1,0,1),(13,'2023-09-26 18:42:07.964','2023-09-26 18:42:07.964',NULL,'username012','sadsdfd',2,0,'2023-09-26 18:42:07.964',1,0,1),(14,'2023-09-26 18:43:51.890','2023-09-26 18:43:51.890',NULL,'username013','sadsdfd',2,0,'2023-09-26 18:43:51.890',1,0,1),(15,'2023-09-26 18:44:03.466','2023-09-26 18:44:03.466',NULL,'username014','sadsdfd',2,0,'2023-09-26 18:44:03.466',1,0,1),(21,'2023-10-09 12:43:48.950','2023-10-09 12:43:48.950',NULL,'username017','sadsdfd',2,0,'2023-10-09 12:43:48.950',1,0,1),(22,'2023-10-09 12:46:58.447','2023-10-09 12:46:58.447',NULL,'username018','sadsdfd',2,0,'2023-10-09 12:46:58.447',1,0,1),(23,'2023-10-20 17:24:59.299','2023-10-20 17:24:59.299',NULL,'username016','sadsdfd',2,0,'2023-10-20 17:24:59.299',1,0,1),(24,'2023-10-20 17:49:00.628','2023-10-20 17:49:00.628',NULL,'username015','sadsdfd',2,0,'2023-10-20 17:49:00.628',1,0,1),(27,'2023-10-20 19:20:42.370','2023-10-20 19:20:42.370',NULL,'username019','sadsdfd',2,0,'2023-10-20 19:20:42.370',1,0,1),(28,'2023-10-26 14:01:05.324','2023-10-26 14:01:05.324',NULL,'username020','sadsdfd',2,0,'2023-10-26 14:01:05.324',1,0,1),(29,'2023-11-10 16:51:32.990','2023-11-10 16:51:32.990',NULL,'username023','sadsdfd',2,0,'2023-11-10 16:51:32.990',1,0,1),(31,'2023-11-23 18:01:43.124','2023-11-23 18:01:43.124',NULL,'username024','sadsdfd',2,0,'2023-11-23 18:01:43.124',1,0,1),(34,'2023-12-18 14:03:46.327','2023-12-25 18:55:10.006',NULL,'prateek','prateek',1,0,'2023-12-25 18:55:10.006',1,0,1),(35,'2023-12-20 14:26:04.641','2023-12-20 14:26:04.641',NULL,'abhishek','abhishek',1,0,'2023-12-20 14:26:04.641',1,1,1),(36,'2023-12-20 21:17:25.035','2023-12-20 21:17:25.035',NULL,'username025','username025',2,0,'2023-12-20 21:17:25.035',1,0,1);
/*!40000 ALTER TABLE `user_authentications` ENABLE KEYS */;
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
