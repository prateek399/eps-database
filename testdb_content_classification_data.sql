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
-- Table structure for table `content_classification_data`
--

DROP TABLE IF EXISTS `content_classification_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `content_classification_data` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `keyword_regex` varchar(255) DEFAULT NULL,
  `validation_type` bigint DEFAULT '0',
  `validation_regex` varchar(255) DEFAULT '',
  `validation_value` varchar(191) DEFAULT NULL,
  `original_filename` varchar(255) DEFAULT '',
  `no_of_matches` bigint DEFAULT NULL,
  `file_md5` varchar(32) DEFAULT NULL,
  `custom` bigint DEFAULT '1',
  `content_id` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_content_classification_data_deleted_at` (`deleted_at`),
  KEY `fk_content_classifications_content_data` (`content_id`),
  CONSTRAINT `fk_content_classifications_content_data` FOREIGN KEY (`content_id`) REFERENCES `content_classifications` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `content_classification_data`
--

LOCK TABLES `content_classification_data` WRITE;
/*!40000 ALTER TABLE `content_classification_data` DISABLE KEYS */;
INSERT INTO `content_classification_data` VALUES (4,'2023-09-22 12:59:45.301','2023-09-22 12:59:45.301',NULL,'rafvcfadbtn',2,'','/home/wijungle/Desktop/eps-backend-go/logFile.txt','',3,'',1,3),(5,'2023-09-22 12:59:45.301','2023-09-22 12:59:45.301',NULL,'^vsvdsaemg$',1,'^dfvsdfvdfrgsde',NULL,'',4,'',1,3),(6,'2023-09-22 13:00:22.576','2023-09-22 13:00:22.576',NULL,'^rafvcfadbtn$',2,'','/home/wijungle/Desktop/eps-backend-go/logFile.txt','',3,'',1,4),(7,'2023-09-22 13:00:22.576','2023-09-22 13:00:22.576',NULL,'^vsvdsaemg$',1,'^dfvsdfvdfrgsde$',NULL,'',4,'',1,4),(8,'2023-09-22 13:00:56.496','2023-09-22 13:00:56.496',NULL,'vcfadbtn',2,'','/home/wijungle/Desktop/eps-backend-go/logFile.txt','',3,'',1,5),(9,'2023-09-22 13:00:56.496','2023-09-22 13:00:56.496',NULL,'vsvdsaemg',1,'^dfvsdfvdfrgsde$',NULL,'',4,'',1,5),(10,'2023-09-22 13:02:02.115','2023-09-22 13:02:02.115',NULL,'ewsadcwaqed',2,'','/home/wijungle/Desktop/eps-backend-go/logFile.txt','',3,'',1,6),(11,'2023-09-22 13:02:02.115','2023-09-22 13:02:02.115',NULL,'vsvdsaemg',1,'^dqwdqwdqadqdq$',NULL,'',4,'',1,6),(12,'2023-09-22 13:02:32.220','2023-09-22 13:02:32.220',NULL,'xsaxASXAx',2,'','/home/wijungle/Desktop/eps-backend-go/logFile.txt','',3,'',1,7),(13,'2023-09-22 13:02:32.220','2023-09-22 13:02:32.220',NULL,'XWQXxxxw',1,'^dqwdqwdqadqdq$',NULL,'',4,'',1,7),(14,'2023-09-22 13:04:11.617','2023-09-22 13:04:11.617',NULL,'xsaxASXAx',2,'','/home/wijungle/Desktop/eps-backend-go/logFile.txt','',3,'',1,8),(15,'2023-09-22 13:04:11.617','2023-09-22 13:04:11.617',NULL,'dscsdcvsdvcs',1,'^A-Z/(0,1)A-Z[\\s._a-z]q$',NULL,'',4,'',1,8),(16,'2023-09-22 13:05:04.800','2023-09-22 13:05:04.800',NULL,'xsaxASXAx',2,'','/home/wijungle/Desktop/eps-backend-go/logFile.txt','',3,'',1,9),(17,'2023-09-22 13:05:04.800','2023-09-22 13:05:04.800',NULL,'dscsdcvsdvcs',1,'^A-Z/(1,5)A-Z[\\s@._a-z1-9]q$',NULL,'',4,'',1,9),(18,'2023-09-22 13:05:29.181','2023-09-22 13:05:29.181',NULL,'caeqfceff',2,'','/home/wijungle/Desktop/eps-backend-go/logFile.txt','',3,'',1,10),(19,'2023-09-22 13:05:29.181','2023-09-22 13:05:29.181',NULL,'fcwfcafcacfa',1,'^A-Z/(1,5)A-Z[\\s@._a-z1-9]q$',NULL,'',4,'',1,10),(20,'2023-09-25 07:39:04.809','2023-09-25 07:39:04.809',NULL,'caeqfceff',2,'','/home/wijungle/Desktop/eps-backend-go/sample.txt','',3,'',1,11),(21,'2023-09-25 07:39:04.809','2023-09-25 07:39:04.809',NULL,'ADSEAsadsad',1,'^A-Z/(1,5)A-Z[\\s@._a-z1-9]q$',NULL,'',4,'',1,11),(23,NULL,NULL,NULL,'sfdsfadfda',2,NULL,'/home/wijungle/Desktop/eps-backend-go/sample.txt','',5,'',0,2),(24,NULL,NULL,NULL,'sfdsfadfda',2,NULL,'/home/wijungle/Desktop/eps-backend-go/sample.txt','',5,'',0,1);
/*!40000 ALTER TABLE `content_classification_data` ENABLE KEYS */;
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
