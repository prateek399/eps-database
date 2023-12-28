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
-- Table structure for table `device_classifications`
--

DROP TABLE IF EXISTS `device_classifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `device_classifications` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `device_type` bigint DEFAULT '1',
  `device_name_regex` varchar(100) DEFAULT '',
  `vid` varchar(50) DEFAULT '',
  `pid` varchar(50) DEFAULT '',
  `serial_number` varchar(100) DEFAULT '',
  `device_instance_id` varchar(25) DEFAULT '',
  `custom` bigint DEFAULT '1',
  `class_super_id` bigint unsigned DEFAULT NULL,
  `organization_id` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `idx_device_classifications_deleted_at` (`deleted_at`),
  KEY `fk_organizations_device_classifications` (`organization_id`),
  KEY `fk_classification_super_classes_device_classifications` (`class_super_id`),
  CONSTRAINT `fk_classification_super_classes_device_classifications` FOREIGN KEY (`class_super_id`) REFERENCES `classification_super_classes` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_organizations_device_classifications` FOREIGN KEY (`organization_id`) REFERENCES `organizations` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `device_classifications`
--

LOCK TABLES `device_classifications` WRITE;
/*!40000 ALTER TABLE `device_classifications` DISABLE KEYS */;
INSERT INTO `device_classifications` VALUES (1,'2023-09-22 12:08:05.530','2023-09-22 12:08:05.530',NULL,'Device001','',5,'^device001$','sa4q','dwsa','DAWSczdxvfchg','',1,1,1),(2,'2023-09-22 12:08:27.523','2023-10-23 16:07:44.130',NULL,'Device002','',3,NULL,'1245',NULL,NULL,NULL,1,2,1),(3,'2023-09-22 12:08:42.728','2023-12-25 17:57:31.617',NULL,'Device003','',3,NULL,'1245','1234',NULL,NULL,1,3,1),(4,'2023-09-22 12:09:21.482','2023-09-22 12:09:21.482',NULL,'Device004','',5,'^device001$','adad','dsa1','DAWSczdxvfchg','',1,4,1),(5,'2023-09-22 12:09:28.299','2023-09-22 12:09:28.299',NULL,'Device005','',2,'^device001$','adad','dsa1','DAWSczdxvfchg','',1,5,1),(6,'2023-09-22 12:09:38.088','2023-09-22 12:09:38.088',NULL,'Device006','',1,'^device006$','adad','dsa1','DAWSczdxvfchg','',1,6,1),(7,'2023-09-22 12:09:51.371','2023-09-22 12:09:51.371',NULL,'Device007','',3,'^device006$','adad','dsa1','DAWSczdxvfchg','',1,7,1),(8,'2023-09-22 12:09:57.775','2023-09-22 12:09:57.775',NULL,'Device008','',3,'^device006$','adad','dsa1','DAWSczdxvfchg','',1,8,1),(9,'2023-09-22 12:10:04.514','2023-09-22 12:10:04.514',NULL,'Device009','',3,'^device009$','adad','dsa1','DAWSczdxvfchg','',1,9,1),(10,'2023-09-22 12:10:16.986','2023-09-22 12:10:16.986',NULL,'Device010','',3,'^device010$','35ca','65sd','DAWSczdxvfchg','',1,10,1),(14,'2023-10-19 15:17:00.375','2023-10-19 15:17:00.375',NULL,'Device014','',4,'^device010$','3224','6767','szvfzsdcfvgbn','',1,81,1),(15,'2023-10-20 19:05:55.253','2023-10-20 19:05:55.253',NULL,'Device015','',4,'^device015$','3224','6768','jydhtsgdrfsaa','',1,84,1),(16,'2023-10-20 19:06:17.266','2023-10-20 19:06:17.266',NULL,'Device016','',4,'^device016$','3224','6868','lkjhgfdsa','',1,85,1),(17,'2023-10-26 14:03:03.049','2023-10-26 14:03:03.049',NULL,'Device018','',4,'^device016$','3224','6868','lkjhgfdsa','',1,93,1),(18,'2023-12-18 19:57:44.875','2023-12-18 19:57:44.875',NULL,'Device020','',4,'^device016$','3224','6868','lkjhgfdsa','',1,94,1),(19,'2023-12-18 20:46:05.001','2023-12-18 20:46:05.001',NULL,'Device021','',4,'^device016$','3224','6868','lkjhgfdsa','',1,95,1),(20,'2023-12-19 12:56:05.362','2023-12-19 12:56:05.362',NULL,'Device023','',4,'^device016$','3224','6868','lkjhgfdsa','',1,96,1),(21,'2023-12-19 13:01:45.554','2023-12-19 13:01:45.554',NULL,'Device024','',4,'^device016$','3224','6868','lkjhgfdsa','',1,97,1),(22,'2023-12-19 13:01:54.644','2023-12-19 13:01:54.644',NULL,'Device025','',4,'^device016$','3224','6868','lkjhgfdsa','',1,98,1),(23,'2023-12-19 13:02:16.749','2023-12-19 13:02:16.749',NULL,'Device026','',4,'^device016$','3224','6868','lkjhgfdsa','',1,99,1),(24,'2023-12-20 15:32:54.569','2023-12-20 15:32:54.569',NULL,'Device027','',4,'^device016$','3224','6868','lkjhgfdsa','',1,100,1);
/*!40000 ALTER TABLE `device_classifications` ENABLE KEYS */;
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
