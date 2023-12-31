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
-- Table structure for table `keys_tables`
--

DROP TABLE IF EXISTS `keys_tables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `keys_tables` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key_value` varchar(200) DEFAULT NULL,
  `issue_date` datetime(3) DEFAULT NULL,
  `tenure_type` bigint DEFAULT '0',
  `activate_date` datetime(3) DEFAULT NULL,
  `grace_period` bigint DEFAULT '10',
  `tenure_value` bigint DEFAULT NULL,
  `expiry_date` datetime(3) DEFAULT NULL,
  `status` bigint DEFAULT '4',
  `organization_id` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keys_tables`
--

LOCK TABLES `keys_tables` WRITE;
/*!40000 ALTER TABLE `keys_tables` DISABLE KEYS */;
INSERT INTO `keys_tables` VALUES (1,'AAAAA-BBBBB-CCCCC-DDDDD-EEEEE','2023-05-01 05:30:00.000',0,'2023-05-01 05:30:00.000',10,NULL,'2023-12-30 05:30:00.000',1,1),(2,'A1B2C-ATYR5-098IH-82JJE-UUY32','2023-05-01 05:30:00.000',3,'2023-05-01 05:30:00.000',10,6,'2023-12-12 05:30:00.000',1,1),(3,'A1B2C-DRDSA-POIJH-NBCXT-VVCCS','2023-05-01 05:30:00.000',0,'2023-11-21 14:49:31.780',10,NULL,'2023-12-12 05:30:00.000',1,1),(4,'WDSAP-SSWCX-LKJAS-BVCRT-ALCBT','2023-05-01 05:30:00.000',0,'2023-11-22 03:01:52.378',10,NULL,'2023-12-12 05:30:00.000',1,1),(5,'GOHAN-TRGVD-OSSYH-SDJRI-XSERG','2023-05-01 05:30:00.000',2,'2023-12-27 19:06:40.724',10,1,'2024-01-03 19:06:40.724',1,1);
/*!40000 ALTER TABLE `keys_tables` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-28 14:04:32
