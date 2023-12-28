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
-- Table structure for table `features`
--

DROP TABLE IF EXISTS `features`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `features` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(150) DEFAULT NULL,
  `self_type` bigint DEFAULT '2',
  `id_grand_parent` bigint DEFAULT NULL,
  `id_parent` bigint DEFAULT NULL,
  `is_hide` bigint DEFAULT NULL,
  `position` bigint DEFAULT NULL,
  `possible_permission` bigint DEFAULT NULL,
  `message_id` longtext,
  `icon` longtext,
  `type` varchar(100) DEFAULT NULL,
  `path` varchar(100) DEFAULT NULL,
  `name` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `features`
--

LOCK TABLES `features` WRITE;
/*!40000 ALTER TABLE `features` DISABLE KEYS */;
INSERT INTO `features` VALUES (1,'Wijungle',1,0,0,0,1,1,'sidebar.app.wi','<link rel=\"stylesheet\" href=\"https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200\" />','group',NULL,NULL),(2,'User Management',2,0,1,0,2,1,'sidebar.app.dashboard.UserManagement','href=\"https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,700,0,200\"','collapse',NULL,NULL),(3,'Users',3,1,2,0,3,2,'sidebar.app.dashboard.userr','<BsCurrencyBitcoin/>',NULL,'/wijungle/UserManagement/USer_Folder','users'),(4,'User Groups',3,1,2,0,4,2,'sidebar.app.dashboard.UserGrp','<BsCurrencyBitcoin/>',NULL,'/UserGroup','user-group'),(5,'Key Management',2,0,1,0,5,2,'sidebar.app.dashboard.KeyManagement','data:image/svg+xml;base64,PHN2ZyB2aWV3Qm94PSIwIDAgMjggMjgiIGhlaWdodD0iMjggMjgiIHdpZHRoPSIyOCAyOCIgdmlld0JveD0iMCAwIDI4IDI4IiBmaWxsPSIjZmZmIiBzdHJva2U9Im5vbmUiPjxwYXRoIGQ9Ik0xMiAxMGM4LjI1NiAwIDE1IDcuNzk2IDE1IDE1cy03Ljc5NiAxNS0xNSAxNXYyMGMwLTguMjU2LTcuNzk2LTE1LTE1LTE1cy03Ljc5Ni0xNS0xNS0xNWgyOHoiLz48L3N2Zz4=',NULL,'/wijungle/KeyManagement/Key_Foder','keys'),(6,'Policy Management',2,0,1,0,6,2,'sidebar.app.dashboard.PolicyManagement','<AiOutlineForm/>',NULL,'/wijungle/PolicyManagement/Policy_Folders','rules'),(7,'Hardwares',2,0,1,0,7,2,'sidebar.app.dashboard.Hardware','<AiOutlineSetting/>',NULL,'/wijungle/Hardware/Hardware_TAb','hardware'),(8,'Classification Management',2,0,1,0,8,1,'sidebar.classification.classification','<AiOutlineApartment/>','collapse',NULL,NULL),(9,'Classifications',3,1,8,0,9,2,'sidebar.classification','<BsCurrencyBitcoin/>',NULL,'/wijungle/Classification/ClassFolder','classification'),(10,'Classification Groups',3,1,8,0,10,2,'sidebar.classificationgrp','<BsCurrencyBitcoin/>',NULL,'/GroupClassifications','classification-group'),(11,'App Control',2,0,1,0,11,2,'sidebar.appcontrol','<AiOutlineAppstore/>',NULL,'/wijungle/AppConrol/ACFoler','app-policy'),(12,'Device Control',2,0,1,0,12,2,'sidebar.devicecontrol','<AiTwotoneUsb/>',NULL,'/wijungle/DeviceControl/DCFolder','device-policy'),(13,'Data Leak Policy',2,0,1,0,13,1,'sidebar.dataleakpolicy','<AiOutlineDatabase/>','collapse',NULL,NULL),(14,'Local Printer Policy',3,1,13,0,14,2,'sidebar.locprinter','<BsCurrencyBitcoin/>',NULL,'/wijungle/DataLeakPolicy/Local-Printer','printer-dlp'),(15,'Web Protection Policy',3,1,13,0,15,2,'sidebar.WebProtectionpolicy','<BsCurrencyBitcoin/>',NULL,'/wijungle/DataLeakPolicy/Web-Protection','web-dlp'),(16,'Network Care Policy',3,1,13,0,16,2,'sidebar.dnetwcarey','<BsCurrencyBitcoin/>',NULL,'/wijungle/DataLeakPolicy/Network-Care','network-dlp'),(17,'Clip-Board Policy',3,1,13,0,17,2,'sidebar.clpboard','<BsCurrencyBitcoin/>',NULL,'/wijungle/DataLeakPolicy/Clip-board','clipboard-dlp'),(18,'Screen-Shot Policy',3,1,13,0,18,2,'sidebar.scsh','<BsCurrencyBitcoin/>',NULL,'/wijungle/DataLeakPolicy/Screen-shots','screenshot-dlp'),(19,'App File Access Policy',3,1,13,0,19,2,'sidebar.afs','<BsCurrencyBitcoin/>',NULL,'/wijungle/DataLeakPolicy/App-fil-Access','app-file-dlp'),(20,'Web Filtering',2,0,1,0,20,2,'sidebar.webfil','<FilterFilled/>',NULL,'/WebFiltering','web-filtering'),(21,'Reporting',2,0,1,0,21,1,'sidebar.reporting','<AiFillClockCircle/>','collapse',NULL,NULL),(22,'Users History',3,1,21,0,22,1,'sidebar.app.dashboard.UserHistory','<BsCurrencyBitcoin/>',NULL,'/wijungle/History/UserHistory/','user-history'),(23,'Audit Trails',3,1,21,0,23,1,'sidebar.audtrails','<BsCurrencyBitcoin/>',NULL,'/wijungle-audit-trails','audit-trails'),(24,'Auth Trails',3,1,21,0,24,1,'sidebar.auttrails','<BsCurrencyBitcoin/>',NULL,'/wijungle-auth-trails','auth-trails'),(25,'Incidents',3,1,21,0,25,1,'sidebar.incide','<BsCurrencyBitcoin/>',NULL,'/wijungle/Reporting/Incidents','reporting'),(26,'Analytics',3,1,21,0,26,1,'sidebar.analy','<BsCurrencyBitcoin/>',NULL,'/wijungle/History/UserHistory',NULL),(27,'Settings',2,0,1,0,27,2,'sidebar.settings','<BsCurrencyBitcoin/>',NULL,'/Settings','settings'),(28,'Antivirus',2,0,1,0,28,2,'sidebar.antivirus','<BsCurrencyBitcoin/>',NULL,'/Anti-Virus','antivirus'),(29,'Role and Permissions',2,0,1,0,29,2,'sidebar.rnp','<BsCurrencyBitcoin/>',NULL,'/SetRoles','role'),(30,'Account',2,0,1,0,30,2,'sidebar.pages.extraPages.account','<BsCurrencyBitcoin/>',NULL,'/extra-pages/account',NULL);
/*!40000 ALTER TABLE `features` ENABLE KEYS */;
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
