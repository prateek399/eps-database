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
-- Table structure for table `ip_classifications`
--

DROP TABLE IF EXISTS `ip_classifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ip_classifications` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `description` varchar(1000) DEFAULT '',
  `type` bigint DEFAULT '1',
  `start_ip` varchar(191) DEFAULT '0.0.0.0',
  `end_ip` varchar(191) DEFAULT '0.0.0.0',
  `subnet_mask` varchar(20) DEFAULT '0',
  `ip_list` varchar(1000) DEFAULT '0.0.0.0',
  `custom` bigint DEFAULT '1',
  `organization_id` bigint unsigned DEFAULT NULL,
  `class_super_id` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `idx_ip_classifications_deleted_at` (`deleted_at`),
  KEY `fk_organizations_ip_classifications` (`organization_id`),
  KEY `fk_classification_super_classes_ip_classifications` (`class_super_id`),
  CONSTRAINT `fk_classification_super_classes_ip_classifications` FOREIGN KEY (`class_super_id`) REFERENCES `classification_super_classes` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_organizations_ip_classifications` FOREIGN KEY (`organization_id`) REFERENCES `organizations` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ip_classifications`
--

LOCK TABLES `ip_classifications` WRITE;
/*!40000 ALTER TABLE `ip_classifications` DISABLE KEYS */;
INSERT INTO `ip_classifications` VALUES (1,'2023-09-22 12:34:22.476','2023-09-22 12:34:22.476',NULL,'Ip 002','This is the Sample IP Classification for Testing',4,'0.0.0.0','0.0.0.0','0','123.55.85.34,123.155.85.34,123.125.85.34,123.65.85.34',1,1,31),(2,'2023-09-22 12:34:30.249','2023-09-22 12:34:30.249',NULL,'Ip 003','This is the Sample IP Classification for Testing',4,'0.0.0.0','0.0.0.0','0','123.55.85.34,123.155.85.34,123.125.85.34,123.65.85.34',1,1,32),(3,'2023-09-22 12:34:38.838','2023-09-22 12:34:38.838',NULL,'Ip 004','This is the Sample IP Classification for Testing',2,'123.255.78.42','123.255.85.34','0','0.0.0.0',1,1,33),(4,'2023-09-22 12:35:14.441','2023-10-23 15:29:15.617',NULL,'Ip 005','This is the Sample IP Classification for Testing',4,'0.0.0.0','0.0.0.0','0','123.66.78.47,123.66.78.48,123.66.78.49,123.66.78.50',1,1,34),(5,'2023-09-22 12:35:30.632','2023-09-22 12:35:30.632',NULL,'Ip 006','This is the Sample IP Classification for Testing',3,'123.255.78.42','0.0.0.0','123.65.85.34','0.0.0.0',1,1,35),(6,'2023-09-22 12:36:17.127','2023-09-22 12:36:17.127',NULL,'Ip 007','This is the Sample IP Classification for Testing',2,'123.211.78.42','123.255.85.34','0','0.0.0.0',1,1,36),(7,'2023-09-22 12:36:44.879','2023-09-22 12:36:44.879',NULL,'Ip 008','This is the Sample IP Classification for Testing',2,'123.115.78.22','123.155.85.34','0','0.0.0.0',1,1,37),(8,'2023-09-22 12:36:52.894','2023-09-22 12:36:52.894',NULL,'Ip 009','This is the Sample IP Classification for Testing',3,'123.115.78.22','0.0.0.0','123.65.85.34','0.0.0.0',1,1,38),(9,'2023-09-22 12:37:05.472','2023-09-22 12:37:05.472',NULL,'Ip 010','This is the Sample IP Classification for Testing',4,'0.0.0.0','0.0.0.0','0','123.55.85.34,123.155.85.34,123.125.85.34,123.65.85.34',1,1,39),(10,'2023-09-25 07:22:50.281','2023-09-25 07:22:50.281',NULL,'Ip 011','This is the Sample IP Classification for Testing',2,'123.115.78.22','123.155.85.34','0','0.0.0.0',1,1,73);
/*!40000 ALTER TABLE `ip_classifications` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-28 14:04:31
