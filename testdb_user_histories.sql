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
-- Table structure for table `user_histories`
--

DROP TABLE IF EXISTS `user_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `login` longtext,
  `logout` varchar(255) DEFAULT NULL,
  `hardware_id` bigint unsigned DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `organization_id` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_hardwares_user_history` (`hardware_id`),
  KEY `fk_user_authentications_user_history` (`user_id`),
  KEY `fk_organizations_user_history` (`organization_id`),
  CONSTRAINT `fk_hardwares_user_history` FOREIGN KEY (`hardware_id`) REFERENCES `hardwares` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_organizations_user_history` FOREIGN KEY (`organization_id`) REFERENCES `organizations` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_user_authentications_user_history` FOREIGN KEY (`user_id`) REFERENCES `user_authentications` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_histories`
--

LOCK TABLES `user_histories` WRITE;
/*!40000 ALTER TABLE `user_histories` DISABLE KEYS */;
INSERT INTO `user_histories` VALUES (1,'2023-12-19 19:46:22.865960253 +0530 IST m=+9.623245908','ACTIVE',4,4,1),(2,'2023-12-19 20:02:35.440947262 +0530 IST m=+56.488402672','ACTIVE',4,4,1),(3,'2023-12-19 20:04:39.357952446 +0530 IST m=+3.601586046','ACTIVE',4,4,1),(4,'2023-12-20 21:13:59.299508868 +0530 IST m=+2551.863670421','ACTIVE',6,28,1),(5,'2023-12-20 21:14:17.024764312 +0530 IST m=+2569.588925845','ACTIVE',6,28,1),(6,'2023-12-20 21:19:18.047547093 +0530 IST m=+2870.611708626','ACTIVE',5,36,1),(7,'2023-12-20 21:32:56.933962744 +0530 IST m=+3.901574028','ACTIVE',5,36,1),(8,'2023-12-20 21:33:10.923620899 +0530 IST m=+17.891232203','ACTIVE',5,36,1),(9,'2023-12-20 21:33:15.777101601 +0530 IST m=+22.744712875','ACTIVE',5,36,1),(10,'2023-12-21 13:39:41.717252404 +0530 IST m=+168.354147016','ACTIVE',5,36,1),(11,'2023-12-22 19:24:04.907222241 +0530 IST m=+2.726805354','ACTIVE',5,36,1),(12,NULL,'Ended: 2023-12-22 20:22:04.287633797 +0530 IST m=+4.303740334',5,36,1),(13,'2023-12-23 11:42:07.84168044 +0530 IST m=+267.192882063','ACTIVE',5,36,1),(14,'2023-12-23 15:05:36.087233822 +0530 IST m=+4.526007015','ACTIVE',5,36,1),(15,'2023-12-23 15:28:50.350914076 +0530 IST m=+5.108081563','ACTIVE',5,36,1),(16,'2023-12-23 15:30:29.35249966 +0530 IST m=+5.651938261','ACTIVE',5,36,1),(17,'2023-12-23 15:38:41.709732693 +0530 IST m=+8.444754854','ACTIVE',5,36,1),(18,'2023-12-23 15:40:26.721842914 +0530 IST m=+113.456865095','ACTIVE',5,36,1),(19,'2023-12-23 15:48:26.201641034 +0530 IST m=+2.400774805','ACTIVE',5,36,1),(20,'2023-12-23 18:01:43.590448382 +0530 IST m=+40.343893724','ACTIVE',5,36,1),(21,'2023-12-23 18:33:33.19847194 +0530 IST m=+12.384985108','ACTIVE',5,36,1),(22,'2023-12-23 19:04:53.460596501 +0530 IST m=+3.340350747','ACTIVE',5,36,1),(23,'2023-12-23 19:07:02.372151916 +0530 IST m=+132.251906132','ACTIVE',5,36,1),(24,'2023-12-23 19:43:40.350249733 +0530 IST m=+12.724822671','ACTIVE',5,36,1),(25,'2023-12-23 19:54:44.179708122 +0530 IST m=+4.803689794','ACTIVE',5,36,1),(26,'2023-12-23 19:57:30.167258719 +0530 IST m=+170.791240391','ACTIVE',5,36,1),(27,'2023-12-23 19:58:33.027384851 +0530 IST m=+233.651366553','ACTIVE',5,36,1),(28,'2023-12-23 20:02:30.421375117 +0530 IST m=+10.050993284','ACTIVE',5,36,1),(29,'2023-12-23 20:08:46.696343626 +0530 IST m=+386.325961763','ACTIVE',5,36,1),(30,'2023-12-23 20:12:44.287993014 +0530 IST m=+51.451247413','ACTIVE',5,36,1),(31,'2023-12-23 20:22:08.981377004 +0530 IST m=+7.540454172','ACTIVE',5,36,1),(32,'2023-12-23 20:25:23.164042994 +0530 IST m=+6.269109166','ACTIVE',5,36,1),(33,'2023-12-23 20:27:14.471907249 +0530 IST m=+18.363069015','ACTIVE',5,36,1),(34,'2023-12-23 20:28:25.702440533 +0530 IST m=+35.459742915','ACTIVE',5,36,1),(35,'2023-12-23 20:32:47.869627634 +0530 IST m=+4.624115017','ACTIVE',5,36,1),(36,'2023-12-23 20:33:56.878350876 +0530 IST m=+8.538843250','ACTIVE',5,36,1),(37,'2023-12-23 20:35:28.129058872 +0530 IST m=+6.530009151','ACTIVE',5,36,1),(38,'2023-12-23 20:36:30.06631995 +0530 IST m=+7.687659510','ACTIVE',5,36,1),(39,'2023-12-23 20:37:24.008850399 +0530 IST m=+6.412714093','ACTIVE',5,36,1),(40,'2023-12-23 20:39:11.600065935 +0530 IST m=+6.422481916','ACTIVE',5,36,1),(41,'2023-12-23 21:12:05.317642147 +0530 IST m=+6.946775181','ACTIVE',5,36,1),(42,'2023-12-23 21:51:12.231393507 +0530 IST m=+7.170295351','ACTIVE',5,36,1),(43,'2023-12-25 19:28:09.874086397 +0530 IST m=+3.847283457','ACTIVE',5,36,1),(44,'2023-12-25 19:28:57.89173818 +0530 IST m=+51.864935230','ACTIVE',5,36,1),(45,NULL,'Ended: 2023-12-25 19:32:16.341987575 +0530 IST m=+250.315184625',5,36,1),(46,'2023-12-25 19:47:22.785553744 +0530 IST m=+1156.758750794','ACTIVE',5,36,1),(47,'2023-12-25 19:54:46.655150424 +0530 IST m=+1600.628347494','ACTIVE',5,36,1),(48,'2023-12-25 19:54:52.302501076 +0530 IST m=+1606.275698126','ACTIVE',5,36,1),(49,'2023-12-25 19:54:53.235988511 +0530 IST m=+1607.209185561','ACTIVE',5,36,1),(50,'2023-12-25 19:54:54.551648194 +0530 IST m=+1608.524845254','ACTIVE',5,36,1),(51,'2023-12-25 19:54:54.899831174 +0530 IST m=+1608.873028224','ACTIVE',5,36,1),(52,'2023-12-25 19:54:55.525588105 +0530 IST m=+1609.498785155','ACTIVE',5,36,1),(53,'2023-12-27 15:07:41.266933121 +0530 IST m=+9.988488168','ACTIVE',5,36,1),(54,'2023-12-27 15:09:14.973457152 +0530 IST m=+4.479301824','ACTIVE',5,36,1),(55,'2023-12-27 15:09:53.334291769 +0530 IST m=+42.840136431','ACTIVE',5,36,1),(56,'2023-12-27 15:18:43.319563856 +0530 IST m=+2.667835415','ACTIVE',5,36,1),(57,'2023-12-27 15:23:52.048471051 +0530 IST m=+11.369743082','ACTIVE',5,36,1),(58,'2023-12-27 15:26:58.80120062 +0530 IST m=+15.717661576','ACTIVE',5,36,1),(59,'2023-12-27 16:43:49.912161684 +0530 IST m=+5.211436045','ACTIVE',5,36,1),(60,'2023-12-27 16:50:07.527230356 +0530 IST m=+382.826504717','ACTIVE',5,36,1),(61,'2023-12-27 17:07:31.695010286 +0530 IST m=+17.611166193','ACTIVE',5,36,1),(62,'2023-12-27 17:10:45.935707017 +0530 IST m=+10.316023169','ACTIVE',5,36,1),(63,'2023-12-27 17:11:36.527710233 +0530 IST m=+3.208596908','ACTIVE',5,36,1),(64,'2023-12-27 17:12:25.06821588 +0530 IST m=+51.749102555','ACTIVE',5,36,1),(65,'2023-12-27 17:13:43.226891486 +0530 IST m=+16.707005411','ACTIVE',5,36,1),(66,'2023-12-27 19:05:54.501535352 +0530 IST m=+63.092097251','ACTIVE',5,36,1),(67,'2023-12-27 19:06:40.725478544 +0530 IST m=+109.316040443','ACTIVE',5,36,1);
/*!40000 ALTER TABLE `user_histories` ENABLE KEYS */;
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
