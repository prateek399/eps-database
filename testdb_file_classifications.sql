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
-- Table structure for table `file_classifications`
--

DROP TABLE IF EXISTS `file_classifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `file_classifications` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `file_type` bigint DEFAULT '0',
  `file_name` varchar(200) DEFAULT NULL,
  `subject` varchar(200) DEFAULT NULL,
  `tags` varchar(200) DEFAULT NULL,
  `authors` varchar(200) DEFAULT NULL,
  `program` varchar(200) DEFAULT NULL,
  `file_ext` varchar(500) DEFAULT NULL,
  `file_size` longtext,
  `date_created` datetime(3) DEFAULT NULL,
  `date_modified` datetime(3) DEFAULT NULL,
  `categories` varchar(200) DEFAULT NULL,
  `comments` varchar(200) DEFAULT NULL,
  `last_saved_by` varchar(200) DEFAULT NULL,
  `revision_number` varchar(200) DEFAULT NULL,
  `version_number` bigint DEFAULT NULL,
  `company_name` varchar(200) DEFAULT NULL,
  `manager` varchar(200) DEFAULT NULL,
  `publisher` varchar(200) DEFAULT NULL,
  `custom` bigint DEFAULT '1',
  `content_class_id` bigint unsigned DEFAULT NULL,
  `organization_id` bigint unsigned DEFAULT NULL,
  `class_super_id` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `idx_file_classifications_deleted_at` (`deleted_at`),
  KEY `fk_content_classifications_file_classes` (`content_class_id`),
  KEY `fk_organizations_file_classifications` (`organization_id`),
  KEY `fk_classification_super_classes_file_classifications` (`class_super_id`),
  CONSTRAINT `fk_classification_super_classes_file_classifications` FOREIGN KEY (`class_super_id`) REFERENCES `classification_super_classes` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_content_classifications_file_classes` FOREIGN KEY (`content_class_id`) REFERENCES `content_classifications` (`id`) ON DELETE SET NULL,
  CONSTRAINT `fk_organizations_file_classifications` FOREIGN KEY (`organization_id`) REFERENCES `organizations` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `file_classifications`
--

LOCK TABLES `file_classifications` WRITE;
/*!40000 ALTER TABLE `file_classifications` DISABLE KEYS */;
INSERT INTO `file_classifications` VALUES (1,'2023-09-22 13:06:47.884','2023-09-22 13:06:47.884',NULL,'File 001','This is the Sample File Classification for Testing',6,'feafaaa',NULL,NULL,NULL,NULL,NULL,'522',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,60),(2,'2023-09-22 13:06:53.552','2023-09-22 13:06:53.552',NULL,'File 002','This is the Sample File Classification for Testing',6,'feafaaa',NULL,NULL,NULL,NULL,NULL,'522',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,61),(3,'2023-09-22 13:07:00.825','2023-09-22 13:07:00.825',NULL,'File 003','This is the Sample File Classification for Testing',6,'dzv z z',NULL,NULL,NULL,NULL,NULL,'52212',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,62),(4,'2023-09-22 13:07:11.614','2023-09-22 13:07:11.614',NULL,'File 004','This is the Sample File Classification for Testing',1,'dzeefadsvsdsdvz',NULL,NULL,NULL,NULL,NULL,'52212',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,63),(5,'2023-09-22 13:07:19.687','2023-10-24 13:31:17.158',NULL,'File 005','This is the Sample File Classification for Testing',6,'wijungle cred',NULL,NULL,NULL,NULL,'.docx',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,64),(6,'2023-09-22 13:07:52.504','2023-09-22 13:07:52.504',NULL,'File 006','This is the Sample File Classification for Testing',3,'vhjgnfbdvsc',NULL,NULL,NULL,NULL,NULL,'2352',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,65),(7,'2023-09-22 13:08:08.545','2023-09-22 13:08:08.545',NULL,'File 007','This is the Sample File Classification for Testing',3,'3453q42323',NULL,NULL,NULL,NULL,NULL,'8765231',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,66),(8,'2023-09-22 13:08:15.617','2023-09-22 13:08:15.617',NULL,'File 008','This is the Sample File Classification for Testing',3,'lgjkdfvxczzsdfd56',NULL,NULL,NULL,NULL,NULL,'8765231',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,67),(9,'2023-09-22 13:08:28.396','2023-09-22 13:08:28.396',NULL,'File 009','This is the Sample File Classification for Testing',8,'jhgfbdvzcsXzxxzsdf',NULL,NULL,NULL,NULL,NULL,'876542',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,68),(10,'2023-09-22 13:08:39.016','2023-10-18 12:16:34.641',NULL,'File 010','This is the Sample File Classification for Testing',1,'wijungle cred',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,69),(11,'2023-10-18 12:46:17.361','2023-10-18 12:46:17.361',NULL,'File 011','This is the Sample File Classification for Testing',7,'hjmghngdrseasasdfg',NULL,NULL,NULL,NULL,NULL,'324567',NULL,'2017-05-21 05:30:00.000',NULL,NULL,NULL,NULL,1234567,NULL,NULL,NULL,1,NULL,1,79),(12,'2023-10-18 19:06:42.492','2023-10-18 19:06:42.492',NULL,'File 012','This is the Sample File Classification for Testing',7,'hjmghngdrseasasdfg',NULL,NULL,NULL,NULL,NULL,'324567',NULL,'2017-05-21 05:30:00.000',NULL,NULL,NULL,NULL,1234567,NULL,NULL,NULL,1,2,1,80),(13,'2023-10-19 16:30:00.664','2023-10-19 16:30:00.664',NULL,'File 013','This is the Sample File Classification for Testing',7,'hjmghngdrseasasdfg',NULL,NULL,NULL,NULL,NULL,'324567',NULL,'2017-05-21 05:30:00.000',NULL,NULL,NULL,NULL,1234567,NULL,NULL,NULL,1,2,1,83);
/*!40000 ALTER TABLE `file_classifications` ENABLE KEYS */;
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
