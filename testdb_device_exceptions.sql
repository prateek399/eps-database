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
-- Table structure for table `device_exceptions`
--

DROP TABLE IF EXISTS `device_exceptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `device_exceptions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `types` bigint DEFAULT '1',
  `name` varchar(100) DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `position` bigint DEFAULT '1',
  `action` bigint DEFAULT '2',
  `device_control_policy_id` bigint unsigned DEFAULT NULL,
  `class_super_id` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `fk_device_control_policies_device_exceptions` (`device_control_policy_id`),
  KEY `fk_classification_super_classes_device_exceptions` (`class_super_id`),
  CONSTRAINT `fk_classification_super_classes_device_exceptions` FOREIGN KEY (`class_super_id`) REFERENCES `classification_super_classes` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_device_control_policies_device_exceptions` FOREIGN KEY (`device_control_policy_id`) REFERENCES `device_control_policies` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `device_exceptions`
--

LOCK TABLES `device_exceptions` WRITE;
/*!40000 ALTER TABLE `device_exceptions` DISABLE KEYS */;
INSERT INTO `device_exceptions` VALUES (1,1,'Device Exception 001','This is the Sample Exception for the testing of USB',1,1,1,1),(2,1,'Device Exception 002','This is the Sample Exception for the testing of USB',2,1,2,2),(3,3,'Device Exception 003','This is the Sample Exception for the testing of USB',3,1,3,3),(4,2,'Device Exception 004','This is the Sample Exception for the testing of USB',4,1,4,4),(5,4,'Device Exception 005','This is the Sample Exception for the testing of USB',5,1,5,5),(6,4,'Device Exception 006','This is the Sample Exception for the testing of USB',6,1,4,5);
/*!40000 ALTER TABLE `device_exceptions` ENABLE KEYS */;
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
