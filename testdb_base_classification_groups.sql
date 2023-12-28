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
-- Table structure for table `base_classification_groups`
--

DROP TABLE IF EXISTS `base_classification_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `base_classification_groups` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `description` varchar(1000) DEFAULT '',
  `selected_rows` bigint DEFAULT '0',
  `custom` bigint DEFAULT '1',
  `type` bigint DEFAULT '1',
  `organization_id` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `idx_base_classification_groups_deleted_at` (`deleted_at`),
  KEY `fk_organizations_base_classification_groups` (`organization_id`),
  CONSTRAINT `fk_organizations_base_classification_groups` FOREIGN KEY (`organization_id`) REFERENCES `organizations` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `base_classification_groups`
--

LOCK TABLES `base_classification_groups` WRITE;
/*!40000 ALTER TABLE `base_classification_groups` DISABLE KEYS */;
INSERT INTO `base_classification_groups` VALUES (1,'2023-09-22 13:13:29.595','2023-09-22 13:13:29.595',NULL,'Device Group 001','This is Sample Device Classification Group 1',2,1,1,1),(2,'2023-09-22 13:13:43.619','2023-12-25 18:03:17.441',NULL,'Device Group 002','This is a sample Device Classification Group 002',4,1,1,1),(3,'2023-09-22 13:13:58.774','2023-09-22 13:13:58.774',NULL,'Device Group 003','This is Sample Device Classification Group',2,1,1,1),(4,'2023-09-22 13:14:07.295','2023-09-22 13:14:07.295',NULL,'Device Group 004','This is Sample Device Classification Group',2,1,1,1),(5,'2023-09-22 13:14:16.254','2023-09-22 13:14:16.254',NULL,'Device Group 005','This is Sample Device Classification Group',2,1,1,1),(6,'2023-09-22 13:14:40.797','2023-09-22 13:14:40.797',NULL,'Device Group 006','This is Sample Device Classification Group',3,1,1,1),(7,'2023-09-22 13:14:49.574','2023-09-22 13:14:49.574',NULL,'Device Group 007','This is Sample Device Classification Group',3,1,1,1),(8,'2023-09-22 13:15:16.118','2023-09-22 13:15:16.118',NULL,'Device Group 008','This is Sample Device Classification Group',3,1,1,1),(9,'2023-09-22 13:15:23.036','2023-09-22 13:15:23.036',NULL,'Device Group 009','This is Sample Device Classification Group',3,1,1,1),(10,'2023-09-22 13:15:40.932','2023-09-22 13:15:40.932',NULL,'Device Group 010','This is Sample Device Classification Group',3,1,1,1),(11,'2023-09-22 13:16:44.514','2023-09-22 13:16:44.514',NULL,'App Group 001','This is Sample App Classification Group',2,1,2,1),(12,'2023-09-22 13:16:55.272','2023-09-22 13:16:55.272',NULL,'App Group 002','This is Sample App Classification Group',2,1,2,1),(13,'2023-09-22 13:17:04.318','2023-09-22 13:17:04.318',NULL,'App Group 003','This is Sample App Classification Group',2,1,2,1),(14,'2023-09-22 13:17:14.817','2023-09-22 13:17:14.817',NULL,'App Group 004','This is Sample App Classification Group',2,1,2,1),(15,'2023-09-22 13:17:24.509','2023-09-22 13:17:24.509',NULL,'App Group 005','This is Sample App Classification Group',2,1,2,1),(16,'2023-09-22 13:17:40.309','2023-09-22 13:17:40.309',NULL,'App Group 006','This is Sample App Classification Group',3,1,2,1),(17,'2023-09-22 13:17:55.961','2023-09-22 13:17:55.961',NULL,'App Group 007','This is Sample App Classification Group',3,1,2,1),(18,'2023-09-22 13:18:09.133','2023-09-22 13:18:09.133',NULL,'App Group 008','This is Sample App Classification Group',3,1,2,1),(19,'2023-09-22 13:18:47.057','2023-09-22 13:18:47.057',NULL,'App Group 009','This is Sample App Classification Group',3,1,2,1),(21,'2023-09-22 13:20:02.915','2023-09-22 13:20:02.915',NULL,'Web Group 001','This is Sample Web Classification Group',2,1,3,1),(22,'2023-09-22 13:20:15.690','2023-09-22 13:20:15.690',NULL,'Web Group 002','This is Sample Web Classification Group',2,1,3,1),(23,'2023-09-22 13:20:24.740','2023-09-22 13:20:24.740',NULL,'Web Group 003','This is Sample Web Classification Group',2,1,3,1),(24,'2023-09-22 13:20:33.378','2023-09-22 13:20:33.378',NULL,'Web Group 004','This is Sample Web Classification Group',2,1,3,1),(25,'2023-09-22 13:20:47.103','2023-09-22 13:20:47.103',NULL,'Web Group 005','This is Sample Web Classification Group',2,1,3,1),(26,'2023-09-22 13:21:06.594','2023-09-22 13:21:06.594',NULL,'Web Group 006','This is Sample Web Classification Group',3,1,3,1),(27,'2023-09-22 13:21:17.151','2023-09-22 13:21:17.151',NULL,'Web Group 007','This is Sample Web Classification Group',3,1,3,1),(30,'2023-09-22 13:21:59.811','2023-09-22 13:21:59.811',NULL,'Web Group 010','This is Sample Web Classification Group',3,1,3,1),(31,'2023-09-22 13:22:33.303','2023-09-22 13:22:33.303',NULL,'Ip Group 001','This is Sample Ip Classification Group',2,1,4,1),(32,'2023-09-22 13:22:42.514','2023-09-22 13:22:42.514',NULL,'Ip Group 002','This is Sample Ip Classification Group',2,1,4,1),(33,'2023-09-22 13:22:55.715','2023-09-22 13:22:55.715',NULL,'Ip Group 003','This is Sample Ip Classification Group',2,1,4,1),(34,'2023-09-22 13:23:05.666','2023-09-22 13:23:05.666',NULL,'Ip Group 004','This is Sample Ip Classification Group',2,1,4,1),(35,'2023-09-22 13:23:36.332','2023-09-22 13:23:36.332',NULL,'Ip Group 006','This is Sample Ip Classification Group',3,1,4,1),(36,'2023-09-22 13:24:01.400','2023-09-22 13:24:01.400',NULL,'Ip Group 007','This is Sample Ip Classification Group',3,1,4,1),(37,'2023-09-22 13:24:21.437','2023-09-22 13:24:21.437',NULL,'Ip Group 008','This is Sample Ip Classification Group',3,1,4,1),(38,'2023-09-22 13:24:36.378','2023-09-22 13:24:36.378',NULL,'Ip Group 009','This is Sample Ip Classification Group',3,1,4,1),(39,'2023-09-22 13:24:49.951','2023-09-22 13:24:49.951',NULL,'Ip Group 010','This is Sample Ip Classification Group',3,1,4,1),(40,'2023-09-22 13:26:42.919','2023-09-22 13:26:42.919',NULL,'Schedule Group 001','This is Sample Schedule Classification Group',3,1,5,1),(41,'2023-09-22 13:26:51.742','2023-09-22 13:26:51.742',NULL,'Schedule Group 002','This is Sample Schedule Classification Group',3,1,5,1),(42,'2023-09-22 13:27:00.812','2023-09-22 13:27:00.812',NULL,'Schedule Group 003','This is Sample Schedule Classification Group',3,1,5,1),(43,'2023-09-22 13:27:13.386','2023-09-22 13:27:13.386',NULL,'Schedule Group 004','This is Sample Schedule Classification Group',3,1,5,1),(44,'2023-09-22 13:27:38.302','2023-09-22 13:27:38.302',NULL,'Schedule Group 006','This is Sample Schedule Classification Group',2,1,5,1),(45,'2023-09-22 13:27:48.606','2023-09-22 13:27:48.606',NULL,'Schedule Group 007','This is Sample Schedule Classification Group',2,1,5,1),(46,'2023-09-22 13:27:55.565','2023-09-22 13:27:55.565',NULL,'Schedule Group 008','This is Sample Schedule Classification Group',2,1,5,1),(47,'2023-09-22 13:28:06.798','2023-09-22 13:28:06.798',NULL,'Schedule Group 009','This is Sample Schedule Classification Group',2,1,5,1),(48,'2023-09-22 13:28:52.871','2023-09-22 13:28:52.871',NULL,'Schedule Group 010','This is Sample Schedule Classification Group',2,1,5,1),(49,'2023-09-22 13:30:19.174','2023-09-22 13:30:19.174',NULL,'Content Group 001','This is Sample Content Classification Group',2,1,7,1),(50,'2023-09-22 13:30:28.429','2023-09-22 13:30:28.429',NULL,'Content Group 002','This is Sample Content Classification Group',2,1,7,1),(51,'2023-09-22 13:30:37.717','2023-09-22 13:30:37.717',NULL,'Content Group 003','This is Sample Content Classification Group',2,1,7,1),(52,'2023-09-22 13:30:43.921','2023-09-22 13:30:43.921',NULL,'Content Group 004','This is Sample Content Classification Group',2,1,7,1),(53,'2023-09-22 13:30:54.489','2023-09-22 13:30:54.489',NULL,'Content Group 005','This is Sample Content Classification Group',2,1,7,1),(54,'2023-09-22 13:31:04.631','2023-09-22 13:31:04.631',NULL,'Content Group 006','This is Sample Content Classification Group',3,1,7,1),(55,'2023-09-22 13:31:20.786','2023-09-22 13:31:20.786',NULL,'Content Group 008','This is Sample Content Classification Group',3,1,7,1),(56,'2023-09-22 13:31:37.002','2023-09-22 13:31:37.002',NULL,'Content Group 009','This is Sample Content Classification Group',3,1,7,1),(57,'2023-09-22 13:31:58.542','2023-09-22 13:31:58.542',NULL,'Content Group 010','This is Sample Content Classification Group',2,1,7,1),(58,'2023-09-22 13:35:27.377','2023-09-22 13:35:27.377',NULL,'File Group 001','This is Sample File Classification Group',3,1,6,1),(59,'2023-09-22 13:36:11.596','2023-09-22 13:36:11.596',NULL,'File Group 002','This is Sample File Classification Group',3,1,6,1),(60,'2023-09-22 13:36:21.941','2023-09-22 13:36:21.941',NULL,'File Group 003','This is Sample File Classification Group',2,1,6,1),(61,'2023-09-22 13:36:30.647','2023-09-22 13:36:30.647',NULL,'File Group 004','This is Sample File Classification Group',3,1,6,1),(62,'2023-09-22 13:36:42.836','2023-09-22 13:36:42.836',NULL,'File Group 005','This is Sample File Classification Group',3,1,6,1),(63,'2023-09-22 13:36:58.412','2023-09-22 13:36:58.412',NULL,'File Group 006','This is Sample File Classification Group',3,1,6,1),(64,'2023-09-22 13:37:11.636','2023-09-22 13:37:11.636',NULL,'File Group 007','This is Sample File Classification Group',3,1,6,1),(65,'2023-09-22 13:37:23.623','2023-09-22 13:37:23.623',NULL,'File Group 008','This is Sample File Classification Group',3,1,6,1),(66,'2023-09-22 13:37:35.204','2023-09-22 13:37:35.204',NULL,'File Group 009','This is Sample File Classification Group',3,1,6,1),(67,'2023-09-22 13:37:42.820','2023-09-22 13:37:42.820',NULL,'File Group 010','This is Sample File Classification Group',3,1,6,1),(68,'2023-10-18 19:07:57.290','2023-10-18 19:07:57.290',NULL,'File Group 011','This is Sample File Classification Group',1,1,6,1),(70,'2023-12-25 19:08:17.307','2023-12-25 19:08:17.307',NULL,'Schedule Group 011','This is Sample Schedule Classification Group',1,1,5,1);
/*!40000 ALTER TABLE `base_classification_groups` ENABLE KEYS */;
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
