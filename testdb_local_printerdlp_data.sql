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
-- Table structure for table `local_printerdlp_data`
--

DROP TABLE IF EXISTS `local_printerdlp_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `local_printerdlp_data` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `app_class_group_id` bigint unsigned DEFAULT NULL,
  `device_class_group_id` bigint unsigned DEFAULT NULL,
  `schedule_class_group_id` bigint unsigned DEFAULT NULL,
  `file_class_group_id` bigint unsigned DEFAULT NULL,
  `local_printer_dlp_id` bigint unsigned DEFAULT NULL,
  `action` bigint DEFAULT '2',
  `position` bigint DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `fk_base_classification_groups_local_printerdlp_app_groups` (`app_class_group_id`),
  KEY `fk_base_classification_groups_local_printerdlp_device_groups` (`device_class_group_id`),
  KEY `fk_base_classification_groups_local_printerdlp_schedule_groups` (`schedule_class_group_id`),
  KEY `fk_base_classification_groups_local_printerdlp_file_groups` (`file_class_group_id`),
  KEY `fk_local_printer_dlps_local_printerdlp_data` (`local_printer_dlp_id`),
  CONSTRAINT `fk_base_classification_groups_local_printerdlp_app_groups` FOREIGN KEY (`app_class_group_id`) REFERENCES `base_classification_groups` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_base_classification_groups_local_printerdlp_device_groups` FOREIGN KEY (`device_class_group_id`) REFERENCES `base_classification_groups` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_base_classification_groups_local_printerdlp_file_groups` FOREIGN KEY (`file_class_group_id`) REFERENCES `base_classification_groups` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_base_classification_groups_local_printerdlp_schedule_groups` FOREIGN KEY (`schedule_class_group_id`) REFERENCES `base_classification_groups` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_local_printer_dlps_local_printerdlp_data` FOREIGN KEY (`local_printer_dlp_id`) REFERENCES `local_printer_dlps` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `local_printerdlp_data`
--

LOCK TABLES `local_printerdlp_data` WRITE;
/*!40000 ALTER TABLE `local_printerdlp_data` DISABLE KEYS */;
INSERT INTO `local_printerdlp_data` VALUES (3,13,3,43,63,3,1,1),(4,14,4,44,64,4,1,1),(5,15,5,45,65,5,1,1),(6,14,3,42,67,6,1,1),(9,12,3,46,65,1,2,1),(10,12,3,46,65,1,1,2),(11,12,3,46,65,2,2,1),(12,12,3,46,65,2,1,2);
/*!40000 ALTER TABLE `local_printerdlp_data` ENABLE KEYS */;
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
