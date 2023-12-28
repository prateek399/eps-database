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
-- Table structure for table `clip_board_dlp_data`
--

DROP TABLE IF EXISTS `clip_board_dlp_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clip_board_dlp_data` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `action` bigint DEFAULT '2',
  `position` bigint DEFAULT '1',
  `clipboard_dlp_id` bigint unsigned DEFAULT NULL,
  `from_app_class_group_id` bigint unsigned DEFAULT NULL,
  `to_app_class_group_id` bigint unsigned DEFAULT NULL,
  `schedule_class_group_id` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_clip_board_dlp_data_deleted_at` (`deleted_at`),
  KEY `fk_clip_board_dlps_clip_board_dlp_data` (`clipboard_dlp_id`),
  KEY `fk_base_classification_groups_base_group_clipboarddlp_sc2d2c23c1` (`schedule_class_group_id`),
  KEY `fk_base_classification_groups_base_group_clipboarddlp_frc6fbb4d2` (`from_app_class_group_id`),
  KEY `fk_base_classification_groups_base_group_clipboarddlp_to55bdfa6e` (`to_app_class_group_id`),
  CONSTRAINT `fk_base_classification_groups_base_group_clipboarddlp_frc6fbb4d2` FOREIGN KEY (`from_app_class_group_id`) REFERENCES `base_classification_groups` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_base_classification_groups_base_group_clipboarddlp_sc2d2c23c1` FOREIGN KEY (`schedule_class_group_id`) REFERENCES `base_classification_groups` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_base_classification_groups_base_group_clipboarddlp_to55bdfa6e` FOREIGN KEY (`to_app_class_group_id`) REFERENCES `base_classification_groups` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_base_classification_groups_clipboarddlp_from_app_groups` FOREIGN KEY (`from_app_class_group_id`) REFERENCES `base_classification_groups` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_base_classification_groups_clipboarddlp_schedule_groups` FOREIGN KEY (`schedule_class_group_id`) REFERENCES `base_classification_groups` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_base_classification_groups_clipboarddlp_to_app_groups` FOREIGN KEY (`to_app_class_group_id`) REFERENCES `base_classification_groups` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_clip_board_dlps_clip_board_dlp_data` FOREIGN KEY (`clipboard_dlp_id`) REFERENCES `clip_board_dlps` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clip_board_dlp_data`
--

LOCK TABLES `clip_board_dlp_data` WRITE;
/*!40000 ALTER TABLE `clip_board_dlp_data` DISABLE KEYS */;
INSERT INTO `clip_board_dlp_data` VALUES (1,'2023-09-22 13:44:31.880','2023-09-22 13:44:31.880',NULL,1,1,1,11,12,41),(2,'2023-09-22 13:44:43.432','2023-09-22 13:44:43.432',NULL,1,1,2,12,13,42),(3,'2023-09-22 13:44:52.980','2023-09-22 13:44:52.980',NULL,1,1,3,13,14,43),(4,'2023-09-22 13:45:03.043','2023-09-22 13:45:03.043',NULL,1,1,4,14,16,45),(5,'2023-09-22 13:45:16.274','2023-09-22 13:45:16.274',NULL,1,1,5,16,19,48),(6,'2023-09-26 15:34:56.450','2023-09-26 15:34:56.450',NULL,1,1,6,18,17,45),(7,'2023-12-25 17:01:56.762','2023-12-25 17:01:56.762',NULL,1,1,7,18,17,45);
/*!40000 ALTER TABLE `clip_board_dlp_data` ENABLE KEYS */;
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
