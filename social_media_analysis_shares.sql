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
-- Table structure for table `shares`
--

DROP TABLE IF EXISTS `shares`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shares` (
  `share_id` int NOT NULL,
  `user_id` int NOT NULL,
  `post_id` int NOT NULL,
  `share_type` varchar(30) DEFAULT NULL,
  `shared_to` varchar(50) DEFAULT NULL,
  `message` text,
  `device_type` varchar(30) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`share_id`),
  KEY `user_id` (`user_id`),
  KEY `post_id` (`post_id`),
  CONSTRAINT `shares_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  CONSTRAINT `shares_ibfk_2` FOREIGN KEY (`post_id`) REFERENCES `posts` (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shares`
--

LOCK TABLES `shares` WRITE;
/*!40000 ALTER TABLE `shares` DISABLE KEYS */;
INSERT INTO `shares` VALUES (1,362,116,'story','group','Interesting post.','Android','2025-03-25 03:07:51'),(2,1904,40,'feed','friend','Check this out!','Android','2025-12-09 23:30:31'),(3,1446,60,'message','friend','Sharing this.','iOS','2025-08-11 10:36:59'),(4,1892,19,'feed','profile','Sharing this.','iOS','2026-04-24 04:25:48'),(5,548,118,'story','group','Check this out!','Android','2025-01-12 00:56:08'),(6,306,14,'message','friend','Interesting post.','iOS','2025-02-26 00:35:15'),(7,638,33,'story','friend','Sharing this.','iOS','2026-08-01 03:43:10'),(8,1350,4,'story','friend','Interesting post.','iOS','2025-02-24 16:14:38'),(9,76,92,'message','group','Interesting post.','Android','2025-01-17 21:42:00'),(10,1673,102,'feed','group','Interesting post.','Android','2025-05-31 00:06:17'),(11,1594,112,'feed','friend','Sharing this.','Android','2025-08-11 09:46:22'),(12,684,33,'story','friend','Sharing this.','Web','2026-08-21 23:07:29'),(13,1354,3,'story','profile','Sharing this.','Web','2026-04-06 14:39:13'),(14,314,8,'story','group','Check this out!','Web','2025-10-24 13:48:18'),(15,665,136,'feed','friend','Interesting post.','Android','2025-09-04 00:32:01'),(16,173,136,'story','friend','Sharing this.','iOS','2025-05-22 23:12:35'),(17,85,103,'story','group','Interesting post.','iOS','2026-02-27 05:12:55'),(18,1604,115,'feed','friend','Interesting post.','Android','2026-03-27 02:57:13'),(19,215,9,'story','friend','Sharing this.','Android','2026-05-31 09:59:43'),(20,941,131,'message','profile','Sharing this.','iOS','2026-03-06 15:34:59'),(21,1086,17,'message','profile','Sharing this.','Android','2025-07-21 04:13:32'),(22,528,119,'message','group','Check this out!','Android','2025-06-12 15:15:16'),(23,665,139,'feed','group','Interesting post.','Web','2025-06-19 06:28:28'),(24,763,79,'story','profile','Sharing this.','iOS','2026-03-01 11:01:46'),(25,1023,57,'message','friend','Sharing this.','Web','2025-07-09 04:44:04'),(26,1938,56,'message','friend','Check this out!','iOS','2026-08-16 11:20:10'),(27,1191,27,'story','profile','Sharing this.','iOS','2025-01-11 14:49:21'),(28,1746,90,'feed','profile','Interesting post.','iOS','2026-07-08 15:09:57'),(29,1900,130,'feed','profile','Check this out!','Android','2025-01-27 14:26:46'),(30,1036,8,'story','group','Interesting post.','Android','2025-10-31 04:24:14'),(31,982,42,'feed','profile','Interesting post.','Android','2025-10-22 09:20:11'),(32,1511,48,'message','profile','Check this out!','Web','2025-08-12 06:21:43'),(33,742,6,'feed','friend','Interesting post.','iOS','2025-08-04 23:44:57'),(34,496,81,'feed','friend','Interesting post.','Android','2025-06-16 18:06:53'),(35,1174,31,'story','profile','Check this out!','Web','2025-07-31 21:46:48'),(36,749,110,'feed','group','Sharing this.','Android','2025-11-14 03:43:48'),(37,284,58,'story','group','Interesting post.','Android','2025-02-09 22:58:16'),(38,1714,5,'story','friend','Sharing this.','Android','2025-06-26 05:10:03'),(39,439,132,'message','profile','Sharing this.','iOS','2026-01-12 16:03:47'),(40,1064,26,'feed','profile','Sharing this.','Android','2025-02-11 14:26:23'),(41,1291,104,'story','friend','Interesting post.','Android','2025-12-28 04:47:34'),(42,203,52,'message','friend','Interesting post.','iOS','2026-02-25 07:35:02'),(43,1775,61,'feed','profile','Sharing this.','Android','2025-05-05 03:21:20'),(44,1843,114,'message','profile','Interesting post.','Android','2026-05-06 06:22:08'),(45,656,94,'message','friend','Check this out!','Web','2025-05-25 07:29:54'),(46,166,4,'feed','friend','Sharing this.','iOS','2025-08-19 12:56:08'),(47,47,135,'feed','group','Sharing this.','Web','2025-09-08 04:50:47'),(48,1354,17,'feed','friend','Sharing this.','Android','2025-01-08 18:44:26'),(49,405,109,'feed','group','Interesting post.','iOS','2026-03-14 14:06:35'),(50,741,118,'story','group','Check this out!','Android','2025-06-04 11:52:43'),(51,1037,82,'message','friend','Sharing this.','Web','2025-10-15 09:21:57'),(52,533,53,'feed','group','Check this out!','Android','2025-08-08 14:28:22'),(53,749,91,'feed','group','Sharing this.','Web','2026-05-28 11:12:48'),(54,880,34,'story','profile','Sharing this.','Android','2025-04-14 08:02:06'),(55,498,134,'feed','group','Interesting post.','iOS','2025-03-05 10:59:59'),(56,1402,139,'message','friend','Sharing this.','Android','2025-12-24 07:51:18'),(57,1155,90,'message','group','Check this out!','Web','2026-04-16 05:46:27'),(58,1260,27,'message','profile','Interesting post.','iOS','2025-03-11 08:40:49'),(59,1338,134,'feed','friend','Interesting post.','Web','2026-05-17 03:46:06'),(60,548,106,'feed','friend','Check this out!','iOS','2026-05-21 11:57:15'),(61,1453,119,'story','group','Sharing this.','Android','2025-10-07 02:49:31'),(62,945,77,'message','friend','Sharing this.','Web','2025-05-24 17:40:20'),(63,649,120,'message','group','Sharing this.','Web','2025-07-29 04:25:38'),(64,1613,82,'story','profile','Interesting post.','Android','2025-09-25 23:17:23'),(65,1054,38,'feed','friend','Sharing this.','Web','2025-06-29 22:36:01'),(66,764,34,'feed','profile','Check this out!','Web','2025-03-30 15:17:38'),(67,1655,65,'story','friend','Check this out!','iOS','2025-11-01 16:34:19'),(68,806,97,'story','profile','Sharing this.','iOS','2026-06-20 21:36:43'),(69,808,18,'feed','group','Check this out!','Android','2026-05-12 17:26:23'),(70,568,83,'feed','profile','Sharing this.','Android','2026-05-04 23:15:41'),(71,1408,8,'message','group','Interesting post.','Web','2025-10-04 10:26:18'),(72,804,102,'message','friend','Sharing this.','Web','2026-04-20 13:19:36'),(73,1630,108,'story','profile','Interesting post.','Web','2026-01-18 17:52:51'),(74,1903,48,'story','profile','Interesting post.','Android','2025-12-13 20:19:17'),(75,1921,61,'feed','friend','Check this out!','iOS','2025-08-29 09:31:36'),(76,55,14,'feed','profile','Sharing this.','iOS','2026-06-07 16:23:43'),(77,182,14,'message','profile','Interesting post.','iOS','2025-08-14 07:53:59'),(78,268,122,'message','group','Interesting post.','Web','2025-02-16 00:32:16'),(79,1504,47,'story','friend','Interesting post.','iOS','2025-01-22 21:36:45'),(80,666,88,'story','friend','Sharing this.','Web','2026-01-30 02:12:47'),(81,1037,83,'story','friend','Interesting post.','iOS','2025-04-21 21:14:11'),(82,1839,104,'message','group','Interesting post.','iOS','2026-07-23 15:08:14'),(83,11,79,'story','friend','Sharing this.','Android','2025-08-07 13:13:59'),(84,744,112,'story','friend','Check this out!','Android','2025-03-11 03:37:55'),(85,452,6,'story','group','Interesting post.','Android','2026-01-10 14:06:29'),(86,282,121,'message','group','Check this out!','Android','2026-01-08 18:54:54'),(87,1155,86,'story','group','Interesting post.','iOS','2025-11-06 13:25:20'),(88,462,3,'message','friend','Sharing this.','Android','2025-05-23 15:31:44'),(89,859,16,'feed','group','Sharing this.','Web','2025-06-01 17:01:59'),(90,1284,78,'feed','friend','Check this out!','Android','2026-05-25 01:16:02'),(91,1125,30,'message','group','Interesting post.','Android','2025-07-18 19:31:22'),(92,1064,21,'message','friend','Interesting post.','Web','2025-06-18 22:15:49'),(93,1763,131,'message','group','Check this out!','Android','2025-09-13 12:54:23'),(94,960,106,'message','profile','Check this out!','Android','2025-09-20 09:55:30'),(95,1276,20,'feed','friend','Sharing this.','Web','2025-04-06 11:06:18'),(96,343,100,'feed','profile','Sharing this.','Web','2026-06-18 05:56:57'),(97,1976,138,'feed','group','Sharing this.','Android','2026-06-29 00:41:46'),(98,1308,58,'feed','friend','Sharing this.','Web','2025-03-08 05:26:38'),(99,1020,92,'story','group','Sharing this.','iOS','2025-05-25 18:49:54'),(100,798,84,'feed','group','Sharing this.','iOS','2025-06-13 13:17:03');
/*!40000 ALTER TABLE `shares` ENABLE KEYS */;
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
