-- MySQL dump 10.13  Distrib 8.0.42, for Win64 (x86_64)
--
-- Host: localhost    Database: social_media_analysis
-- ------------------------------------------------------
-- Server version	8.0.42

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
-- Table structure for table `followers`
--

DROP TABLE IF EXISTS `followers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `followers` (
  `follow_id` int NOT NULL,
  `follower_id` int NOT NULL,
  `following_id` int NOT NULL,
  `relationship_status` varchar(20) DEFAULT NULL,
  `notification_enabled` tinyint(1) DEFAULT NULL,
  `source` varchar(50) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`follow_id`),
  KEY `follower_id` (`follower_id`),
  KEY `following_id` (`following_id`),
  CONSTRAINT `followers_ibfk_1` FOREIGN KEY (`follower_id`) REFERENCES `users` (`user_id`),
  CONSTRAINT `followers_ibfk_2` FOREIGN KEY (`following_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `followers`
--

LOCK TABLES `followers` WRITE;
/*!40000 ALTER TABLE `followers` DISABLE KEYS */;
INSERT INTO `followers` VALUES (1,579,715,'accepted',1,'suggestion','2026-04-07 20:11:27'),(2,515,291,'accepted',0,'search','2025-03-06 04:53:28'),(3,808,283,'blocked',0,'search','2026-07-10 05:46:28'),(4,627,1574,'pending',0,'suggestion','2026-07-17 17:21:29'),(5,1622,1674,'pending',1,'suggestion','2026-05-04 11:23:08'),(6,1992,1820,'pending',0,'search','2025-02-27 23:20:10'),(7,316,1479,'blocked',0,'suggestion','2025-05-10 06:34:32'),(8,1318,1107,'blocked',1,'suggestion','2025-10-27 04:45:52'),(9,348,478,'pending',1,'search','2025-01-21 15:52:46'),(10,575,459,'pending',0,'suggestion','2025-12-03 21:31:47'),(11,629,1749,'accepted',1,'profile','2026-07-21 08:49:04'),(12,75,1894,'accepted',1,'suggestion','2025-01-04 04:04:00'),(13,665,1624,'pending',0,'search','2025-08-20 20:22:50'),(14,1421,1173,'accepted',1,'profile','2026-01-06 07:16:13'),(15,853,1921,'blocked',0,'profile','2026-06-27 19:01:42'),(16,794,1967,'accepted',0,'suggestion','2025-12-15 11:50:47'),(17,1857,36,'accepted',0,'profile','2026-01-26 08:21:12'),(18,846,368,'pending',0,'suggestion','2025-03-16 04:57:44'),(19,1677,926,'accepted',1,'profile','2025-03-14 03:00:46'),(20,156,1324,'blocked',0,'suggestion','2025-10-05 09:40:23'),(21,3,1694,'blocked',0,'search','2026-05-28 12:59:10'),(22,266,1663,'pending',1,'profile','2025-10-15 02:44:59'),(23,582,1765,'blocked',1,'profile','2025-12-15 10:01:18'),(24,1331,1011,'pending',0,'search','2026-05-19 02:12:16'),(25,808,1219,'blocked',1,'profile','2025-03-24 15:22:15'),(26,371,561,'blocked',1,'suggestion','2025-01-20 09:43:20'),(27,1923,179,'blocked',1,'search','2025-03-23 08:13:07'),(28,1959,1619,'pending',1,'suggestion','2025-06-04 09:05:41'),(29,274,1484,'blocked',0,'suggestion','2025-01-10 01:19:19'),(30,1660,228,'accepted',1,'search','2026-08-12 02:28:08'),(31,1164,529,'accepted',1,'suggestion','2026-06-12 21:02:00'),(32,243,1187,'pending',1,'suggestion','2025-08-17 21:07:07'),(33,1962,1275,'blocked',1,'suggestion','2025-02-21 20:43:13'),(34,1123,1103,'pending',0,'search','2025-01-14 12:08:20'),(35,768,1062,'accepted',1,'profile','2025-08-26 22:40:36'),(36,517,1670,'pending',0,'suggestion','2026-06-03 00:15:15'),(37,1365,1782,'pending',0,'suggestion','2026-03-16 06:15:43'),(38,561,1263,'pending',0,'suggestion','2025-02-16 09:21:06'),(39,1700,1997,'accepted',1,'search','2026-02-10 17:04:21'),(40,1244,1837,'pending',0,'suggestion','2026-04-28 02:52:46'),(41,17,1779,'accepted',0,'suggestion','2025-05-02 02:58:10'),(42,1649,1602,'accepted',0,'search','2026-03-02 03:43:51'),(43,450,857,'blocked',1,'search','2026-08-06 03:09:49'),(44,1129,1647,'pending',1,'profile','2025-04-28 04:34:19'),(45,1925,1217,'blocked',0,'suggestion','2026-05-17 19:07:38'),(46,1328,508,'blocked',0,'search','2026-05-11 23:18:24'),(47,1726,112,'blocked',1,'profile','2025-03-01 16:44:09'),(48,890,444,'pending',1,'suggestion','2026-06-23 11:25:36'),(49,1577,1141,'blocked',1,'search','2026-05-30 23:05:14'),(50,93,1343,'blocked',0,'search','2025-07-13 03:43:46'),(51,393,1307,'accepted',1,'suggestion','2025-02-13 21:33:54'),(52,493,652,'pending',0,'search','2026-01-02 08:50:09'),(53,1944,371,'blocked',0,'suggestion','2025-09-16 19:28:25'),(54,1514,1308,'pending',1,'suggestion','2025-04-12 18:20:02'),(55,1885,1506,'accepted',0,'profile','2025-01-21 16:36:23'),(56,743,729,'accepted',0,'profile','2026-07-27 05:56:00'),(57,29,175,'pending',0,'profile','2025-08-17 12:33:53'),(58,258,1152,'blocked',1,'suggestion','2026-04-03 08:48:57'),(59,1729,204,'pending',1,'profile','2025-08-15 07:35:25'),(60,1740,291,'blocked',1,'profile','2025-08-16 13:06:19'),(61,1123,1843,'pending',1,'profile','2025-08-07 15:03:52'),(62,355,831,'blocked',1,'profile','2025-08-02 04:56:29'),(63,1989,834,'blocked',0,'suggestion','2025-07-07 02:26:02'),(64,481,1789,'pending',1,'suggestion','2025-04-22 05:41:02'),(65,1258,441,'accepted',1,'search','2025-09-19 11:58:48'),(66,385,1670,'accepted',0,'search','2026-02-08 16:36:00'),(67,735,1971,'pending',0,'profile','2026-01-02 23:07:32'),(68,5,310,'pending',0,'profile','2026-06-08 19:46:40'),(69,1391,1996,'accepted',1,'search','2026-05-14 22:38:29'),(70,1341,116,'blocked',0,'profile','2025-03-05 18:20:06'),(71,162,192,'pending',1,'search','2025-11-04 18:19:24'),(72,1173,529,'accepted',0,'search','2025-09-28 20:19:26'),(73,134,1410,'accepted',0,'suggestion','2025-02-13 21:40:30'),(74,785,224,'blocked',0,'profile','2026-04-24 06:05:54'),(75,1799,358,'pending',1,'profile','2026-04-22 16:23:07'),(76,1686,321,'blocked',1,'search','2025-04-07 19:29:19'),(77,84,1139,'accepted',1,'profile','2025-02-05 16:09:09'),(78,1758,1068,'accepted',1,'suggestion','2025-10-27 00:08:54'),(79,519,408,'accepted',0,'search','2026-04-12 22:57:26'),(80,303,1127,'pending',0,'suggestion','2025-07-13 22:04:05'),(81,531,1642,'pending',1,'profile','2025-11-12 01:49:55'),(82,1391,78,'blocked',0,'profile','2026-05-20 18:59:57'),(83,696,91,'accepted',1,'suggestion','2025-06-15 03:13:51'),(84,1973,1136,'pending',0,'profile','2025-12-31 11:16:44'),(85,456,968,'blocked',0,'search','2025-11-24 00:53:07'),(86,1913,897,'blocked',1,'profile','2025-07-08 05:58:45'),(87,1753,351,'accepted',0,'profile','2025-05-01 23:32:30'),(88,1200,463,'pending',1,'search','2026-04-01 04:52:21'),(89,1642,1688,'accepted',0,'profile','2025-01-27 08:59:35'),(90,1338,144,'pending',0,'search','2026-01-28 15:58:50'),(91,1339,1851,'pending',0,'search','2025-01-28 02:44:24'),(92,1452,143,'accepted',1,'search','2025-01-19 07:07:17'),(93,477,366,'blocked',1,'profile','2025-01-14 10:32:05'),(94,1830,535,'accepted',0,'search','2025-04-08 01:56:07'),(95,295,1936,'accepted',1,'profile','2026-07-24 19:19:12'),(96,1839,1300,'blocked',1,'suggestion','2025-07-28 20:50:55'),(97,1630,602,'pending',1,'search','2026-02-24 04:31:31'),(98,419,1441,'accepted',0,'profile','2025-09-29 06:32:17'),(99,1667,722,'accepted',0,'suggestion','2026-02-08 19:08:06'),(100,344,647,'accepted',0,'suggestion','2026-04-23 20:30:43'),(101,424,56,'blocked',0,'search','2025-05-13 14:50:30'),(102,619,1128,'pending',1,'search','2025-05-01 00:38:38'),(103,328,1500,'blocked',0,'profile','2026-06-24 02:21:11'),(104,747,257,'blocked',0,'suggestion','2025-03-16 08:46:31'),(105,622,761,'accepted',0,'search','2025-06-10 14:07:03'),(106,1518,1107,'blocked',0,'profile','2025-06-21 13:35:41'),(107,933,1955,'blocked',0,'suggestion','2026-02-10 21:41:23'),(108,451,680,'pending',0,'profile','2025-09-28 12:46:34'),(109,284,136,'blocked',1,'search','2025-02-19 22:11:00'),(110,1724,526,'pending',0,'suggestion','2025-11-14 19:04:39'),(111,1984,456,'accepted',0,'suggestion','2025-07-25 14:59:45'),(112,978,1346,'pending',0,'suggestion','2025-03-16 19:05:22'),(113,957,1223,'pending',1,'search','2025-10-17 04:45:34'),(114,1722,1219,'pending',0,'suggestion','2025-05-17 01:38:44'),(115,614,211,'accepted',1,'search','2025-05-22 21:23:03'),(116,1050,353,'pending',0,'search','2025-07-26 09:38:46'),(117,1477,718,'blocked',1,'profile','2025-01-25 18:59:03'),(118,141,803,'pending',0,'suggestion','2026-06-07 19:00:28'),(119,830,1575,'pending',0,'suggestion','2026-06-20 04:26:19'),(120,1801,1768,'pending',0,'suggestion','2025-11-06 04:47:11'),(121,86,1750,'accepted',1,'profile','2026-07-15 11:49:15'),(122,805,1794,'accepted',1,'suggestion','2026-07-11 05:00:13'),(123,1262,623,'pending',1,'suggestion','2025-10-09 12:20:52'),(124,1029,1130,'accepted',1,'search','2025-01-18 04:24:54'),(125,1728,1023,'accepted',0,'profile','2026-06-12 14:40:38'),(126,738,495,'accepted',1,'profile','2025-03-12 06:00:53'),(127,700,1712,'accepted',0,'profile','2025-06-13 20:58:12'),(128,410,1205,'blocked',0,'profile','2025-05-13 16:44:47'),(129,1805,663,'accepted',0,'profile','2025-11-26 12:03:59'),(130,1485,70,'accepted',1,'search','2025-12-03 00:59:14'),(131,1286,422,'blocked',0,'search','2025-03-29 03:16:35'),(132,1717,743,'pending',0,'profile','2025-12-04 20:40:51'),(133,1082,192,'blocked',0,'search','2026-02-08 02:30:43'),(134,460,1821,'pending',0,'search','2025-03-23 22:15:53'),(135,760,1140,'accepted',0,'search','2025-09-14 20:11:18'),(136,637,48,'accepted',1,'search','2025-02-08 10:11:15'),(137,1872,1884,'pending',0,'suggestion','2025-06-10 11:28:20'),(138,1927,1214,'blocked',0,'suggestion','2025-12-25 22:39:37'),(139,1749,778,'blocked',0,'search','2025-06-14 22:20:23'),(140,1740,705,'pending',0,'search','2026-04-05 11:08:28');
/*!40000 ALTER TABLE `followers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-10-02 10:49:45
