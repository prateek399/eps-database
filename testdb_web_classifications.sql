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
-- Table structure for table `web_classifications`
--

DROP TABLE IF EXISTS `web_classifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `web_classifications` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `description` varchar(1000) DEFAULT '',
  `custom` bigint DEFAULT '1',
  `organization_id` bigint unsigned DEFAULT NULL,
  `class_super_id` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `idx_web_classifications_deleted_at` (`deleted_at`),
  KEY `fk_organizations_web_classifications` (`organization_id`),
  KEY `fk_classification_super_classes_web_classifications` (`class_super_id`),
  CONSTRAINT `fk_classification_super_classes_web_classifications` FOREIGN KEY (`class_super_id`) REFERENCES `classification_super_classes` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_organizations_web_classifications` FOREIGN KEY (`organization_id`) REFERENCES `organizations` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `web_classifications`
--

LOCK TABLES `web_classifications` WRITE;
/*!40000 ALTER TABLE `web_classifications` DISABLE KEYS */;
INSERT INTO `web_classifications` VALUES (1,'2023-09-22 12:18:06.875','2023-09-22 12:18:06.875',NULL,'Web 001','This is the Web Classification of Testing Only',1,1,21),(2,'2023-09-22 12:18:20.841','2023-09-22 12:18:20.841',NULL,'Web 002','This is the Web Classification of Testing Only',1,1,22),(3,'2023-09-22 12:18:36.467','2023-09-22 12:18:36.467',NULL,'Web 003','This is the Web Classification of Testing Only',1,1,23),(4,'2023-09-22 12:19:02.005','2023-09-22 12:19:02.005',NULL,'Web 004','This is the Web Classification of Testing Only',1,1,24),(5,'2023-09-22 12:20:24.792','2023-09-22 12:20:24.792',NULL,'Web 005','This is the Web Classification of Testing Only',1,1,25),(6,'2023-09-22 12:26:39.679','2023-09-22 12:26:39.679',NULL,'Web 006','This is the Web Classification of Testing Only',1,1,26),(7,'2023-09-22 12:27:27.271','2023-09-22 12:27:27.271',NULL,'Web 007','This is the Web Classification of Testing Only',1,1,27),(8,'2023-09-22 12:27:52.200','2023-09-22 12:27:52.200',NULL,'Web 008','This is the Web Classification of Testing Only',1,1,28),(9,'2023-09-22 12:28:32.700','2023-09-22 12:28:32.700',NULL,'Web 009','This is the Web Classification of Testing Only',1,1,29),(10,'2023-09-22 12:29:33.836','2023-09-22 12:29:33.836',NULL,'Web 010','This is the Web Classification of Testing Only',1,1,30),(11,'2023-09-25 07:11:50.783','2023-09-25 07:11:50.783',NULL,'Web 011','This is the Web Classification of Testing Only',1,1,72);
/*!40000 ALTER TABLE `web_classifications` ENABLE KEYS */;
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
