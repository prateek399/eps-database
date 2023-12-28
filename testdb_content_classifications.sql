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
-- Table structure for table `content_classifications`
--

DROP TABLE IF EXISTS `content_classifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `content_classifications` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `description` varchar(1000) DEFAULT '',
  `relation_of_data` bigint DEFAULT '0',
  `custom` bigint DEFAULT '1',
  `organization_id` bigint unsigned DEFAULT NULL,
  `class_super_id` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `idx_content_classifications_deleted_at` (`deleted_at`),
  KEY `fk_organizations_content_classifications` (`organization_id`),
  KEY `fk_classification_super_classes_content_classifications` (`class_super_id`),
  CONSTRAINT `fk_classification_super_classes_content_classifications` FOREIGN KEY (`class_super_id`) REFERENCES `classification_super_classes` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_organizations_content_classifications` FOREIGN KEY (`organization_id`) REFERENCES `organizations` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `content_classifications`
--

LOCK TABLES `content_classifications` WRITE;
/*!40000 ALTER TABLE `content_classifications` DISABLE KEYS */;
INSERT INTO `content_classifications` VALUES (1,'2023-09-22 12:48:52.717','2023-10-24 14:19:40.804',NULL,'Content 001','asfdgzfxhgchjk.h,gmfgdsgvsdvsdbsfbdf',1,1,1,50),(2,'2023-09-22 12:53:49.816','2023-10-24 14:18:14.220',NULL,'Content 002','asfdgzfxhgchjk.h,gmfgdsgvsdvsdbsfbdf',1,1,1,51),(3,'2023-09-22 12:59:45.300','2023-09-22 12:59:45.300',NULL,'Content 003','This is sample Content Classification for testing',2,1,1,52),(4,'2023-09-22 13:00:22.576','2023-09-22 13:00:22.576',NULL,'Content 004','This is sample Content Classification for testing',2,1,1,53),(5,'2023-09-22 13:00:56.495','2023-09-22 13:00:56.495',NULL,'Content 005','This is sample Content Classification for testing',2,1,1,54),(6,'2023-09-22 13:02:02.115','2023-09-22 13:02:02.115',NULL,'Content 006','This is sample Content Classification for testing',2,1,1,55),(7,'2023-09-22 13:02:32.220','2023-09-22 13:02:32.220',NULL,'Content 007','This is sample Content Classification for testing',2,1,1,56),(8,'2023-09-22 13:04:11.616','2023-09-22 13:04:11.616',NULL,'Content 008','This is sample Content Classification for testing',2,1,1,57),(9,'2023-09-22 13:05:04.800','2023-09-22 13:05:04.800',NULL,'Content 009','This is sample Content Classification for testing',2,1,1,58),(10,'2023-09-22 13:05:29.181','2023-09-22 13:05:29.181',NULL,'Content 010','This is sample Content Classification for testing',2,1,1,59),(11,'2023-09-25 07:39:04.808','2023-09-25 07:39:04.808',NULL,'Content 011','This is sample Content Classification for testing',2,1,1,75);
/*!40000 ALTER TABLE `content_classifications` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-28 14:04:32
