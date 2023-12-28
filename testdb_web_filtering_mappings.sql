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
-- Table structure for table `web_filtering_mappings`
--

DROP TABLE IF EXISTS `web_filtering_mappings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `web_filtering_mappings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `action` bigint DEFAULT '2',
  `position` bigint DEFAULT '1',
  `web_filter_policy_id` bigint unsigned DEFAULT NULL,
  `web_classification_id` bigint unsigned DEFAULT NULL,
  `schedule_class_group_id` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_web_filtering_mappings_deleted_at` (`deleted_at`),
  KEY `fk_web_classifications_web_filter_data` (`web_classification_id`),
  KEY `fk_base_classification_groups_web_filter_schedule_groups` (`schedule_class_group_id`),
  KEY `fk_web_filterings_web_filter_data` (`web_filter_policy_id`),
  CONSTRAINT `fk_base_classification_groups_web_filter_schedule_groups` FOREIGN KEY (`schedule_class_group_id`) REFERENCES `base_classification_groups` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_web_classifications_web_filter_data` FOREIGN KEY (`web_classification_id`) REFERENCES `web_classifications` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_web_filterings_web_filter_data` FOREIGN KEY (`web_filter_policy_id`) REFERENCES `web_filterings` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `web_filtering_mappings`
--

LOCK TABLES `web_filtering_mappings` WRITE;
/*!40000 ALTER TABLE `web_filtering_mappings` DISABLE KEYS */;
INSERT INTO `web_filtering_mappings` VALUES (8,'2023-09-28 15:50:07.692','2023-09-28 15:50:07.692',NULL,1,1,8,2,48),(13,'2023-11-04 12:45:42.549','2023-11-04 12:45:42.549',NULL,1,1,9,1,48),(21,'2023-12-25 16:53:50.707','2023-12-25 16:53:50.707',NULL,1,1,17,1,48),(22,'2023-12-25 16:57:50.820','2023-12-25 16:57:50.820',NULL,1,1,7,2,46);
/*!40000 ALTER TABLE `web_filtering_mappings` ENABLE KEYS */;
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
