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
-- Table structure for table `screenshotdlp_data`
--

DROP TABLE IF EXISTS `screenshotdlp_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `screenshotdlp_data` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `app_class_group_id` bigint unsigned DEFAULT NULL,
  `schedule_class_group_id` bigint unsigned DEFAULT NULL,
  `screenshot_dlp_id` bigint unsigned DEFAULT NULL,
  `action` bigint DEFAULT '2',
  `position` bigint DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `fk_base_classification_groups_screenshotdlp_app_groups` (`app_class_group_id`),
  KEY `fk_base_classification_groups_screenshotdlp_schedule_groups` (`schedule_class_group_id`),
  KEY `fk_screenshot_dlps_screenshotdlp_data` (`screenshot_dlp_id`),
  CONSTRAINT `fk_base_classification_groups_screenshotdlp_app_groups` FOREIGN KEY (`app_class_group_id`) REFERENCES `base_classification_groups` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_base_classification_groups_screenshotdlp_schedule_groups` FOREIGN KEY (`schedule_class_group_id`) REFERENCES `base_classification_groups` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_screenshot_dlps_screenshotdlp_data` FOREIGN KEY (`screenshot_dlp_id`) REFERENCES `screenshot_dlps` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `screenshotdlp_data`
--

LOCK TABLES `screenshotdlp_data` WRITE;
/*!40000 ALTER TABLE `screenshotdlp_data` DISABLE KEYS */;
INSERT INTO `screenshotdlp_data` VALUES (36,16,48,10,2,1),(37,12,44,10,2,2),(38,16,43,11,1,1),(39,16,44,9,1,1);
/*!40000 ALTER TABLE `screenshotdlp_data` ENABLE KEYS */;
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
