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
-- Table structure for table `auth_trails`
--

DROP TABLE IF EXISTS `auth_trails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_trails` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `reason` varchar(100) DEFAULT '-',
  `user_login` datetime(3) DEFAULT NULL,
  `user_logout` varchar(255) DEFAULT NULL,
  `user_agent` varchar(255) DEFAULT NULL,
  `user_ip` varchar(100) DEFAULT NULL,
  `user_os` varchar(100) DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `organization_id` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_auth_trails_deleted_at` (`deleted_at`),
  KEY `fk_user_authentications_authtrails` (`user_id`),
  KEY `fk_organizations_authtrails` (`organization_id`),
  CONSTRAINT `fk_organizations_authtrails` FOREIGN KEY (`organization_id`) REFERENCES `organizations` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_user_authentications_authtrails` FOREIGN KEY (`user_id`) REFERENCES `user_authentications` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=316 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_trails`
--

LOCK TABLES `auth_trails` WRITE;
/*!40000 ALTER TABLE `auth_trails` DISABLE KEYS */;
INSERT INTO `auth_trails` VALUES (299,'2023-12-18 14:03:54.895','2023-12-18 14:03:54.895',NULL,'AUTH SUCCESS','-','2023-12-18 14:03:54.891','ACTIVE','PostmanRuntime/7.36.0','192.168.198.199','linux',34,1),(300,'2023-12-18 15:16:43.758','2023-12-18 15:16:43.758',NULL,'AUTH SUCCESS','-','2023-12-18 15:16:43.755','ACTIVE','PostmanRuntime/7.36.0','192.168.198.199','linux',34,1),(301,'2023-12-18 15:19:08.207','2023-12-18 15:19:08.207',NULL,'AUTH SUCCESS','-','2023-12-18 15:19:08.203','ACTIVE','PostmanRuntime/7.36.0','192.168.198.199','linux',34,1),(302,'2023-12-18 15:21:37.898','2023-12-18 15:21:37.898',NULL,'AUTH SUCCESS','-','2023-12-18 15:21:37.894','ACTIVE','PostmanRuntime/7.36.0','192.168.198.199','linux',34,1),(303,'2023-12-18 15:25:14.501','2023-12-18 15:25:14.501',NULL,'AUTH SUCCESS','-','2023-12-18 15:25:14.498','ACTIVE','PostmanRuntime/7.36.0','192.168.198.199','linux',34,1),(304,'2023-12-18 15:26:45.151','2023-12-18 15:26:45.151',NULL,'AUTH SUCCESS','-','2023-12-18 15:26:45.147','ACTIVE','PostmanRuntime/7.36.0','192.168.198.199','linux',34,1),(305,'2023-12-18 15:27:43.953','2023-12-18 15:27:43.953',NULL,'AUTH SUCCESS','-','2023-12-18 15:27:43.950','ACTIVE','PostmanRuntime/7.36.0','192.168.198.199','linux',34,1),(306,'2023-12-18 15:31:14.396','2023-12-18 15:31:14.396',NULL,'AUTH SUCCESS','-','2023-12-18 15:31:14.393','ACTIVE','PostmanRuntime/7.36.0','192.168.198.199','linux',34,1),(307,'2023-12-18 15:32:39.711','2023-12-18 15:32:39.711',NULL,'AUTH SUCCESS','-','2023-12-18 15:32:39.708','ACTIVE','PostmanRuntime/7.36.0','192.168.198.199','linux',34,1),(308,'2023-12-18 16:19:11.872','2023-12-18 16:19:11.872',NULL,'AUTH SUCCESS','-','2023-12-18 16:19:11.869','ACTIVE','PostmanRuntime/7.36.0','192.168.198.199','linux',34,1),(309,'2023-12-18 19:55:37.465','2023-12-18 19:55:37.465',NULL,'AUTH SUCCESS','-','2023-12-18 19:55:37.463','ACTIVE','PostmanRuntime/7.36.0','192.168.198.199','linux',34,1),(310,'2023-12-20 14:26:23.005','2023-12-20 14:26:23.005',NULL,'AUTH SUCCESS','-','2023-12-20 14:26:23.001','ACTIVE','PostmanRuntime/7.36.0','192.168.198.199','linux',34,1),(311,'2023-12-20 14:26:29.812','2023-12-20 14:26:29.812',NULL,'AUTH SUCCESS','-','2023-12-20 14:26:29.808','ACTIVE','PostmanRuntime/7.36.0','192.168.198.199','linux',34,1),(312,'2023-12-20 14:26:34.930','2023-12-20 14:26:34.930',NULL,'AUTH SUCCESS','-','2023-12-20 14:26:34.927','ACTIVE','PostmanRuntime/7.36.0','192.168.198.199','linux',34,1),(313,'2023-12-24 11:41:02.773','2023-12-24 11:41:02.773',NULL,'AUTH SUCCESS','-','2023-12-24 11:41:02.770','ACTIVE','PostmanRuntime/7.36.0','192.168.198.199','linux',34,1),(314,'2023-12-25 11:21:50.259','2023-12-25 11:21:50.259',NULL,'AUTH SUCCESS','-','2023-12-25 11:21:50.257','ACTIVE','PostmanRuntime/7.36.0','192.168.198.199','linux',34,1),(315,'2023-12-25 18:55:10.008','2023-12-25 18:55:10.008',NULL,'AUTH SUCCESS','-','2023-12-25 18:55:10.007','ACTIVE','PostmanRuntime/7.36.0','192.168.198.199','linux',34,1);
/*!40000 ALTER TABLE `auth_trails` ENABLE KEYS */;
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
