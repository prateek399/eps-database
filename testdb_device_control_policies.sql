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
-- Table structure for table `device_control_policies`
--

DROP TABLE IF EXISTS `device_control_policies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `device_control_policies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `description` varchar(1000) DEFAULT '',
  `usb_storage_device` bigint DEFAULT '2',
  `cd_dvd` bigint DEFAULT '2',
  `portable` bigint DEFAULT '2',
  `wifi` bigint DEFAULT '2',
  `bluetooth` bigint DEFAULT '2',
  `webcam` bigint DEFAULT '2',
  `serial_port` bigint DEFAULT '2',
  `usb_port` bigint DEFAULT '2',
  `local_printer` bigint DEFAULT '2',
  `network_share` bigint DEFAULT '2',
  `card_reader` bigint DEFAULT '2',
  `unknown_device` bigint DEFAULT '2',
  `custom` bigint DEFAULT '1',
  `schedule_class_group_id` bigint unsigned DEFAULT NULL,
  `organization_id` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `fk_base_classification_groups_device_control_policies` (`schedule_class_group_id`),
  KEY `fk_organizations_device_control_policies` (`organization_id`),
  CONSTRAINT `fk_base_classification_groups_device_control_policies` FOREIGN KEY (`schedule_class_group_id`) REFERENCES `base_classification_groups` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_organizations_device_control_policies` FOREIGN KEY (`organization_id`) REFERENCES `organizations` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `device_control_policies`
--

LOCK TABLES `device_control_policies` WRITE;
/*!40000 ALTER TABLE `device_control_policies` DISABLE KEYS */;
INSERT INTO `device_control_policies` VALUES (1,'Device Control Policy 001','This is sample device control policy for testing',2,2,2,2,2,2,2,2,2,2,2,2,1,41,1),(2,'Device Control Policy 002','This is sample device control policy for testing',2,2,2,2,2,2,2,2,2,2,2,2,1,42,1),(3,'Device Control Policy 003','This is sample device control policy for testing',2,2,2,2,2,2,2,2,2,2,2,2,1,43,1),(4,'Device Control Policy 004','This is sample device control policy for testing',2,2,2,2,2,2,2,2,2,2,2,2,1,44,1),(5,'Device Control Policy 005','This is sample device control policy for testing',2,2,2,2,2,2,2,2,2,2,2,2,1,45,1),(6,'Device Control Policy 006','This is sample device control policy for testing',2,2,2,2,2,2,2,2,2,2,2,2,1,47,1),(15,'Device Control Policy 017','This is sample device control policy for testing',2,2,2,2,2,2,2,2,2,2,2,2,1,70,1);
/*!40000 ALTER TABLE `device_control_policies` ENABLE KEYS */;
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
