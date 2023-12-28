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
-- Table structure for table `rules`
--

DROP TABLE IF EXISTS `rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rules` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `device_control_policy_id` bigint unsigned DEFAULT NULL,
  `app_control_policy_id` bigint unsigned DEFAULT NULL,
  `app_file_access_dlp_id` bigint unsigned DEFAULT NULL,
  `clipboard_dlp_id` bigint unsigned DEFAULT NULL,
  `local_printer_dlp_id` bigint unsigned DEFAULT NULL,
  `network_dlp_id` bigint unsigned DEFAULT NULL,
  `screenshot_dlp_id` bigint unsigned DEFAULT NULL,
  `web_dlp_id` bigint unsigned DEFAULT NULL,
  `web_filter_policy_id` bigint unsigned DEFAULT NULL,
  `position` bigint DEFAULT '0',
  `custom` bigint DEFAULT '1',
  `organization_id` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `fk_device_control_policies_rule` (`device_control_policy_id`),
  KEY `fk_screenshot_dlps_rule` (`screenshot_dlp_id`),
  KEY `fk_clip_board_dlps_rule` (`clipboard_dlp_id`),
  KEY `fk_web_dlps_rule` (`web_dlp_id`),
  KEY `fk_network_dlps_rule` (`network_dlp_id`),
  KEY `fk_local_printer_dlps_rule` (`local_printer_dlp_id`),
  KEY `fk_app_control_policies_rule` (`app_control_policy_id`),
  KEY `fk_web_filterings_rule` (`web_filter_policy_id`),
  KEY `fk_app_file_access_dlps_rule` (`app_file_access_dlp_id`),
  CONSTRAINT `fk_app_control_policies_rule` FOREIGN KEY (`app_control_policy_id`) REFERENCES `app_control_policies` (`id`) ON DELETE SET NULL,
  CONSTRAINT `fk_app_file_access_dlps_rule` FOREIGN KEY (`app_file_access_dlp_id`) REFERENCES `app_file_access_dlps` (`id`) ON DELETE SET NULL,
  CONSTRAINT `fk_clip_board_dlps_rule` FOREIGN KEY (`clipboard_dlp_id`) REFERENCES `clip_board_dlps` (`id`) ON DELETE SET NULL,
  CONSTRAINT `fk_device_control_policies_rule` FOREIGN KEY (`device_control_policy_id`) REFERENCES `device_control_policies` (`id`) ON DELETE SET NULL,
  CONSTRAINT `fk_local_printer_dlps_rule` FOREIGN KEY (`local_printer_dlp_id`) REFERENCES `local_printer_dlps` (`id`) ON DELETE SET NULL,
  CONSTRAINT `fk_network_dlps_rule` FOREIGN KEY (`network_dlp_id`) REFERENCES `network_dlps` (`id`) ON DELETE SET NULL,
  CONSTRAINT `fk_screenshot_dlps_rule` FOREIGN KEY (`screenshot_dlp_id`) REFERENCES `screenshot_dlps` (`id`) ON DELETE SET NULL,
  CONSTRAINT `fk_web_dlps_rule` FOREIGN KEY (`web_dlp_id`) REFERENCES `web_dlps` (`id`) ON DELETE SET NULL,
  CONSTRAINT `fk_web_filterings_rule` FOREIGN KEY (`web_filter_policy_id`) REFERENCES `web_filterings` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=172 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rules`
--

LOCK TABLES `rules` WRITE;
/*!40000 ALTER TABLE `rules` DISABLE KEYS */;
INSERT INTO `rules` VALUES (141,'Rule 031','This is a sample Rule for testing',NULL,NULL,NULL,NULL,2,NULL,NULL,NULL,NULL,34,1,1),(142,'Rule 032','This is a sample Rule for testing',2,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,29,1,1),(143,'Rule 033','This is a sample Rule for testing',2,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,28,1,1),(144,'Rule 034','This is a sample Rule for testing',2,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,27,1,1),(145,'Rule 035','This is a sample Rule for testing',2,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,26,1,1),(146,'Rule 036','This is a sample Rule for testing',2,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,25,1,1),(147,'Rule 037','This is a sample Rule for testing',2,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,24,1,1),(148,'Rule 038','This is a sample Rule for testing',2,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,23,1,1),(149,'Rule 039','This is a sample Rule for testing',2,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,22,1,1),(150,'Rule 040','This is a sample Rule for testing',2,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,21,1,1),(151,'Rule 041','This is a sample Rule for testing',2,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,20,1,1),(152,'Rule 042','This is a sample Rule for testing',2,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,19,1,1),(153,'Rule 043','This is a sample Rule for testing',2,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,18,1,1),(154,'Rule 044','This is a sample Rule for testing',2,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17,1,1),(155,'Rule 045','This is a sample Rule for testing',2,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16,1,1),(156,'Rule 046','This is a sample Rule for testing',2,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15,1,1),(157,'Rule 047','This is a sample Rule for testing',2,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14,1,1),(158,'Rule 048','This is a sample Rule for testing',15,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,13,1,1),(159,'Rule 049','This is a sample Rule for testing',NULL,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,12,1,1),(160,'Rule 050','This is a sample Rule for testing',NULL,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11,1,1),(161,'Rule 051','This is a sample Rule for testing',NULL,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10,1,1),(162,'Rule 052','This is a sample Rule for testing',NULL,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,9,1,1),(163,'Rule 053','This is a sample Rule for testing',NULL,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,8,1,1),(164,'Rule 054','This is a sample Rule for testing',NULL,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,7,1,1),(165,'Rule 055','This is a sample Rule for testing',NULL,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,6,1,1),(166,'Rule 056','This is a sample Rule for testing',NULL,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,5,1,1),(167,'Rule 057','This is a sample Rule for testing',NULL,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,4,1,1),(168,'Rule 058','This is a sample Rule for testing',NULL,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,3,1,1),(169,'Rule 059','This is a sample Rule for testing',NULL,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,1,1),(170,'Rule 060','This is a sample Rule for testing',NULL,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1),(171,'Rule 061','This is a sample Rule for testing',NULL,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,1);
/*!40000 ALTER TABLE `rules` ENABLE KEYS */;
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
