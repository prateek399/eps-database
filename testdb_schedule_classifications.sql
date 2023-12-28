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
-- Table structure for table `schedule_classifications`
--

DROP TABLE IF EXISTS `schedule_classifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `schedule_classifications` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `description` varchar(1000) DEFAULT '',
  `start_date` datetime(3) DEFAULT NULL,
  `end_date` datetime(3) DEFAULT NULL,
  `duration` bigint DEFAULT '1',
  `custom` bigint DEFAULT '1',
  `organization_id` bigint unsigned DEFAULT NULL,
  `class_super_id` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `idx_schedule_classifications_deleted_at` (`deleted_at`),
  KEY `fk_organizations_schedule_classifications` (`organization_id`),
  KEY `fk_classification_super_classes_schedule_classifications` (`class_super_id`),
  CONSTRAINT `fk_classification_super_classes_schedule_classifications` FOREIGN KEY (`class_super_id`) REFERENCES `classification_super_classes` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_organizations_schedule_classifications` FOREIGN KEY (`organization_id`) REFERENCES `organizations` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schedule_classifications`
--

LOCK TABLES `schedule_classifications` WRITE;
/*!40000 ALTER TABLE `schedule_classifications` DISABLE KEYS */;
INSERT INTO `schedule_classifications` VALUES (1,'2023-09-22 12:43:53.382','2023-12-24 16:40:52.165',NULL,'Schedule 001','This is the Sample Schedule Classification 3','2023-12-24 05:30:00.000','2023-12-26 05:30:00.000',2,1,1,40),(2,'2023-09-22 12:44:12.760','2023-10-24 13:02:43.835',NULL,'Schedule 002','This is the Sample Schedule Classification 3','2023-11-20 05:30:00.000','2023-12-20 05:30:00.000',2,1,1,41),(3,'2023-09-22 12:44:32.672','2023-10-23 15:41:11.601',NULL,'Schedule 003','This is the Sample Schedule Classification 3','2023-11-20 05:30:00.000','2023-12-20 05:30:00.000',2,1,1,42),(4,'2023-09-22 12:44:46.311','2023-09-22 12:44:46.311',NULL,'Schedule 004','This is the Sample Schedule Classification','2023-10-24 00:00:00.000','2024-05-21 00:00:00.000',2,1,1,43),(5,'2023-09-22 12:44:55.855','2023-09-22 12:44:55.855',NULL,'Schedule 005','This is the Sample Schedule Classification','2023-10-24 00:00:00.000','2025-05-21 00:00:00.000',2,1,1,44),(6,'2023-09-22 12:45:05.074','2023-09-22 12:45:05.074',NULL,'Schedule 006','This is the Sample Schedule Classification','2024-10-24 00:00:00.000','2026-05-21 00:00:00.000',2,1,1,45),(7,'2023-09-22 12:45:15.730','2023-09-22 12:45:15.730',NULL,'Schedule 007','This is the Sample Schedule Classification','2023-10-24 00:00:00.000','2024-01-21 00:00:00.000',2,1,1,46),(8,'2023-09-22 12:45:25.696','2023-09-22 12:45:25.696',NULL,'Schedule 008','This is the Sample Schedule Classification','2023-11-24 00:00:00.000','2024-01-21 00:00:00.000',2,1,1,47),(9,'2023-09-22 12:45:39.096','2023-12-24 16:40:36.876',NULL,'Schedule 009','This is the Sample Schedule Classification 3','2023-12-24 05:30:00.000','2023-12-26 05:30:00.000',2,1,1,48),(10,'2023-09-22 12:46:04.475','2023-10-18 16:41:37.094',NULL,'Schedule 010','This is the Sample Schedule Classification','2023-10-18 05:30:00.000','2023-12-18 05:30:00.000',2,1,1,49),(11,'2023-09-25 07:31:49.307','2023-12-24 18:30:41.833',NULL,'Schedule 012','This is the Sample Schedule Classification 3','2023-12-25 05:30:00.000','2023-12-26 05:30:00.000',2,1,1,74),(12,'2023-10-21 16:40:23.553','2023-12-25 12:33:57.544',NULL,'Schedule 014','This is the Sample Schedule Classification 3','2023-12-25 05:30:00.000','2023-12-26 05:30:00.000',2,1,1,86),(13,'2023-12-25 12:34:10.137','2023-12-25 12:34:10.137',NULL,'Schedule 018','This is the Sample Schedule Classification','2023-12-25 05:30:00.000','2024-03-31 05:30:00.000',2,1,1,104),(14,'2023-12-25 19:06:09.283','2023-12-25 19:06:09.283',NULL,'Schedule 019','This is the Sample Schedule Classification',NULL,NULL,1,1,1,106);
/*!40000 ALTER TABLE `schedule_classifications` ENABLE KEYS */;
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
