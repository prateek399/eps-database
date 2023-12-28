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
-- Table structure for table `user_groups`
--

DROP TABLE IF EXISTS `user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_groups` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `factor_auth` varchar(10) DEFAULT NULL,
  `session_in_activity` bigint DEFAULT '0',
  `simultaneous_login` bigint DEFAULT NULL,
  `organization_id` bigint unsigned DEFAULT NULL,
  `tally` tinyint(1) DEFAULT NULL,
  `ext` longtext,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `idx_user_groups_deleted_at` (`deleted_at`),
  KEY `fk_organizations_user_groups` (`organization_id`),
  CONSTRAINT `fk_organizations_user_groups` FOREIGN KEY (`organization_id`) REFERENCES `organizations` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_groups`
--

LOCK TABLES `user_groups` WRITE;
/*!40000 ALTER TABLE `user_groups` DISABLE KEYS */;
INSERT INTO `user_groups` VALUES (1,'2023-09-22 11:50:28.091','2023-09-22 11:50:28.091',NULL,'Backend Team','This is the Group of Backend Team','',0,5,1,NULL,NULL),(2,'2023-09-22 11:50:51.981','2023-10-20 17:51:19.514',NULL,'Forntend Team','This is the Group of DevOps Team','',0,5,1,NULL,NULL),(3,'2023-09-22 11:56:17.288','2023-09-22 11:56:17.288',NULL,'Frontend Team','This is the Group of Frontend Team','',0,5,1,NULL,NULL),(8,'2023-11-21 21:52:46.880','2023-11-21 21:52:46.880',NULL,'IT Team','This is the Group of IT Team','',0,5,1,NULL,NULL),(9,'2023-11-21 22:04:28.601','2023-11-21 22:04:28.601',NULL,'Product Team','This is the Group of Product Team','',0,5,1,NULL,NULL),(10,'2023-11-22 02:05:02.265','2023-11-22 02:05:02.265',NULL,'Sales Team','This is the Group of Sales Team','',0,5,1,NULL,NULL),(11,'2023-12-19 13:05:44.069','2023-12-19 13:05:44.069',NULL,'ug 001','This is the Group of ugs Team','',0,5,1,NULL,NULL),(12,'2023-12-19 13:05:55.737','2023-12-19 13:05:55.737',NULL,'ug 002','This is the Group of ugs Team','',0,5,1,NULL,NULL),(13,'2023-12-21 16:56:01.846','2023-12-21 16:56:01.846',NULL,'ug 0009','This is the Group of ugs Team','',0,5,1,NULL,NULL),(14,'2023-12-27 20:51:05.561','2023-12-28 13:13:04.382',NULL,'ug 0010','This is the Group of afafsadf Team','',0,5,1,0,'.ext');
/*!40000 ALTER TABLE `user_groups` ENABLE KEYS */;
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
