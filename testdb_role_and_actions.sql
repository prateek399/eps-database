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
-- Table structure for table `role_and_actions`
--

DROP TABLE IF EXISTS `role_and_actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_and_actions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `role_id` bigint unsigned DEFAULT NULL,
  `feature_id` bigint unsigned DEFAULT NULL,
  `permission` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_roles_role_and_actions` (`role_id`),
  KEY `fk_features_role_and_actions` (`feature_id`),
  CONSTRAINT `fk_features_role_and_actions` FOREIGN KEY (`feature_id`) REFERENCES `features` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_roles_role_and_actions` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=541 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_and_actions`
--

LOCK TABLES `role_and_actions` WRITE;
/*!40000 ALTER TABLE `role_and_actions` DISABLE KEYS */;
INSERT INTO `role_and_actions` VALUES (1,2,1,1),(2,2,2,1),(3,2,3,2),(4,2,4,2),(5,2,5,2),(6,2,6,2),(7,2,7,2),(8,2,8,1),(9,2,9,2),(10,2,10,2),(11,2,11,2),(12,2,12,2),(13,2,13,1),(14,2,14,2),(15,2,15,2),(16,2,16,2),(17,2,17,2),(18,2,18,2),(19,2,19,2),(20,2,20,2),(21,2,21,1),(22,2,22,1),(23,2,23,1),(24,2,24,1),(25,2,25,1),(26,2,26,1),(27,2,27,2),(28,2,28,2),(29,2,29,2),(30,2,30,2),(121,6,1,1),(122,6,2,1),(123,6,3,0),(124,6,4,0),(125,6,5,0),(126,6,6,0),(127,6,7,0),(128,6,8,1),(129,6,9,0),(130,6,10,0),(131,6,11,0),(132,6,12,0),(133,6,13,1),(134,6,14,0),(135,6,15,0),(136,6,16,0),(137,6,17,0),(138,6,18,0),(139,6,19,0),(140,6,20,0),(141,6,21,1),(142,6,22,0),(143,6,23,0),(144,6,24,0),(145,6,25,0),(146,6,26,0),(147,6,27,0),(148,6,28,0),(149,6,29,0),(150,6,30,0),(151,7,1,1),(152,7,2,1),(153,7,3,0),(154,7,4,0),(155,7,5,0),(156,7,6,0),(157,7,7,0),(158,7,8,1),(159,7,9,0),(160,7,10,0),(161,7,11,0),(162,7,12,0),(163,7,13,1),(164,7,14,0),(165,7,15,0),(166,7,16,0),(167,7,17,0),(168,7,18,0),(169,7,19,0),(170,7,20,0),(171,7,21,1),(172,7,22,0),(173,7,23,0),(174,7,24,0),(175,7,25,0),(176,7,26,0),(177,7,27,0),(178,7,28,0),(179,7,29,0),(180,7,30,0),(181,8,1,1),(182,8,2,1),(183,8,3,0),(184,8,4,0),(185,8,5,0),(186,8,6,0),(187,8,7,0),(188,8,8,1),(189,8,9,0),(190,8,10,0),(191,8,11,0),(192,8,12,0),(193,8,13,1),(194,8,14,0),(195,8,15,0),(196,8,16,0),(197,8,17,0),(198,8,18,0),(199,8,19,0),(200,8,20,0),(201,8,21,1),(202,8,22,0),(203,8,23,0),(204,8,24,0),(205,8,25,0),(206,8,26,0),(207,8,27,0),(208,8,28,0),(209,8,29,0),(210,8,30,0),(211,9,1,1),(212,9,2,1),(213,9,3,0),(214,9,4,0),(215,9,5,0),(216,9,6,0),(217,9,7,0),(218,9,8,1),(219,9,9,0),(220,9,10,0),(221,9,11,0),(222,9,12,0),(223,9,13,1),(224,9,14,0),(225,9,15,0),(226,9,16,0),(227,9,17,0),(228,9,18,0),(229,9,19,0),(230,9,20,0),(231,9,21,1),(232,9,22,0),(233,9,23,0),(234,9,24,0),(235,9,25,0),(236,9,26,0),(237,9,27,0),(238,9,28,0),(239,9,29,0),(240,9,30,0),(241,10,1,1),(242,10,2,1),(243,10,3,0),(244,10,4,0),(245,10,5,0),(246,10,6,0),(247,10,7,0),(248,10,8,1),(249,10,9,0),(250,10,10,0),(251,10,11,0),(252,10,12,0),(253,10,13,1),(254,10,14,0),(255,10,15,0),(256,10,16,0),(257,10,17,0),(258,10,18,0),(259,10,19,0),(260,10,20,0),(261,10,21,1),(262,10,22,0),(263,10,23,0),(264,10,24,0),(265,10,25,0),(266,10,26,0),(267,10,27,0),(268,10,28,0),(269,10,29,0),(270,10,30,0),(271,11,1,1),(272,11,2,1),(273,11,3,0),(274,11,4,0),(275,11,5,0),(276,11,6,0),(277,11,7,0),(278,11,8,1),(279,11,9,0),(280,11,10,0),(281,11,11,0),(282,11,12,0),(283,11,13,1),(284,11,14,0),(285,11,15,0),(286,11,16,0),(287,11,17,0),(288,11,18,0),(289,11,19,0),(290,11,20,0),(291,11,21,1),(292,11,22,0),(293,11,23,0),(294,11,24,0),(295,11,25,0),(296,11,26,0),(297,11,27,0),(298,11,28,0),(299,11,29,0),(300,11,30,0),(301,12,1,1),(302,12,2,1),(303,12,3,0),(304,12,4,0),(305,12,5,0),(306,12,6,0),(307,12,7,0),(308,12,8,1),(309,12,9,0),(310,12,10,0),(311,12,11,0),(312,12,12,0),(313,12,13,1),(314,12,14,0),(315,12,15,0),(316,12,16,0),(317,12,17,0),(318,12,18,0),(319,12,19,0),(320,12,20,0),(321,12,21,1),(322,12,22,0),(323,12,23,0),(324,12,24,0),(325,12,25,0),(326,12,26,0),(327,12,27,0),(328,12,28,0),(329,12,29,0),(330,12,30,0),(331,13,1,1),(332,13,2,1),(333,13,3,0),(334,13,4,0),(335,13,5,0),(336,13,6,0),(337,13,7,0),(338,13,8,1),(339,13,9,0),(340,13,10,0),(341,13,11,0),(342,13,12,0),(343,13,13,1),(344,13,14,0),(345,13,15,0),(346,13,16,0),(347,13,17,0),(348,13,18,0),(349,13,19,0),(350,13,20,0),(351,13,21,1),(352,13,22,0),(353,13,23,0),(354,13,24,0),(355,13,25,0),(356,13,26,0),(357,13,27,0),(358,13,28,0),(359,13,29,0),(360,13,30,0),(361,14,1,1),(362,14,2,1),(363,14,3,1),(364,14,4,0),(365,14,5,0),(366,14,6,0),(367,14,7,0),(368,14,8,1),(369,14,9,0),(370,14,10,0),(371,14,11,0),(372,14,12,0),(373,14,13,1),(374,14,14,0),(375,14,15,0),(376,14,16,0),(377,14,17,0),(378,14,18,0),(379,14,19,0),(380,14,20,0),(381,14,21,1),(382,14,22,0),(383,14,23,0),(384,14,24,0),(385,14,25,0),(386,14,26,0),(387,14,27,0),(388,14,28,0),(389,14,29,0),(390,14,30,0),(391,15,1,1),(392,15,2,1),(393,15,3,0),(394,15,4,0),(395,15,5,0),(396,15,6,0),(397,15,7,0),(398,15,8,1),(399,15,9,0),(400,15,10,0),(401,15,11,0),(402,15,12,0),(403,15,13,1),(404,15,14,0),(405,15,15,0),(406,15,16,0),(407,15,17,0),(408,15,18,0),(409,15,19,0),(410,15,20,0),(411,15,21,1),(412,15,22,0),(413,15,23,0),(414,15,24,0),(415,15,25,0),(416,15,26,0),(417,15,27,0),(418,15,28,0),(419,15,29,0),(420,15,30,0),(421,16,1,4),(422,16,2,4),(423,16,3,2),(424,16,4,2),(425,16,5,2),(426,16,6,2),(427,16,7,2),(428,16,8,4),(429,16,9,0),(430,16,10,0),(431,16,11,0),(432,16,12,0),(433,16,13,4),(434,16,14,0),(435,16,15,0),(436,16,16,0),(437,16,17,0),(438,16,18,0),(439,16,19,0),(440,16,20,0),(441,16,21,4),(442,16,22,0),(443,16,23,0),(444,16,24,0),(445,16,25,0),(446,16,26,0),(447,16,27,0),(448,16,28,0),(449,16,29,0),(450,16,30,0),(451,17,1,4),(452,17,2,4),(453,17,3,0),(454,17,4,0),(455,17,5,0),(456,17,6,0),(457,17,7,0),(458,17,8,4),(459,17,9,0),(460,17,10,0),(461,17,11,0),(462,17,12,0),(463,17,13,4),(464,17,14,0),(465,17,15,0),(466,17,16,0),(467,17,17,0),(468,17,18,0),(469,17,19,0),(470,17,20,0),(471,17,21,4),(472,17,22,0),(473,17,23,0),(474,17,24,0),(475,17,25,0),(476,17,26,0),(477,17,27,0),(478,17,28,0),(479,17,29,0),(480,17,30,0),(481,18,1,4),(482,18,2,4),(483,18,3,0),(484,18,4,0),(485,18,5,0),(486,18,6,0),(487,18,7,0),(488,18,8,4),(489,18,9,0),(490,18,10,0),(491,18,11,0),(492,18,12,0),(493,18,13,4),(494,18,14,0),(495,18,15,0),(496,18,16,0),(497,18,17,0),(498,18,18,0),(499,18,19,0),(500,18,20,0),(501,18,21,4),(502,18,22,0),(503,18,23,0),(504,18,24,0),(505,18,25,0),(506,18,26,0),(507,18,27,0),(508,18,28,0),(509,18,29,0),(510,18,30,0),(511,19,1,4),(512,19,2,4),(513,19,3,1),(514,19,4,1),(515,19,5,1),(516,19,6,0),(517,19,7,0),(518,19,8,4),(519,19,9,0),(520,19,10,0),(521,19,11,0),(522,19,12,0),(523,19,13,4),(524,19,14,0),(525,19,15,0),(526,19,16,0),(527,19,17,0),(528,19,18,0),(529,19,19,0),(530,19,20,0),(531,19,21,4),(532,19,22,0),(533,19,23,0),(534,19,24,0),(535,19,25,0),(536,19,26,0),(537,19,27,0),(538,19,28,0),(539,19,29,0),(540,19,30,0);
/*!40000 ALTER TABLE `role_and_actions` ENABLE KEYS */;
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
