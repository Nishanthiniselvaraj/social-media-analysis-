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
-- Table structure for table `hashtags`
--

DROP TABLE IF EXISTS `hashtags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hashtags` (
  `hashtag_id` int NOT NULL,
  `hashtag_name` varchar(100) NOT NULL,
  `category` varchar(50) DEFAULT NULL,
  `usage_count` int DEFAULT NULL,
  `post_count` int DEFAULT NULL,
  `trending_score` decimal(5,2) DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`hashtag_id`),
  KEY `created_by` (`created_by`),
  CONSTRAINT `hashtags_ibfk_1` FOREIGN KEY (`created_by`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hashtags`
--

LOCK TABLES `hashtags` WRITE;
/*!40000 ALTER TABLE `hashtags` DISABLE KEYS */;
INSERT INTO `hashtags` VALUES (1,'#fitness1','Lifestyle',529,252,20.89,1902,'active','2025-12-05 02:28:04'),(2,'#technology2','Entertainment',4844,587,35.21,964,'active','2025-07-12 10:14:11'),(3,'#travel3','Entertainment',212,911,10.42,1935,'inactive','2025-05-08 21:45:03'),(4,'#movies4','Technology',147,900,91.92,811,'inactive','2025-05-17 12:02:49'),(5,'#coding5','Lifestyle',295,168,40.43,564,'active','2025-04-19 20:54:01'),(6,'#ai6','Technology',4222,107,23.67,314,'inactive','2025-06-19 14:05:32'),(7,'#photography7','Technology',4285,502,71.51,1458,'active','2026-04-15 14:55:27'),(8,'#photography8','Entertainment',1238,416,51.64,1851,'inactive','2025-07-15 06:02:37'),(9,'#python9','Entertainment',4997,72,92.38,160,'active','2026-06-18 05:26:56'),(10,'#travel10','Lifestyle',4072,162,15.48,1698,'active','2025-11-03 00:46:16'),(11,'#technology11','Technology',2212,403,71.03,702,'inactive','2026-06-11 19:04:46'),(12,'#coding12','Education',846,650,53.04,967,'active','2025-07-24 14:19:30'),(13,'#food13','Lifestyle',51,232,43.31,958,'active','2026-02-18 10:08:37'),(14,'#coding14','Education',3148,250,77.96,973,'active','2026-08-21 19:32:45'),(15,'#fitness15','Travel',272,208,38.45,987,'active','2025-11-23 02:58:55'),(16,'#education16','Technology',89,432,7.09,1900,'inactive','2025-08-30 18:10:06'),(17,'#books17','Education',1435,93,32.27,897,'inactive','2025-02-20 08:43:37'),(18,'#photography18','Lifestyle',4126,90,80.56,1053,'inactive','2026-06-19 20:01:02'),(19,'#food19','Education',3314,579,51.12,938,'active','2025-06-27 19:21:19'),(20,'#travel20','Entertainment',4606,733,9.06,1818,'active','2026-02-04 21:53:37'),(21,'#education21','Education',4054,921,54.32,179,'active','2025-10-02 16:51:16'),(22,'#books22','Travel',940,931,60.87,1485,'active','2026-01-24 01:47:52'),(23,'#python23','Education',2970,949,63.52,1708,'inactive','2026-06-02 23:24:04'),(24,'#food24','Technology',461,315,50.67,1885,'inactive','2026-06-14 20:10:41'),(25,'#music25','Education',2344,392,38.08,1880,'active','2025-04-02 02:05:46'),(26,'#python26','Lifestyle',2577,245,10.96,52,'active','2025-10-26 19:13:35'),(27,'#food27','Technology',1685,751,71.25,461,'active','2025-03-23 17:54:10'),(28,'#education28','Education',4894,72,9.99,1568,'active','2025-10-24 11:02:05'),(29,'#books29','Travel',1608,990,51.86,508,'active','2025-02-24 15:52:03'),(30,'#ai30','Travel',3844,115,77.62,100,'inactive','2025-05-20 13:38:12'),(31,'#travel31','Lifestyle',3864,654,9.22,1232,'active','2026-03-29 00:49:54'),(32,'#python32','Entertainment',4606,53,91.10,70,'active','2026-06-09 23:23:08'),(33,'#coding33','Entertainment',208,768,23.59,1776,'active','2025-01-06 14:01:44'),(34,'#education34','Travel',613,885,87.33,1897,'active','2025-06-11 15:14:57'),(35,'#technology35','Education',3932,898,72.82,511,'active','2025-10-26 22:58:13'),(36,'#coding36','Travel',2216,366,84.69,439,'active','2026-01-30 03:01:50'),(37,'#music37','Travel',2321,737,93.18,1381,'active','2026-08-03 04:12:02'),(38,'#movies38','Technology',2112,664,82.33,939,'inactive','2025-01-28 13:39:56'),(39,'#books39','Entertainment',2115,207,4.37,1542,'inactive','2026-03-08 23:27:47'),(40,'#photography40','Travel',4891,320,88.94,803,'inactive','2025-12-25 18:29:15'),(41,'#travel41','Technology',4725,747,96.18,1422,'active','2025-09-16 02:59:55'),(42,'#travel42','Lifestyle',1667,911,47.36,1518,'inactive','2025-02-10 23:55:08'),(43,'#fitness43','Entertainment',1596,692,24.01,236,'active','2026-04-28 01:06:07'),(44,'#python44','Education',2822,833,43.65,347,'active','2025-08-05 13:41:24'),(45,'#python45','Entertainment',3555,230,46.55,214,'active','2025-09-07 00:25:34'),(46,'#coding46','Travel',1082,680,87.64,1375,'active','2025-04-06 17:27:43'),(47,'#technology47','Entertainment',2433,925,78.70,1783,'active','2025-02-15 22:37:07'),(48,'#technology48','Education',902,728,81.53,635,'active','2025-01-08 05:38:19'),(49,'#food49','Entertainment',3410,817,24.35,1989,'active','2026-03-28 02:39:29'),(50,'#food50','Travel',867,830,0.85,1730,'active','2025-03-05 04:37:28'),(51,'#photography51','Entertainment',4502,15,79.51,1512,'active','2026-07-21 19:04:08'),(52,'#music52','Technology',375,112,97.99,1098,'inactive','2026-01-31 14:14:23'),(53,'#fitness53','Lifestyle',629,220,25.67,899,'active','2026-05-13 10:54:24'),(54,'#movies54','Entertainment',4751,542,24.33,708,'active','2026-07-30 14:44:37'),(55,'#photography55','Education',4295,90,21.28,744,'active','2025-04-17 03:51:52'),(56,'#movies56','Technology',158,490,50.04,531,'active','2026-05-04 14:26:34'),(57,'#food57','Entertainment',3371,897,48.88,1146,'inactive','2025-05-25 07:28:58'),(58,'#travel58','Education',1318,76,87.07,1884,'active','2025-01-31 22:30:50'),(59,'#fitness59','Entertainment',4643,107,42.18,341,'active','2025-07-30 20:25:21'),(60,'#photography60','Education',1972,695,66.13,1190,'inactive','2025-07-18 13:38:56'),(61,'#coding61','Entertainment',179,50,26.41,1635,'active','2026-01-25 17:47:39'),(62,'#technology62','Lifestyle',34,190,18.45,948,'active','2025-12-23 08:40:50'),(63,'#food63','Lifestyle',598,474,13.64,1671,'active','2025-01-06 15:31:21'),(64,'#python64','Lifestyle',1239,211,86.34,972,'inactive','2025-06-01 23:01:49'),(65,'#coding65','Travel',127,872,3.74,1282,'active','2025-06-07 21:54:08'),(66,'#coding66','Education',2360,871,47.10,1499,'active','2026-04-17 09:52:00'),(67,'#python67','Lifestyle',1383,107,37.16,201,'active','2025-12-09 08:37:56'),(68,'#photography68','Education',433,169,5.39,206,'active','2025-01-13 15:17:41'),(69,'#fitness69','Education',3539,103,13.85,774,'active','2025-02-26 07:45:56'),(70,'#ai70','Lifestyle',1657,707,55.04,974,'active','2026-03-06 15:11:49'),(71,'#coding71','Education',2526,748,5.78,1525,'active','2026-02-15 07:36:47'),(72,'#food72','Education',4424,793,44.57,1579,'active','2025-10-16 01:35:41'),(73,'#music73','Education',4807,730,71.44,389,'active','2026-05-21 04:04:02'),(74,'#books74','Lifestyle',2676,96,89.56,804,'active','2026-02-06 08:16:37'),(75,'#technology75','Lifestyle',2356,454,17.62,1046,'active','2025-02-25 09:20:21'),(76,'#technology76','Entertainment',3499,654,26.09,1393,'inactive','2025-02-16 17:56:44'),(77,'#fitness77','Travel',3382,190,91.59,1552,'inactive','2025-02-13 15:17:04'),(78,'#education78','Entertainment',2218,925,60.21,495,'active','2026-01-05 00:03:17'),(79,'#education79','Education',1489,473,98.04,448,'active','2025-05-17 14:15:35'),(80,'#fitness80','Education',2473,875,45.75,332,'active','2025-04-22 08:55:11');
/*!40000 ALTER TABLE `hashtags` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-10-02 10:49:43
