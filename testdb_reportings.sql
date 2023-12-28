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
-- Table structure for table `reportings`
--

DROP TABLE IF EXISTS `reportings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reportings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `incident_time` longtext,
  `source` varchar(100) DEFAULT NULL,
  `endpoint` varchar(200) DEFAULT NULL,
  `policy` varchar(100) DEFAULT NULL,
  `channel` bigint DEFAULT '1',
  `destination` varchar(1000) DEFAULT NULL,
  `transaction_size` varchar(50) DEFAULT NULL,
  `action` bigint DEFAULT '2',
  `maximum_matches` bigint DEFAULT NULL,
  `status` varchar(50) DEFAULT 'new',
  `severity` varchar(50) DEFAULT 'low',
  `detected_by` varchar(50) DEFAULT NULL,
  `file_name` varchar(100) DEFAULT NULL,
  `application_name` varchar(100) DEFAULT NULL,
  `direction` varchar(100) DEFAULT 'inbound',
  `organization_id` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_reportings_deleted_at` (`deleted_at`),
  KEY `fk_organizations_reportings` (`organization_id`),
  CONSTRAINT `fk_organizations_reportings` FOREIGN KEY (`organization_id`) REFERENCES `organizations` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reportings`
--

LOCK TABLES `reportings` WRITE;
/*!40000 ALTER TABLE `reportings` DISABLE KEYS */;
INSERT INTO `reportings` VALUES (1,NULL,NULL,NULL,'2023-02-10 18:44:59.193982+00:00','user4',NULL,'socialmediaviolation',1,'www.facebook.com','4mb',1,4,'new','low','9.0',NULL,'chrome','inbound',1),(2,NULL,NULL,NULL,'2023-02-10 19:44:59.193982+00:00','user4',NULL,'socialmediaviolation',1,'www.facebook.com','4mb',1,4,'new','low','9.0',NULL,'chrome','inbound',1),(3,NULL,NULL,NULL,'2023-02-10 20:44:59.193982+00:00','user4',NULL,'socialmediaviolation',1,'www.facebook.com','4mb',1,4,'new','low','9.0',NULL,'chrome','inbound',1),(4,NULL,NULL,NULL,'2023-06-23 21:23:57.313+05:30','','f057a6673329,2692258165,20220111-f057-a667-3329-f057a667332d,39168/22n801212,mmg5s000010861cpp008f','web_filter_policy id: [1] web Id: [1]',1,'Webfilter(cdn.openai.com)','transaction_sizeDemo',1,0,'new','low','9.1.0.0','(fileName,size)Demo','application_nameDemo','inbound',1),(5,NULL,NULL,NULL,'2023-06-23 21:23:57.313+05:30','','f057a6673329,2692258165,20220111-f057-a667-3329-f057a667332d,39168/22n801212,mmg5s000010861cpp008f','web_filter_policy id: [1] web Id: [1]',1,'Webfilter(cdn.openai.com)','transaction_sizeDemo',1,0,'new','low','9.1.0.0','(fileName,size)Demo','application_nameDemo','inbound',1),(6,NULL,NULL,NULL,'2023-06-23 21:23:57.313+05:30','','f057a6673329,2692258165,20220111-f057-a667-3329-f057a667332d,39168/22n801212,mmg5s000010861cpp008f','web_filter_policy id: [1] web Id: [1]',1,'Webfilter(cdn.openai.com)','transaction_sizeDemo',1,0,'new','low','9.1.0.0','(fileName,size)Demo','application_nameDemo','inbound',1),(7,NULL,NULL,NULL,'2023-06-23 21:23:57.313+05:30','','f057a6673329,2692258165,20220111-f057-a667-3329-f057a667332d,39168/22n801212,mmg5s000010861cpp008f','web_filter_policy id: [1] web Id: [1]',1,'Webfilter(cdn.openai.com)','transaction_sizeDemo',1,0,'new','low','9.1.0.0','(fileName,size)Demo','application_nameDemo','inbound',1);
/*!40000 ALTER TABLE `reportings` ENABLE KEYS */;
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
