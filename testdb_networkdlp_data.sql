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
-- Table structure for table `networkdlp_data`
--

DROP TABLE IF EXISTS `networkdlp_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `networkdlp_data` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ip_class_group_id` bigint unsigned DEFAULT NULL,
  `schedule_class_group_id` bigint unsigned DEFAULT NULL,
  `file_class_group_id` bigint unsigned DEFAULT NULL,
  `network_dlp_id` bigint unsigned DEFAULT NULL,
  `action` bigint DEFAULT '2',
  `position` bigint DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `fk_base_classification_groups_networkdlp_ip_groups` (`ip_class_group_id`),
  KEY `fk_base_classification_groups_networkdlp_schedule_groups` (`schedule_class_group_id`),
  KEY `fk_base_classification_groups_networkdlp_file_groups` (`file_class_group_id`),
  KEY `fk_network_dlps_networkdlp_data` (`network_dlp_id`),
  CONSTRAINT `fk_base_classification_groups_networkdlp_file_groups` FOREIGN KEY (`file_class_group_id`) REFERENCES `base_classification_groups` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_base_classification_groups_networkdlp_ip_groups` FOREIGN KEY (`ip_class_group_id`) REFERENCES `base_classification_groups` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_base_classification_groups_networkdlp_schedule_groups` FOREIGN KEY (`schedule_class_group_id`) REFERENCES `base_classification_groups` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_network_dlps_networkdlp_data` FOREIGN KEY (`network_dlp_id`) REFERENCES `network_dlps` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `networkdlp_data`
--

LOCK TABLES `networkdlp_data` WRITE;
/*!40000 ALTER TABLE `networkdlp_data` DISABLE KEYS */;
INSERT INTO `networkdlp_data` VALUES (1,31,41,61,1,1,1),(2,32,42,62,2,1,1),(3,33,43,63,3,1,1),(4,34,44,64,4,1,1),(5,35,45,65,5,1,1),(11,38,47,59,6,2,1),(12,39,48,60,6,2,2);
/*!40000 ALTER TABLE `networkdlp_data` ENABLE KEYS */;
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
