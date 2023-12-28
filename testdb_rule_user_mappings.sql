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
-- Table structure for table `rule_user_mappings`
--

DROP TABLE IF EXISTS `rule_user_mappings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rule_user_mappings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `rule_id` bigint unsigned DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `user_group_id` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_users_rule_user_map` (`user_id`),
  KEY `fk_user_groups_rule_user_map` (`user_group_id`),
  KEY `fk_rules_rule_user_map` (`rule_id`),
  CONSTRAINT `fk_rules_rule_user_map` FOREIGN KEY (`rule_id`) REFERENCES `rules` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_user_groups_rule_user_map` FOREIGN KEY (`user_group_id`) REFERENCES `user_groups` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_users_rule_user_map` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=1886 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rule_user_mappings`
--

LOCK TABLES `rule_user_mappings` WRITE;
/*!40000 ALTER TABLE `rule_user_mappings` DISABLE KEYS */;
INSERT INTO `rule_user_mappings` VALUES (1852,142,30,NULL),(1854,141,30,NULL),(1855,143,30,NULL),(1856,144,30,NULL),(1857,145,30,NULL),(1858,146,30,NULL),(1859,147,30,NULL),(1860,148,30,NULL),(1861,149,30,NULL),(1862,150,30,NULL),(1863,151,30,NULL),(1864,152,30,NULL),(1865,153,30,NULL),(1866,154,30,NULL),(1867,155,30,NULL),(1868,156,30,NULL),(1869,157,30,NULL),(1870,158,30,NULL),(1871,159,30,NULL),(1872,160,30,NULL),(1873,161,30,NULL),(1874,162,30,NULL),(1877,163,30,NULL),(1878,164,30,NULL),(1879,165,30,NULL),(1880,166,30,NULL),(1881,167,30,NULL),(1882,168,30,NULL),(1884,169,30,NULL),(1885,171,NULL,14);
/*!40000 ALTER TABLE `rule_user_mappings` ENABLE KEYS */;
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
