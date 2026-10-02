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
-- Table structure for table `reports`
--

DROP TABLE IF EXISTS `reports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reports` (
  `report_id` int NOT NULL,
  `reporter_id` int NOT NULL,
  `reported_user_id` int NOT NULL,
  `report_type` varchar(50) DEFAULT NULL,
  `reason` text,
  `priority` varchar(20) DEFAULT NULL,
  `status` varchar(30) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`report_id`),
  KEY `reporter_id` (`reporter_id`),
  KEY `reported_user_id` (`reported_user_id`),
  CONSTRAINT `reports_ibfk_1` FOREIGN KEY (`reporter_id`) REFERENCES `users` (`user_id`),
  CONSTRAINT `reports_ibfk_2` FOREIGN KEY (`reported_user_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reports`
--

LOCK TABLES `reports` WRITE;
/*!40000 ALTER TABLE `reports` DISABLE KEYS */;
INSERT INTO `reports` VALUES (1,1900,1088,'misinformation','Possible copyright issue','low','dismissed','2025-09-17 11:07:07'),(2,1467,129,'spam','Spam content','medium','resolved','2026-05-26 07:03:11'),(3,648,1969,'copyright','Spam content','high','reviewing','2025-08-01 15:10:39'),(4,215,291,'copyright','Possible copyright issue','low','open','2025-04-13 21:46:52'),(5,75,191,'copyright','Spam content','low','resolved','2025-11-17 02:00:54'),(6,946,899,'spam','Harassment reported','low','resolved','2025-12-04 06:31:49'),(7,1633,1369,'spam','Harassment reported','low','open','2026-07-22 18:10:53'),(8,277,1308,'spam','Possible copyright issue','high','resolved','2025-06-14 06:58:42'),(9,212,1654,'spam','Spam content','medium','resolved','2025-04-18 17:40:26'),(10,1314,1280,'copyright','Harassment reported','medium','open','2025-07-09 06:37:24'),(11,1211,1558,'harassment','Spam content','high','dismissed','2026-06-03 07:52:07'),(12,1205,491,'copyright','Misleading information','high','dismissed','2025-05-14 11:31:02'),(13,1770,589,'copyright','Spam content','high','reviewing','2025-11-22 10:35:35'),(14,616,232,'spam','Misleading information','medium','open','2026-03-10 07:37:31'),(15,1759,950,'misinformation','Possible copyright issue','high','resolved','2025-04-18 20:04:15'),(16,608,372,'spam','Spam content','medium','reviewing','2025-06-15 13:08:36'),(17,336,1723,'copyright','Spam content','high','dismissed','2025-10-03 05:08:56'),(18,1907,87,'misinformation','Harassment reported','medium','dismissed','2025-09-08 23:43:40'),(19,453,548,'misinformation','Harassment reported','low','open','2025-02-18 13:16:51'),(20,381,904,'misinformation','Harassment reported','low','reviewing','2026-02-09 10:30:37'),(21,943,94,'spam','Possible copyright issue','high','reviewing','2025-02-04 00:46:13'),(22,1389,1577,'copyright','Misleading information','medium','resolved','2026-05-20 03:36:02'),(23,1781,1719,'harassment','Possible copyright issue','medium','dismissed','2025-07-05 18:30:01'),(24,562,1892,'spam','Misleading information','medium','reviewing','2025-04-11 15:23:04'),(25,579,704,'harassment','Misleading information','high','open','2025-04-26 04:55:19'),(26,552,28,'spam','Harassment reported','medium','open','2025-03-31 19:34:24'),(27,179,487,'harassment','Possible copyright issue','medium','open','2025-07-16 17:15:56'),(28,1066,738,'copyright','Possible copyright issue','low','resolved','2025-10-20 17:35:04'),(29,1083,389,'misinformation','Harassment reported','medium','reviewing','2026-08-10 21:10:59'),(30,858,199,'copyright','Possible copyright issue','medium','dismissed','2025-04-01 13:13:08'),(31,1442,165,'copyright','Misleading information','high','resolved','2025-05-24 17:06:33'),(32,206,1060,'harassment','Misleading information','medium','open','2025-07-01 12:53:44'),(33,1760,1621,'spam','Possible copyright issue','low','resolved','2026-01-09 08:26:04'),(34,1509,1466,'spam','Possible copyright issue','low','resolved','2026-01-07 11:25:47'),(35,1750,1970,'misinformation','Harassment reported','low','resolved','2025-03-04 06:07:36'),(36,1135,1403,'copyright','Possible copyright issue','high','resolved','2025-02-09 04:17:29'),(37,51,961,'harassment','Possible copyright issue','low','reviewing','2026-05-27 20:38:39'),(38,1922,1698,'misinformation','Possible copyright issue','medium','open','2025-05-09 05:15:28'),(39,736,1668,'spam','Spam content','high','reviewing','2026-01-26 13:33:31'),(40,1200,1209,'copyright','Misleading information','high','dismissed','2025-10-01 23:57:13'),(41,371,1256,'harassment','Spam content','high','open','2026-01-15 15:29:14'),(42,1501,1360,'misinformation','Possible copyright issue','medium','dismissed','2025-08-27 06:19:54'),(43,996,1114,'harassment','Misleading information','high','dismissed','2025-05-24 13:54:43'),(44,1381,1849,'harassment','Misleading information','medium','dismissed','2026-03-15 03:06:14'),(45,1722,1904,'harassment','Harassment reported','medium','open','2025-11-13 18:59:45'),(46,50,839,'copyright','Possible copyright issue','high','resolved','2025-12-28 10:20:39'),(47,1982,546,'copyright','Misleading information','high','resolved','2026-02-18 01:13:10'),(48,1837,999,'harassment','Misleading information','medium','reviewing','2026-05-05 23:20:56'),(49,119,1892,'misinformation','Misleading information','medium','reviewing','2026-04-13 17:04:55'),(50,162,1950,'spam','Possible copyright issue','medium','dismissed','2025-02-05 19:55:20');
/*!40000 ALTER TABLE `reports` ENABLE KEYS */;
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
