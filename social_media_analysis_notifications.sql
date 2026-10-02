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
-- Table structure for table `notifications`
--

DROP TABLE IF EXISTS `notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notifications` (
  `notification_id` int NOT NULL,
  `user_id` int NOT NULL,
  `notification_text` text,
  `notification_type` varchar(30) DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`notification_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `notifications_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notifications`
--

LOCK TABLES `notifications` WRITE;
/*!40000 ALTER TABLE `notifications` DISABLE KEYS */;
INSERT INTO `notifications` VALUES (1,1218,'New comment','report',1,'2025-03-05 08:21:38'),(2,4,'New comment','report',0,'2025-01-07 08:20:15'),(3,1575,'New follower','comment',1,'2026-02-21 07:07:45'),(4,932,'Someone liked your post','report',0,'2026-03-01 01:57:36'),(5,1959,'Your report was reviewed','like',0,'2025-02-15 19:43:14'),(6,1373,'Someone liked your post','comment',0,'2025-10-15 08:22:23'),(7,244,'Your report was reviewed','follow',1,'2026-03-22 01:21:58'),(8,1755,'Someone liked your post','comment',0,'2025-09-29 04:32:19'),(9,167,'New comment','like',0,'2025-05-07 17:35:12'),(10,375,'Someone liked your post','like',0,'2025-10-15 05:50:09'),(11,1605,'New follower','follow',0,'2026-06-23 09:34:28'),(12,1143,'New follower','follow',1,'2026-03-02 05:42:19'),(13,1471,'Your report was reviewed','report',0,'2025-11-07 03:38:39'),(14,1019,'New follower','report',0,'2025-06-25 07:09:38'),(15,1354,'Someone liked your post','report',0,'2026-03-20 20:44:15'),(16,1197,'New follower','comment',0,'2026-08-03 20:06:28'),(17,344,'New follower','like',1,'2025-02-03 19:40:19'),(18,9,'Someone liked your post','follow',1,'2025-11-05 05:58:08'),(19,170,'Someone liked your post','report',1,'2025-03-10 06:59:09'),(20,612,'Your report was reviewed','like',1,'2025-10-01 11:22:13'),(21,1152,'Someone liked your post','like',1,'2025-01-18 17:10:35'),(22,1047,'Someone liked your post','comment',0,'2026-07-17 19:43:06'),(23,933,'New comment','like',0,'2025-06-04 06:34:39'),(24,1009,'Your report was reviewed','follow',0,'2026-01-28 18:15:34'),(25,668,'New comment','like',1,'2025-11-03 18:28:52'),(26,155,'Someone liked your post','comment',0,'2026-07-16 05:52:20'),(27,126,'Your report was reviewed','follow',1,'2025-12-16 04:54:36'),(28,910,'Someone liked your post','comment',1,'2025-06-03 05:44:27'),(29,1330,'New comment','follow',0,'2025-08-25 10:55:17'),(30,609,'New comment','follow',1,'2025-10-13 09:07:27'),(31,655,'Your report was reviewed','follow',0,'2025-01-12 03:10:08'),(32,328,'New follower','comment',0,'2025-11-25 01:42:55'),(33,1778,'New follower','comment',0,'2025-06-28 19:52:47'),(34,1676,'Someone liked your post','comment',1,'2025-12-06 13:37:28'),(35,596,'Your report was reviewed','follow',0,'2025-01-04 15:58:10'),(36,1961,'New follower','report',1,'2025-05-23 02:39:43'),(37,1647,'New follower','follow',0,'2025-05-04 02:17:09'),(38,1504,'Your report was reviewed','follow',1,'2025-04-05 21:01:58'),(39,1170,'Someone liked your post','report',1,'2025-12-31 10:09:58'),(40,1304,'New follower','report',1,'2025-03-21 15:35:38'),(41,502,'Your report was reviewed','comment',0,'2026-04-05 23:40:52'),(42,592,'New follower','comment',0,'2025-02-17 11:06:41'),(43,1393,'Your report was reviewed','comment',1,'2026-05-24 09:17:36'),(44,745,'New follower','like',0,'2026-06-07 01:34:51'),(45,1716,'New follower','report',1,'2025-06-14 18:45:30'),(46,155,'Your report was reviewed','report',0,'2025-04-20 11:47:09'),(47,974,'New follower','report',0,'2025-05-05 09:04:23'),(48,1852,'New follower','report',1,'2025-10-03 19:59:03'),(49,1789,'New comment','report',1,'2025-09-04 08:32:32'),(50,205,'Someone liked your post','comment',0,'2025-07-26 13:34:58'),(51,1993,'New follower','report',1,'2025-01-14 13:45:28'),(52,426,'Someone liked your post','report',0,'2025-01-03 00:03:08'),(53,304,'Your report was reviewed','follow',0,'2026-07-20 23:48:26'),(54,1123,'Your report was reviewed','comment',0,'2025-11-28 21:04:23'),(55,1347,'Someone liked your post','comment',0,'2026-03-31 08:34:40'),(56,1379,'New follower','like',0,'2026-03-30 18:55:37'),(57,1952,'New comment','like',1,'2025-08-27 00:17:47'),(58,1508,'Your report was reviewed','like',0,'2025-04-15 15:21:52'),(59,104,'New comment','comment',0,'2026-01-08 01:59:26'),(60,1616,'New comment','like',0,'2026-02-04 20:01:05'),(61,338,'New comment','like',0,'2026-05-27 21:46:33'),(62,48,'Someone liked your post','report',1,'2026-05-02 14:17:52'),(63,1173,'Someone liked your post','follow',0,'2025-01-08 09:57:47'),(64,1976,'New follower','comment',0,'2025-09-03 10:30:04'),(65,1831,'Someone liked your post','like',1,'2025-09-24 12:13:09'),(66,406,'Your report was reviewed','comment',1,'2025-02-26 09:30:29'),(67,1010,'New comment','comment',1,'2026-06-26 06:07:26'),(68,1392,'Someone liked your post','report',0,'2026-07-30 17:12:43'),(69,1693,'Someone liked your post','report',0,'2025-09-13 19:31:06'),(70,1574,'New comment','comment',0,'2025-12-18 14:49:02'),(71,1683,'New comment','comment',1,'2025-01-05 11:38:50'),(72,1507,'Your report was reviewed','follow',1,'2025-02-14 00:29:36'),(73,867,'Your report was reviewed','comment',0,'2026-01-18 14:04:37'),(74,382,'Your report was reviewed','comment',0,'2025-11-02 15:51:18'),(75,67,'New follower','report',0,'2026-04-14 04:12:56'),(76,1409,'New comment','like',0,'2025-08-23 19:32:49'),(77,86,'New follower','follow',1,'2025-08-31 13:54:40'),(78,1750,'Your report was reviewed','comment',0,'2025-12-14 19:28:59'),(79,665,'New follower','report',1,'2025-04-15 12:08:15'),(80,13,'New comment','report',0,'2025-08-06 06:23:19'),(81,1309,'New follower','like',1,'2025-06-26 12:46:09'),(82,297,'Your report was reviewed','follow',1,'2025-05-22 20:15:41'),(83,512,'Your report was reviewed','follow',1,'2025-04-17 21:07:35'),(84,1719,'Your report was reviewed','report',1,'2025-02-18 18:13:47'),(85,1223,'Someone liked your post','report',1,'2025-01-26 05:31:54'),(86,263,'Your report was reviewed','like',0,'2026-01-09 10:06:47'),(87,556,'Your report was reviewed','comment',1,'2025-05-04 11:53:59'),(88,13,'Someone liked your post','follow',0,'2025-08-01 23:49:18'),(89,914,'Someone liked your post','like',0,'2025-09-02 14:57:12'),(90,244,'New follower','comment',0,'2026-02-06 20:01:38'),(91,1479,'New comment','comment',1,'2025-09-29 08:58:23'),(92,1133,'Your report was reviewed','report',1,'2025-07-20 21:32:58'),(93,306,'New follower','like',1,'2026-05-03 15:16:42'),(94,368,'Your report was reviewed','comment',1,'2026-08-05 11:42:46'),(95,1213,'New comment','report',0,'2025-03-06 00:28:12'),(96,1178,'Your report was reviewed','follow',0,'2025-02-04 18:51:44'),(97,158,'Your report was reviewed','like',0,'2025-07-23 04:48:00'),(98,254,'Your report was reviewed','follow',1,'2026-07-10 23:42:22'),(99,1696,'New follower','follow',1,'2026-01-19 05:58:42'),(100,1777,'Your report was reviewed','follow',1,'2025-01-13 06:38:10'),(101,9,'New comment','like',0,'2025-10-16 11:20:36'),(102,1204,'New follower','comment',0,'2025-03-29 05:07:54'),(103,1154,'Someone liked your post','comment',1,'2026-07-25 14:22:13'),(104,787,'Someone liked your post','comment',0,'2026-01-24 03:33:02'),(105,766,'New follower','follow',0,'2025-08-14 02:11:26'),(106,1319,'Someone liked your post','follow',0,'2025-05-29 18:51:14'),(107,1513,'Someone liked your post','follow',0,'2025-03-22 16:09:48'),(108,640,'New follower','follow',0,'2025-11-01 10:29:30'),(109,1703,'New follower','like',1,'2025-10-29 12:47:09'),(110,1083,'New follower','report',1,'2026-03-28 13:48:40'),(111,399,'Your report was reviewed','follow',0,'2026-04-07 23:39:41'),(112,930,'Someone liked your post','report',0,'2025-11-08 20:53:24'),(113,353,'New follower','like',0,'2026-08-20 04:17:40'),(114,372,'Your report was reviewed','like',1,'2025-04-06 15:00:53'),(115,1808,'New comment','like',1,'2025-12-14 13:52:53'),(116,1592,'New follower','follow',1,'2025-10-18 17:27:42'),(117,224,'Someone liked your post','like',0,'2025-05-27 10:32:07'),(118,1427,'New comment','follow',0,'2026-02-27 21:06:36'),(119,1363,'New comment','report',0,'2025-02-13 08:08:34'),(120,767,'New follower','follow',0,'2025-02-03 13:04:14');
/*!40000 ALTER TABLE `notifications` ENABLE KEYS */;
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
