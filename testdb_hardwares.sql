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
-- Table structure for table `hardwares`
--

DROP TABLE IF EXISTS `hardwares`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hardwares` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `hardware_value` varchar(250) DEFAULT NULL,
  `bandwidth` varchar(100) DEFAULT NULL,
  `cpu` varchar(300) DEFAULT NULL,
  `ram` varchar(300) DEFAULT NULL,
  `hdd` varchar(300) DEFAULT NULL,
  `current_active_network` varchar(300) DEFAULT NULL,
  `hdd_usage` varchar(300) DEFAULT NULL,
  `cpu_usage` varchar(300) DEFAULT NULL,
  `ram_usage` varchar(300) DEFAULT NULL,
  `os` varchar(50) DEFAULT NULL,
  `organization_id` bigint unsigned DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `key_value_id` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_hardwares_deleted_at` (`deleted_at`),
  KEY `fk_users_hardwares` (`user_id`),
  KEY `fk_organizations_hardwares` (`organization_id`),
  CONSTRAINT `fk_organizations_hardwares` FOREIGN KEY (`organization_id`) REFERENCES `organizations` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_users_hardwares` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hardwares`
--

LOCK TABLES `hardwares` WRITE;
/*!40000 ALTER TABLE `hardwares` DISABLE KEYS */;
INSERT INTO `hardwares` VALUES (3,NULL,'2023-11-22 02:33:44.498',NULL,'0d8e337ce1cdb53eeeb9c8a41bca1547-0d8e337ce1cdb53eeeb9c8a41bca1547-0d8e337ce1cdb53eeeb9c8a41bca1547-0d8e337ce1cdb53eeeb9c8a41bca1547-0d8e337ce1cdb53eeeb9c8a41bca1547',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL),(4,NULL,'2023-12-20 13:07:07.913',NULL,'363e68bc16e36b61d67cdd9e0d8457f6-363e68bc16e36b61d67cdd9e0d8457f6-363e68bc16e36b61d67cdd9e0d8457f6-363e68bc16e36b61d67cdd9e0d8457f6-363e68bc16e36b61d67cdd9e0d8457f6','{\"in\":\"4.250888 kbps\",\"out\":\"2.918520 kbps\"}','Ryzen 9 35000MHz','16 GB','2TB','{\"active_connection\":[{\"desc\":\"Intel(R) Wi-Fi 6 AX201 160MHz\",\"gateway\":\"192.168.198.1\",\"interface_name\":\"Wi-Fi 2\",\"ip\":\"192.168.198.128\",\"physical_addr\":\"F0:57:A6:67:33:29\"}]}','{\"drives\":{\"C:\\\\\":{\"free\":\"55.831348 GB\",\"total\":\"287.501949 GB\",\"used\":\"231.670601 GB\"},\"D:\\\\\":{\"free\":\"0.545689 GB\",\"total\":\"90.949215 GB\",\"used\":\"90.403526 GB\"}}}','2.085355 %','{\"free\":\"2.011799 GB\",\"total\":\"15.788383 GB\",\"used\":\"13.776585 GB\"}','Windows',1,3,NULL),(5,NULL,'2023-12-27 19:06:40.725',NULL,'25ea376c938fc74704188f91c2e93b7f-25ea376c938fc74704188f91c2e93b7f-25ea376c938fc74704188f91c2e93b7f-25ea376c938fc74704188f91c2e93b7f-25ea376c938fc74704188f91c2e93b7f','{\"in\":\"4.250888 kbps\",\"out\":\"2.918520 kbps\"}',NULL,NULL,NULL,'{\"active_connection\":[{\"desc\":\"Intel(R) Wi-Fi 6 AX201 160MHz\",\"gateway\":\"192.168.198.1\",\"interface_name\":\"Wi-Fi 2\",\"ip\":\"192.168.198.128\",\"physical_addr\":\"F0:57:A6:67:33:29\"}]}','{\"drives\":{\"C:\\\\\":{\"free\":\"55.831348 GB\",\"total\":\"287.501949 GB\",\"used\":\"231.670601 GB\"},\"D:\\\\\":{\"free\":\"0.545689 GB\",\"total\":\"90.949215 GB\",\"used\":\"90.403526 GB\"}}}','2.085355 %','{\"free\":\"2.011799 GB\",\"total\":\"15.788383 GB\",\"used\":\"13.776585 GB\"}','window',1,30,5),(6,NULL,'2023-12-20 21:14:17.024',NULL,'84b4103f6fa737850e7f5437b5882964-84b4103f6fa737850e7f5437b5882964-84b4103f6fa737850e7f5437b5882964-84b4103f6fa737850e7f5437b5882964-84b4103f6fa737850e7f5437b5882964',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,26,NULL),(7,NULL,'2023-11-22 03:13:38.041',NULL,'e72485b4a170d2015061a39647b2904a-e72485b4a170d2015061a39647b2904a-e72485b4a170d2015061a39647b2904a-e72485b4a170d2015061a39647b2904a-e72485b4a170d2015061a39647b2904a',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,4,NULL),(8,NULL,'2023-11-24 14:58:37.581',NULL,'652bb01126e8963faff2547e1e16e1b6-652bb01126e8963faff2547e1e16e1b6-652bb01126e8963faff2547e1e16e1b6-652bb01126e8963faff2547e1e16e1b6-652bb01126e8963faff2547e1e16e1b6','{\'in\': \'4.250888 kbps\', \'out\': \'2.918520 kbps\'}','i5 10GEN','16 GB','2TB','{\'active_connection\': [{\'desc\': \'Intel(R) Wi-Fi 6 AX201 160MHz\', \'gateway\': \'192.168.198.1\', \'interface_name\': \'Wi-Fi 2\', \'ip\': \'192.168.198.128\', \'physical_addr\': \'F0:57:A6:67:33:29\'}]}','{\'drives\': {\'C:\\\\\': {\'free\': \'55.831348 GB\', \'total\': \'287.501949 GB\', \'used\': \'231.670601 GB\'}, \'D:\\\\\': {\'free\': \'0.545689 GB\', \'total\': \'90.949215 GB\', \'used\': \'90.403526 GB\'}}}','2.085355 %','{\'free\': \'2.011799 GB\', \'total\': \'15.788383 GB\', \'used\': \'13.776585 GB\'}',NULL,1,4,NULL),(9,NULL,'2023-11-22 03:14:28.471',NULL,'92368d22d8bf6259a471d66fb207bc32-dcb27662e768179825fd1df337d7f4b1-0eb73b0b4c6590f0f99079b2234ba294-d41d8cd98f00b204e9800998ecf8427e-d41d8cd98f00b204e9800998ecf8427e',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,4,NULL);
/*!40000 ALTER TABLE `hardwares` ENABLE KEYS */;
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
