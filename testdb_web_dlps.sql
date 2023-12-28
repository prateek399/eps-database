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
-- Table structure for table `web_dlps`
--

DROP TABLE IF EXISTS `web_dlps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `web_dlps` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `description` varchar(1000) DEFAULT '',
  `custom` bigint DEFAULT '1',
  `organization_id` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `idx_web_dlps_deleted_at` (`deleted_at`),
  KEY `fk_organizations_webdpl_policies` (`organization_id`),
  CONSTRAINT `fk_organizations_webdpl_policies` FOREIGN KEY (`organization_id`) REFERENCES `organizations` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `web_dlps`
--

LOCK TABLES `web_dlps` WRITE;
/*!40000 ALTER TABLE `web_dlps` DISABLE KEYS */;
INSERT INTO `web_dlps` VALUES (1,'2023-09-22 13:47:55.806','2023-09-22 13:47:55.806',NULL,'Web DLP 001','Web DLP for Testing',1,1),(2,'2023-09-22 13:48:09.040','2023-09-22 13:48:09.040',NULL,'Web DLP 002','Web DLP for Testing',1,1),(3,'2023-09-22 13:48:16.912','2023-09-22 13:48:16.912',NULL,'Web DLP 003','Web DLP for Testing',1,1),(4,'2023-09-22 13:48:26.230','2023-09-22 13:48:26.230',NULL,'Web DLP 004','Web DLP for Testing',1,1),(5,'2023-09-22 13:48:37.678','2023-09-22 13:48:37.678',NULL,'Web DLP 005','Web DLP for Testing',1,1),(6,'2023-09-26 15:35:28.633','2023-09-26 15:35:28.633',NULL,'Web DLP 006','Web DLP for Testing',1,1);
/*!40000 ALTER TABLE `web_dlps` ENABLE KEYS */;
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
