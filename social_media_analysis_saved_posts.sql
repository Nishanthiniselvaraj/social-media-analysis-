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
-- Table structure for table `saved_posts`
--

DROP TABLE IF EXISTS `saved_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `saved_posts` (
  `saved_post_id` int NOT NULL,
  `user_id` int NOT NULL,
  `post_id` int NOT NULL,
  `collection_name` varchar(100) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`saved_post_id`),
  KEY `user_id` (`user_id`),
  KEY `post_id` (`post_id`),
  CONSTRAINT `saved_posts_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  CONSTRAINT `saved_posts_ibfk_2` FOREIGN KEY (`post_id`) REFERENCES `posts` (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `saved_posts`
--

LOCK TABLES `saved_posts` WRITE;
/*!40000 ALTER TABLE `saved_posts` DISABLE KEYS */;
INSERT INTO `saved_posts` VALUES (1,451,18,'Saved','2026-02-01 23:37:11'),(2,1481,86,'Read later','2025-01-25 01:27:08'),(3,1701,45,'Important','2026-02-24 12:15:28'),(4,757,58,'Important','2025-09-19 19:20:07'),(5,610,46,'Read later','2025-05-02 14:13:35'),(6,1977,138,'Read later','2025-07-26 08:21:53'),(7,1642,110,'Important','2025-03-02 22:59:53'),(8,1728,134,'Saved','2026-04-02 18:50:33'),(9,1095,47,'Important','2025-01-23 05:37:21'),(10,377,45,'Important','2026-04-10 18:45:07'),(11,1871,59,'Read later','2026-07-09 01:00:48'),(12,1027,63,'Important','2025-11-26 15:16:34'),(13,173,139,'Read later','2025-02-19 05:29:54'),(14,474,53,'Read later','2025-05-10 19:01:01'),(15,224,83,'Important','2026-05-04 06:09:09'),(16,1916,80,'Important','2025-12-23 10:08:11'),(17,162,90,'Read later','2025-09-12 06:48:33'),(18,1132,132,'Important','2026-06-19 11:07:12'),(19,1588,49,'Saved','2026-06-23 02:03:16'),(20,563,127,'Important','2025-07-25 01:06:25'),(21,1941,122,'Important','2025-08-31 20:49:39'),(22,48,20,'Important','2026-02-11 10:09:32'),(23,161,46,'Read later','2026-06-24 23:03:24'),(24,504,81,'Saved','2025-12-31 20:51:18'),(25,798,50,'Important','2025-03-05 23:41:46'),(26,992,130,'Saved','2026-05-13 10:33:12'),(27,945,128,'Saved','2026-05-01 19:47:28'),(28,425,93,'Read later','2025-05-27 20:28:46'),(29,845,127,'Important','2025-08-16 18:10:58'),(30,1605,11,'Saved','2025-02-12 11:22:25'),(31,901,72,'Saved','2026-05-25 17:19:29'),(32,302,2,'Important','2025-02-25 22:11:58'),(33,178,85,'Saved','2025-06-09 19:35:49'),(34,1145,118,'Important','2026-01-13 17:13:06'),(35,34,40,'Important','2026-04-28 02:37:00'),(36,1180,35,'Important','2025-08-29 04:21:56'),(37,228,109,'Read later','2025-11-23 04:39:07'),(38,481,94,'Important','2026-06-21 09:05:27'),(39,273,115,'Read later','2025-02-15 20:28:08'),(40,1225,2,'Read later','2026-05-17 22:16:23'),(41,1271,124,'Important','2026-01-29 23:18:33'),(42,1813,87,'Saved','2026-02-22 08:20:33'),(43,1995,9,'Saved','2025-05-22 03:27:21'),(44,825,26,'Important','2025-02-22 01:08:23'),(45,1667,138,'Important','2026-07-16 15:31:25'),(46,349,140,'Read later','2025-02-13 22:34:34'),(47,827,100,'Saved','2025-09-27 06:39:41'),(48,1448,83,'Saved','2025-06-12 11:58:26'),(49,917,76,'Important','2026-05-01 20:17:33'),(50,1644,75,'Important','2025-11-19 11:57:53'),(51,1004,131,'Saved','2025-06-12 21:56:07'),(52,1311,42,'Important','2026-01-31 13:31:21'),(53,1609,55,'Saved','2025-04-26 15:29:15'),(54,1650,122,'Saved','2025-12-05 02:22:10'),(55,725,89,'Read later','2025-08-01 23:11:58'),(56,822,112,'Read later','2025-05-07 02:09:19'),(57,770,14,'Saved','2025-05-26 23:22:01'),(58,768,43,'Saved','2025-05-29 23:49:32'),(59,263,35,'Important','2025-11-20 10:36:43'),(60,1073,90,'Important','2025-11-28 11:45:19'),(61,232,133,'Read later','2026-05-30 01:07:11'),(62,1280,55,'Saved','2026-04-09 18:44:14'),(63,1913,101,'Read later','2026-07-29 07:36:58'),(64,1367,61,'Saved','2025-04-21 23:19:28'),(65,1493,84,'Saved','2025-04-05 03:21:07'),(66,17,130,'Read later','2025-01-18 21:59:40'),(67,1029,78,'Saved','2025-09-07 05:08:31'),(68,1366,7,'Read later','2026-01-21 11:35:35'),(69,1592,63,'Important','2025-01-08 02:24:58'),(70,1698,106,'Saved','2025-10-10 07:23:05'),(71,242,136,'Read later','2025-10-01 04:12:11'),(72,1827,99,'Important','2025-11-01 22:02:36'),(73,304,16,'Important','2026-03-25 13:22:12'),(74,1671,39,'Saved','2025-04-18 06:30:21'),(75,836,127,'Read later','2025-09-06 19:45:21'),(76,1324,95,'Saved','2026-03-31 00:43:39'),(77,271,17,'Important','2025-11-15 09:52:55'),(78,323,97,'Saved','2025-08-07 10:52:45'),(79,799,21,'Saved','2025-10-25 12:14:00'),(80,1421,79,'Important','2025-11-21 23:48:43'),(81,58,132,'Read later','2025-01-15 10:38:43'),(82,322,41,'Read later','2026-01-29 15:30:34'),(83,423,89,'Important','2025-09-13 03:04:16'),(84,916,116,'Read later','2025-03-16 23:33:07'),(85,702,116,'Read later','2025-10-20 10:26:37'),(86,1855,48,'Important','2025-06-30 15:42:49'),(87,1503,72,'Read later','2025-01-26 01:17:27'),(88,860,64,'Important','2025-01-01 20:45:32'),(89,218,103,'Read later','2025-04-26 10:15:44'),(90,459,57,'Read later','2026-06-30 23:02:40'),(91,823,82,'Read later','2026-01-26 02:28:35'),(92,352,96,'Saved','2025-10-07 05:48:10'),(93,1039,16,'Read later','2026-02-23 21:00:19'),(94,1532,62,'Read later','2026-06-02 00:44:37'),(95,347,95,'Saved','2026-03-24 12:44:09'),(96,1412,55,'Read later','2025-02-13 22:52:30'),(97,798,130,'Saved','2025-04-23 04:47:06'),(98,305,56,'Read later','2025-04-25 21:27:36'),(99,296,137,'Important','2025-01-08 08:14:10'),(100,230,133,'Important','2025-11-03 23:51:14');
/*!40000 ALTER TABLE `saved_posts` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-10-02 10:49:44
