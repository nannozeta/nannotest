/*!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19  Distrib 10.11.8-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: bookstack
-- ------------------------------------------------------
-- Server version	10.11.8-MariaDB-0ubuntu0.24.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `activities`
--

DROP TABLE IF EXISTS `activities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `activities` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(191) NOT NULL,
  `detail` text NOT NULL,
  `user_id` int(11) NOT NULL,
  `ip` varchar(45) NOT NULL,
  `loggable_id` int(11) DEFAULT NULL,
  `loggable_type` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `activities_user_id_index` (`user_id`),
  KEY `activities_entity_id_index` (`loggable_id`),
  KEY `activities_key_index` (`type`),
  KEY `activities_created_at_index` (`created_at`),
  KEY `activities_ip_index` (`ip`)
) ENGINE=InnoDB AUTO_INCREMENT=139 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activities`
--

LOCK TABLES `activities` WRITE;
/*!40000 ALTER TABLE `activities` DISABLE KEYS */;
INSERT INTO `activities` VALUES
(1,'auth_login','standard; (1) Admin',1,'101.128.79.226',NULL,NULL,'2025-02-20 14:15:12','2025-02-20 14:15:12'),
(2,'auth_login','standard; (1) Admin',1,'180.254.166.144',NULL,NULL,'2025-02-22 04:37:30','2025-02-22 04:37:30'),
(3,'settings_update','customization',1,'180.254.166.144',NULL,NULL,'2025-02-22 04:57:10','2025-02-22 04:57:10'),
(4,'auth_login','standard; (1) Admin',1,'180.254.166.144',NULL,NULL,'2025-02-22 04:57:51','2025-02-22 04:57:51'),
(5,'auth_login','standard; (1) Admin',1,'180.254.166.144',NULL,NULL,'2025-02-22 04:59:38','2025-02-22 04:59:38'),
(6,'settings_update','customization',1,'180.254.166.144',NULL,NULL,'2025-02-22 05:00:21','2025-02-22 05:00:21'),
(7,'book_create','(1) Test',1,'180.254.166.144',1,'book','2025-02-22 05:03:51','2025-02-22 05:03:51'),
(8,'book_update','(1) Test',1,'180.254.166.144',1,'book','2025-02-22 05:10:00','2025-02-22 05:10:00'),
(9,'settings_update','customization',1,'180.254.166.144',NULL,NULL,'2025-02-22 05:12:09','2025-02-22 05:12:09'),
(10,'settings_update','customization',1,'180.254.166.144',NULL,NULL,'2025-02-22 05:12:41','2025-02-22 05:12:41'),
(11,'book_update','(1) Test',1,'180.254.166.144',1,'book','2025-02-22 05:13:21','2025-02-22 05:13:21'),
(12,'page_create','(1) New Page',1,'180.254.166.144',1,'page','2025-02-22 05:14:38','2025-02-22 05:14:38'),
(13,'page_update','(1) New Page',1,'180.254.166.144',1,'page','2025-02-22 05:15:23','2025-02-22 05:15:23'),
(14,'settings_update','features',1,'180.254.166.144',NULL,NULL,'2025-02-22 05:18:39','2025-02-22 05:18:39'),
(15,'settings_update','features',1,'180.254.166.144',NULL,NULL,'2025-02-22 05:18:48','2025-02-22 05:18:48'),
(16,'book_update','(1) Test',1,'180.254.166.144',1,'book','2025-02-22 05:24:02','2025-02-22 05:24:02'),
(17,'auth_login','standard; (1) Admin',1,'101.128.79.226',NULL,NULL,'2025-02-22 13:57:44','2025-02-22 13:57:44'),
(18,'book_update','(1) Test',1,'101.128.79.226',1,'book','2025-02-22 13:59:04','2025-02-22 13:59:04'),
(19,'book_update','(1) How To Configure Hysteria2 Server (UDP Forwarding)',1,'101.128.79.226',1,'book','2025-02-22 14:04:57','2025-02-22 14:04:57'),
(20,'page_create','(2) New Page',1,'101.128.79.226',2,'page','2025-02-22 14:05:39','2025-02-22 14:05:39'),
(21,'page_update','(2) New Page',1,'101.128.79.226',2,'page','2025-02-22 14:12:01','2025-02-22 14:12:01'),
(22,'page_update','(2) New Page',1,'101.128.79.226',2,'page','2025-02-22 14:16:51','2025-02-22 14:16:51'),
(23,'page_update','(2) New Page',1,'101.128.79.226',2,'page','2025-02-22 14:17:53','2025-02-22 14:17:53'),
(24,'page_update','(2) Configure the Server',1,'101.128.79.226',2,'page','2025-02-22 14:18:18','2025-02-22 14:18:18'),
(25,'page_update','(2) Configure the Server',1,'101.128.79.226',2,'page','2025-02-22 14:26:34','2025-02-22 14:26:34'),
(26,'page_update','(2) Configure the Server',1,'101.128.79.226',2,'page','2025-02-22 15:07:54','2025-02-22 15:07:54'),
(27,'page_delete','(1) New Page',1,'101.128.79.226',1,'page','2025-02-22 15:08:38','2025-02-22 15:08:38'),
(28,'page_update','(2) Configure the Server',1,'101.128.79.226',2,'page','2025-02-22 15:13:04','2025-02-22 15:13:04'),
(29,'page_create','(3) New Page',1,'101.128.79.226',3,'page','2025-02-22 15:17:12','2025-02-22 15:17:12'),
(30,'page_update','(3) New Page',1,'101.128.79.226',3,'page','2025-02-22 15:26:00','2025-02-22 15:26:00'),
(31,'page_update','(3) Configure the service in systemd',1,'101.128.79.226',3,'page','2025-02-22 15:26:28','2025-02-22 15:26:28'),
(32,'page_create','(5) New Page',1,'101.128.79.226',5,'page','2025-02-22 15:36:35','2025-02-22 15:36:35'),
(33,'page_update','(5) Configure the client side',1,'101.128.79.226',5,'page','2025-02-22 15:41:31','2025-02-22 15:41:31'),
(34,'page_update','(5) Configure the client side',1,'101.128.79.226',5,'page','2025-02-22 15:42:17','2025-02-22 15:42:17'),
(35,'page_update','(5) Configure the client side',1,'101.128.79.226',5,'page','2025-02-22 15:42:38','2025-02-22 15:42:38'),
(36,'page_update','(5) Configure the client side',1,'101.128.79.226',5,'page','2025-02-22 15:42:52','2025-02-22 15:42:52'),
(37,'page_update','(5) Configure the client side',1,'101.128.79.226',5,'page','2025-02-22 15:43:08','2025-02-22 15:43:08'),
(38,'page_update','(5) Configure the client side',1,'101.128.79.226',5,'page','2025-02-22 15:51:35','2025-02-22 15:51:35'),
(39,'page_update','(5) Configure the client side',1,'101.128.79.226',5,'page','2025-02-22 15:52:01','2025-02-22 15:52:01'),
(40,'page_update','(5) Configure the client side',1,'101.128.79.226',5,'page','2025-02-22 15:52:15','2025-02-22 15:52:15'),
(41,'page_update','(5) Configure the client side',1,'101.128.79.226',5,'page','2025-02-22 15:54:36','2025-02-22 15:54:36'),
(42,'page_update','(5) Configure the client side',1,'101.128.79.226',5,'page','2025-02-22 15:54:49','2025-02-22 15:54:49'),
(43,'settings_update','customization',1,'101.128.79.226',NULL,NULL,'2025-02-22 15:55:27','2025-02-22 15:55:27'),
(44,'page_create','(4) Configure the client side',1,'101.128.79.226',4,'page','2025-02-22 15:55:42','2025-02-22 15:55:42'),
(45,'settings_update','customization',1,'101.128.79.226',NULL,NULL,'2025-02-22 15:56:49','2025-02-22 15:56:49'),
(46,'settings_update','customization',1,'101.128.79.226',NULL,NULL,'2025-02-22 15:58:35','2025-02-22 15:58:35'),
(47,'auth_login','standard; (1) Admin',1,'101.128.79.226',NULL,NULL,'2025-02-22 15:59:10','2025-02-22 15:59:10'),
(48,'page_delete','(4) Configure the client side',1,'101.128.79.226',4,'page','2025-02-22 15:59:18','2025-02-22 15:59:18'),
(49,'settings_update','customization',1,'101.128.79.226',NULL,NULL,'2025-02-22 16:00:08','2025-02-22 16:00:08'),
(50,'auth_login','standard; (1) Admin',1,'101.128.79.226',NULL,NULL,'2025-02-22 16:01:19','2025-02-22 16:01:19'),
(51,'settings_update','features',1,'101.128.79.226',NULL,NULL,'2025-02-22 16:01:34','2025-02-22 16:01:34'),
(52,'settings_update','customization',1,'101.128.79.226',NULL,NULL,'2025-02-22 16:01:49','2025-02-22 16:01:49'),
(53,'settings_update','customization',1,'101.128.79.226',NULL,NULL,'2025-02-22 16:02:33','2025-02-22 16:02:33'),
(54,'auth_login','standard; (1) Admin',1,'101.128.79.226',NULL,NULL,'2025-02-22 16:04:20','2025-02-22 16:04:20'),
(55,'settings_update','customization',1,'101.128.79.226',NULL,NULL,'2025-02-22 16:04:34','2025-02-22 16:04:34'),
(56,'settings_update','customization',1,'101.128.79.226',NULL,NULL,'2025-02-22 16:06:41','2025-02-22 16:06:41'),
(57,'settings_update','customization',1,'101.128.79.226',NULL,NULL,'2025-02-22 16:07:33','2025-02-22 16:07:33'),
(58,'settings_update','customization',1,'101.128.79.226',NULL,NULL,'2025-02-22 16:08:28','2025-02-22 16:08:28'),
(59,'settings_update','customization',1,'101.128.79.226',NULL,NULL,'2025-02-22 16:09:43','2025-02-22 16:09:43'),
(60,'settings_update','customization',1,'101.128.79.226',NULL,NULL,'2025-02-22 16:10:08','2025-02-22 16:10:08'),
(61,'settings_update','customization',1,'101.128.79.226',NULL,NULL,'2025-02-22 16:10:36','2025-02-22 16:10:36'),
(62,'settings_update','customization',1,'101.128.79.226',NULL,NULL,'2025-02-22 16:10:56','2025-02-22 16:10:56'),
(63,'settings_update','customization',1,'101.128.79.226',NULL,NULL,'2025-02-22 16:15:51','2025-02-22 16:15:51'),
(64,'settings_update','customization',1,'101.128.79.226',NULL,NULL,'2025-02-22 16:17:30','2025-02-22 16:17:30'),
(65,'settings_update','customization',1,'101.128.79.226',NULL,NULL,'2025-02-22 16:17:56','2025-02-22 16:17:56'),
(66,'settings_update','features',1,'101.128.79.226',NULL,NULL,'2025-02-22 16:18:32','2025-02-22 16:18:32'),
(67,'auth_login','standard; (1) Admin',1,'101.128.79.226',NULL,NULL,'2025-02-22 16:32:26','2025-02-22 16:32:26'),
(68,'page_update','(2) Configure the Server',1,'101.128.79.226',2,'page','2025-02-22 16:33:36','2025-02-22 16:33:36'),
(69,'page_update','(2) Configure the Server',1,'101.128.79.226',2,'page','2025-02-22 16:34:03','2025-02-22 16:34:03'),
(70,'page_update','(2) Configure the Server',1,'101.128.79.226',2,'page','2025-02-22 16:34:26','2025-02-22 16:34:26'),
(71,'page_update','(2) Configure the Server',1,'101.128.79.226',2,'page','2025-02-22 16:35:20','2025-02-22 16:35:20'),
(72,'auth_login','standard; (1) Admin',1,'101.128.79.226',NULL,NULL,'2025-02-22 17:11:11','2025-02-22 17:11:11'),
(73,'page_update','(5) Configure the client side',1,'101.128.79.226',5,'page','2025-02-22 17:13:19','2025-02-22 17:13:19'),
(74,'auth_login','standard; (1) Admin',1,'101.128.79.226',NULL,NULL,'2025-02-24 15:45:23','2025-02-24 15:45:23'),
(75,'book_create','(2) How To Configure Hysteria2 Server+Wireguard Relay For Gaming',1,'101.128.79.226',2,'book','2025-02-24 15:50:50','2025-02-24 15:50:50'),
(76,'book_update','(2) How To Configure Hysteria2 Server+Wireguard Relay For Gaming',1,'101.128.79.226',2,'book','2025-02-24 15:58:35','2025-02-24 15:58:35'),
(77,'page_create','(6) Configure Wireguard Relay on VPS',1,'101.128.79.226',6,'page','2025-02-24 16:04:11','2025-02-24 16:04:11'),
(78,'page_update','(6) Configure Wireguard Relay on VPS',1,'101.128.79.226',6,'page','2025-02-24 16:04:56','2025-02-24 16:04:56'),
(79,'page_update','(6) Configure Wireguard Relay on VPS',1,'101.128.79.226',6,'page','2025-02-24 16:05:19','2025-02-24 16:05:19'),
(80,'page_update','(6) Configure Wireguard Relay on VPS',1,'101.128.79.226',6,'page','2025-02-24 16:06:47','2025-02-24 16:06:47'),
(81,'page_update','(6) Configure Wireguard Relay on VPS',1,'101.128.79.226',6,'page','2025-02-24 16:07:12','2025-02-24 16:07:12'),
(82,'page_update','(6) Configure Wireguard Relay on VPS',1,'101.128.79.226',6,'page','2025-02-24 16:09:22','2025-02-24 16:09:22'),
(83,'page_update','(6) Configure Wireguard Relay on VPS',1,'101.128.79.226',6,'page','2025-02-24 16:13:22','2025-02-24 16:13:22'),
(84,'page_update','(6) Configure Wireguard Relay on VPS',1,'101.128.79.226',6,'page','2025-02-24 16:15:33','2025-02-24 16:15:33'),
(85,'page_update','(6) Configure Wireguard Relay on VPS',1,'101.128.79.226',6,'page','2025-02-24 16:17:31','2025-02-24 16:17:31'),
(86,'page_update','(6) Configure Wireguard Relay on VPS',1,'101.128.79.226',6,'page','2025-02-24 16:24:37','2025-02-24 16:24:37'),
(87,'page_update','(6) Configure Wireguard Relay on VPS',1,'101.128.79.226',6,'page','2025-02-24 16:37:25','2025-02-24 16:37:25'),
(88,'page_update','(6) Configure Wireguard Relay on VPS',1,'101.128.79.226',6,'page','2025-02-24 16:38:24','2025-02-24 16:38:24'),
(89,'auth_login','standard; (1) Admin',1,'101.128.79.226',NULL,NULL,'2025-03-01 09:35:40','2025-03-01 09:35:40'),
(90,'page_update','(2) Configure the Server',1,'101.128.79.226',2,'page','2025-03-01 09:36:18','2025-03-01 09:36:18'),
(91,'auth_login','standard; (1) Admin',1,'101.128.79.226',NULL,NULL,'2025-03-02 01:05:16','2025-03-02 01:05:16'),
(92,'book_create','(3) Deploy Nextcloud in Ubuntu Server Manually',1,'101.128.79.226',3,'book','2025-03-02 01:06:44','2025-03-02 01:06:44'),
(93,'page_create','(7) New Page',1,'101.128.79.226',7,'page','2025-03-02 01:07:42','2025-03-02 01:07:42'),
(94,'page_update','(7) New Page',1,'101.128.79.226',7,'page','2025-03-02 01:08:00','2025-03-02 01:08:00'),
(95,'page_update','(7) New Page',1,'101.128.79.226',7,'page','2025-03-02 01:09:07','2025-03-02 01:09:07'),
(96,'page_update','(7) New Page',1,'101.128.79.226',7,'page','2025-03-02 01:09:19','2025-03-02 01:09:19'),
(97,'page_update','(7) New Page',1,'101.128.79.226',7,'page','2025-03-02 01:09:40','2025-03-02 01:09:40'),
(98,'page_update','(7) New Page',1,'101.128.79.226',7,'page','2025-03-02 01:10:09','2025-03-02 01:10:09'),
(99,'page_update','(7) New Page',1,'101.128.79.226',7,'page','2025-03-02 01:14:03','2025-03-02 01:14:03'),
(100,'page_update','(7) New Page',1,'101.128.79.226',7,'page','2025-03-02 01:14:17','2025-03-02 01:14:17'),
(101,'page_update','(7) New Page',1,'101.128.79.226',7,'page','2025-03-02 01:14:44','2025-03-02 01:14:44'),
(102,'page_update','(7) New Page',1,'101.128.79.226',7,'page','2025-03-02 01:15:43','2025-03-02 01:15:43'),
(103,'page_update','(7) New Page',1,'101.128.79.226',7,'page','2025-03-02 01:16:09','2025-03-02 01:16:09'),
(104,'page_update','(7) New Page',1,'101.128.79.226',7,'page','2025-03-02 01:17:01','2025-03-02 01:17:01'),
(105,'page_update','(7) New Page',1,'101.128.79.226',7,'page','2025-03-02 01:19:27','2025-03-02 01:19:27'),
(106,'page_update','(7) New Page',1,'101.128.79.226',7,'page','2025-03-02 01:21:24','2025-03-02 01:21:24'),
(107,'book_update','(3) Deploy Nextcloud in Ubuntu Server Manually',1,'101.128.79.226',3,'book','2025-03-02 01:22:07','2025-03-02 01:22:07'),
(108,'page_update','(7) New Page',1,'101.128.79.226',7,'page','2025-03-02 01:22:18','2025-03-02 01:22:18'),
(109,'page_update','(7) New Page',1,'101.128.79.226',7,'page','2025-03-02 01:22:29','2025-03-02 01:22:29'),
(110,'page_update','(7) New Page',1,'101.128.79.226',7,'page','2025-03-02 01:22:44','2025-03-02 01:22:44'),
(111,'page_create','(8) New Page',1,'101.128.79.226',8,'page','2025-03-02 01:23:04','2025-03-02 01:23:04'),
(112,'page_update','(7) Installing Requirements',1,'101.128.79.226',7,'page','2025-03-02 01:25:24','2025-03-02 01:25:24'),
(113,'page_update','(8) New Page',1,'101.128.79.226',8,'page','2025-03-02 01:25:33','2025-03-02 01:25:33'),
(114,'page_update','(7) Installing Requirements',1,'101.128.79.226',7,'page','2025-03-02 01:32:27','2025-03-02 01:32:27'),
(115,'page_update','(7) Installing Requirements',1,'101.128.79.226',7,'page','2025-03-02 01:34:54','2025-03-02 01:34:54'),
(116,'page_update','(7) Installing Requirements',1,'101.128.79.226',7,'page','2025-03-02 01:35:38','2025-03-02 01:35:38'),
(117,'page_update','(7) Installing Requirements',1,'101.128.79.226',7,'page','2025-03-02 01:36:55','2025-03-02 01:36:55'),
(118,'page_update','(7) Installing Requirements',1,'101.128.79.226',7,'page','2025-03-02 01:47:14','2025-03-02 01:47:14'),
(119,'page_update','(8) Configuring Nextcloud',1,'101.128.79.226',8,'page','2025-03-02 01:47:59','2025-03-02 01:47:59'),
(120,'page_update','(8) Configuring Nextcloud',1,'101.128.79.226',8,'page','2025-03-02 01:51:36','2025-03-02 01:51:36'),
(121,'page_update','(8) Configuring Nextcloud',1,'101.128.79.226',8,'page','2025-03-02 01:52:46','2025-03-02 01:52:46'),
(122,'page_update','(8) Configuring Nextcloud',1,'101.128.79.226',8,'page','2025-03-02 01:54:38','2025-03-02 01:54:38'),
(123,'page_update','(8) Configuring Nextcloud',1,'101.128.79.226',8,'page','2025-03-02 01:57:08','2025-03-02 01:57:08'),
(124,'page_update','(8) Configuring Nextcloud',1,'101.128.79.226',8,'page','2025-03-02 02:02:42','2025-03-02 02:02:42'),
(125,'page_update','(8) Configuring Nextcloud',1,'101.128.79.226',8,'page','2025-03-02 02:03:36','2025-03-02 02:03:36'),
(126,'page_update','(8) Configuring Nextcloud',1,'101.128.79.226',8,'page','2025-03-02 02:03:50','2025-03-02 02:03:50'),
(127,'page_create','(9) Adding HTTPS/SSL Certificate to website with Let\'s Encrypt + Certbot',1,'101.128.79.226',9,'page','2025-03-02 02:10:03','2025-03-02 02:10:03'),
(128,'page_update','(9) Adding HTTPS/SSL Certificate to website with Let\'s Encrypt + Certbot',1,'101.128.79.226',9,'page','2025-03-02 02:11:42','2025-03-02 02:11:42'),
(129,'book_update','(3) Deploy Nextcloud in Ubuntu Server Manually',1,'101.128.79.226',3,'book','2025-03-02 02:20:12','2025-03-02 02:20:12'),
(130,'page_update','(8) Configuring Nextcloud',1,'101.128.79.226',8,'page','2025-03-02 02:22:03','2025-03-02 02:22:03'),
(131,'book_update','(1) How To Configure Hysteria2 Server (UDP Forwarding)',1,'101.128.79.226',1,'book','2025-03-02 02:26:14','2025-03-02 02:26:14'),
(132,'book_update','(3) Deploy Nextcloud in Ubuntu Server with Nginx',1,'101.128.79.226',3,'book','2025-03-02 02:27:36','2025-03-02 02:27:36'),
(133,'book_update','(3) Deploy Nextcloud in Ubuntu Server with Nginx',1,'101.128.79.226',3,'book','2025-03-02 02:28:19','2025-03-02 02:28:19'),
(134,'book_update','(3) Deploy Nextcloud in Ubuntu Server with Nginx',1,'101.128.79.226',3,'book','2025-03-02 02:28:33','2025-03-02 02:28:33'),
(135,'auth_login','standard; (1) Admin',1,'101.128.79.226',NULL,NULL,'2025-03-03 12:01:30','2025-03-03 12:01:30'),
(136,'book_update','(3) Deploy Nextcloud in Ubuntu Server with Nginx',1,'101.128.79.226',3,'book','2025-03-03 12:02:56','2025-03-03 12:02:56'),
(137,'book_update','(3) Deploy Nextcloud in Ubuntu Server with Nginx',1,'101.128.79.226',3,'book','2025-03-03 12:03:10','2025-03-03 12:03:10'),
(138,'book_update','(3) Deploy Nextcloud in Ubuntu Server with Nginx',1,'101.128.79.226',3,'book','2025-03-03 12:24:02','2025-03-03 12:24:02');
/*!40000 ALTER TABLE `activities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `api_tokens`
--

DROP TABLE IF EXISTS `api_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `api_tokens` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL,
  `token_id` varchar(191) NOT NULL,
  `secret` varchar(191) NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `expires_at` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `api_tokens_token_id_unique` (`token_id`),
  KEY `api_tokens_user_id_index` (`user_id`),
  KEY `api_tokens_expires_at_index` (`expires_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `api_tokens`
--

LOCK TABLES `api_tokens` WRITE;
/*!40000 ALTER TABLE `api_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `api_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attachments`
--

DROP TABLE IF EXISTS `attachments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `attachments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL,
  `path` text NOT NULL,
  `extension` varchar(20) NOT NULL,
  `uploaded_to` int(11) NOT NULL,
  `external` tinyint(1) NOT NULL,
  `order` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `attachments_uploaded_to_index` (`uploaded_to`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attachments`
--

LOCK TABLES `attachments` WRITE;
/*!40000 ALTER TABLE `attachments` DISABLE KEYS */;
/*!40000 ALTER TABLE `attachments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `books` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `image_id` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `owned_by` int(10) unsigned NOT NULL,
  `default_template_id` int(11) DEFAULT NULL,
  `description_html` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `books_slug_index` (`slug`),
  KEY `books_created_by_index` (`created_by`),
  KEY `books_updated_by_index` (`updated_by`),
  KEY `books_owned_by_index` (`owned_by`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books`
--

LOCK TABLES `books` WRITE;
/*!40000 ALTER TABLE `books` DISABLE KEYS */;
INSERT INTO `books` VALUES
(1,'How To Configure Hysteria2 Server (UDP Forwarding)','how-to-configure-hysteria2-server-udp-forwarding','Hysteria2 is a protocol and proxy application designed to optimize internet connections, especially in terms of speed, stability, and low latency. This protocol is often used to overcome network problems such as ping jumps, packet loss, or ISP throttling—especially for gaming, streaming, or remote access.\r\nOS Requirements:\r\n\r\nDebian 11 or higher\r\nUbuntu 22.04 LTS or higher LTS versions\r\nRocky Linux 8 or higher\r\n\r\nMain Feature:\r\n\r\nUDP-based Protocol (QUIC)\r\nTraffic Obfuscation\r\nAuto Bandwidth Adjustment\r\nAdaptive Congestion Control\r\nCompatibility\r\n','2025-02-22 05:03:51','2025-03-02 02:26:14',1,1,32,NULL,1,NULL,'<p>Hysteria2 is a protocol and proxy application designed to optimize internet connections, especially in terms of speed, stability, and low latency. This protocol is often used to overcome network problems such as ping jumps, packet loss, or ISP throttling—especially for gaming, streaming, or remote access.</p><p>OS Requirements:</p><ul>\r\n<li>Debian 11 or higher</li>\r\n<li>Ubuntu 22.04 LTS or higher LTS versions</li>\r\n<li>Rocky Linux 8 or higher</li>\r\n</ul><p>Main Feature:</p><ul>\r\n<li>UDP-based Protocol (QUIC)</li>\r\n<li>Traffic Obfuscation</li>\r\n<li>Auto Bandwidth Adjustment</li>\r\n<li>Adaptive Congestion Control</li>\r\n<li>Compatibility</li>\r\n</ul>'),
(2,'How To Configure Hysteria2 Server+Wireguard Relay For Gaming','how-to-configure-hysteria2-serverwireguard-relay-for-gaming','The combination of Hysteria2 + WireGuard relay can be used for gaming, especially if the main goal is:\r\n\r\nOvercoming ping jumping from\r\nStabilizing the connection to game servers that often experience packet loss or bad routing.\r\nAccessing certain game servers that may be restricted by the ISP.\r\n\r\nHow Does It Work for Gaming?\r\n\r\nHysteria2 will fix \"problematic\" connections on your ISP\'s side, reducing ping spikes with more efficient routing.\r\nWireGuard acts as a lightweight VPN that maintains connection stability and provides encryption for security, but its overhead is low, so it remains fast for gaming.\r\n','2025-02-24 15:50:50','2025-02-24 15:58:35',1,1,NULL,NULL,1,NULL,'<p><strong>The combination of Hysteria2 + WireGuard relay can be used for gaming</strong>, especially if the main goal is:</p><ul>\r\n<li>Overcoming ping jumping from<br></li>\r\n<li>Stabilizing the connection to game servers that often experience packet loss or bad routing.<br></li>\r\n<li>Accessing certain game servers that may be restricted by the ISP.</li>\r\n</ul><p><strong>How Does It Work for Gaming?</strong></p><ul>\r\n<li>Hysteria2 will fix \"problematic\" connections on your ISP\'s side, reducing ping spikes with more efficient routing.</li>\r\n<li>WireGuard acts as a lightweight VPN that maintains connection stability and provides encryption for security, but its overhead is low, so it remains fast for gaming.<br><br><br></li>\r\n</ul>'),
(3,'Deploy Nextcloud in Ubuntu Server with Nginx','deploy-nextcloud-in-ubuntu-server-with-nginx','Requirements:\r\n\r\nWeb server (Apache/Nginx)\r\nPHP 8.x with extensions php8.x-{gd,curl,zip,mbstring,intl,bcmath,gmp,xml,apcu,imagick,exif,ldap}\r\nMariaDB/MySQL\r\nGit\r\nDomain pointed to the server IP\r\n','2025-03-02 01:06:44','2025-03-03 12:24:01',1,1,30,NULL,1,NULL,'<p>Requirements:</p><ul>\r\n<li>Web server (<strong>Apache/Nginx</strong>)</li>\r\n<li><strong>PHP 8.x</strong> with extensions php8.x-{gd,curl,zip,mbstring,intl,bcmath,gmp,xml,apcu,imagick,exif,ldap}</li>\r\n<li><strong>MariaDB/MySQL</strong></li>\r\n<li><strong>Git</strong></li>\r\n<li><strong>Domain </strong>pointed to the server IP</li>\r\n</ul>');
/*!40000 ALTER TABLE `books` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bookshelves`
--

DROP TABLE IF EXISTS `bookshelves`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bookshelves` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(180) NOT NULL,
  `slug` varchar(180) NOT NULL,
  `description` text NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `image_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `owned_by` int(10) unsigned NOT NULL,
  `description_html` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `bookshelves_slug_index` (`slug`),
  KEY `bookshelves_created_by_index` (`created_by`),
  KEY `bookshelves_updated_by_index` (`updated_by`),
  KEY `bookshelves_owned_by_index` (`owned_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookshelves`
--

LOCK TABLES `bookshelves` WRITE;
/*!40000 ALTER TABLE `bookshelves` DISABLE KEYS */;
/*!40000 ALTER TABLE `bookshelves` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bookshelves_books`
--

DROP TABLE IF EXISTS `bookshelves_books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bookshelves_books` (
  `bookshelf_id` int(10) unsigned NOT NULL,
  `book_id` int(10) unsigned NOT NULL,
  `order` int(10) unsigned NOT NULL,
  PRIMARY KEY (`bookshelf_id`,`book_id`),
  KEY `bookshelves_books_book_id_foreign` (`book_id`),
  CONSTRAINT `bookshelves_books_book_id_foreign` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `bookshelves_books_bookshelf_id_foreign` FOREIGN KEY (`bookshelf_id`) REFERENCES `bookshelves` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookshelves_books`
--

LOCK TABLES `bookshelves_books` WRITE;
/*!40000 ALTER TABLE `bookshelves_books` DISABLE KEYS */;
/*!40000 ALTER TABLE `bookshelves_books` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache`
--

DROP TABLE IF EXISTS `cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cache` (
  `key` varchar(191) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL,
  UNIQUE KEY `cache_key_unique` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache`
--

LOCK TABLES `cache` WRITE;
/*!40000 ALTER TABLE `cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chapters`
--

DROP TABLE IF EXISTS `chapters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chapters` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `book_id` int(11) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `priority` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `owned_by` int(10) unsigned NOT NULL,
  `description_html` text NOT NULL,
  `default_template_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `chapters_slug_index` (`slug`),
  KEY `chapters_book_id_index` (`book_id`),
  KEY `chapters_priority_index` (`priority`),
  KEY `chapters_created_by_index` (`created_by`),
  KEY `chapters_updated_by_index` (`updated_by`),
  KEY `chapters_owned_by_index` (`owned_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chapters`
--

LOCK TABLES `chapters` WRITE;
/*!40000 ALTER TABLE `chapters` DISABLE KEYS */;
/*!40000 ALTER TABLE `chapters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entity_id` int(10) unsigned NOT NULL,
  `entity_type` varchar(191) NOT NULL,
  `text` longtext DEFAULT NULL,
  `html` longtext DEFAULT NULL,
  `parent_id` int(10) unsigned DEFAULT NULL,
  `local_id` int(10) unsigned DEFAULT NULL,
  `created_by` int(10) unsigned NOT NULL,
  `updated_by` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `comments_entity_id_entity_type_index` (`entity_id`,`entity_type`),
  KEY `comments_local_id_index` (`local_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deletions`
--

DROP TABLE IF EXISTS `deletions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `deletions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `deleted_by` int(11) NOT NULL,
  `deletable_type` varchar(100) NOT NULL,
  `deletable_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `deletions_deleted_by_index` (`deleted_by`),
  KEY `deletions_deletable_type_index` (`deletable_type`),
  KEY `deletions_deletable_id_index` (`deletable_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deletions`
--

LOCK TABLES `deletions` WRITE;
/*!40000 ALTER TABLE `deletions` DISABLE KEYS */;
INSERT INTO `deletions` VALUES
(1,1,'page',1,'2025-02-22 15:08:38','2025-02-22 15:08:38'),
(2,1,'page',4,'2025-02-22 15:59:18','2025-02-22 15:59:18');
/*!40000 ALTER TABLE `deletions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_confirmations`
--

DROP TABLE IF EXISTS `email_confirmations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `email_confirmations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `email_confirmations_user_id_index` (`user_id`),
  KEY `email_confirmations_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_confirmations`
--

LOCK TABLES `email_confirmations` WRITE;
/*!40000 ALTER TABLE `email_confirmations` DISABLE KEYS */;
/*!40000 ALTER TABLE `email_confirmations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `entity_permissions`
--

DROP TABLE IF EXISTS `entity_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `entity_permissions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `entity_id` int(10) unsigned NOT NULL,
  `entity_type` varchar(25) NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  `view` tinyint(1) NOT NULL DEFAULT 0,
  `create` tinyint(1) NOT NULL DEFAULT 0,
  `update` tinyint(1) NOT NULL DEFAULT 0,
  `delete` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `new_entity_permissions_entity_id_entity_type_index` (`entity_id`,`entity_type`),
  KEY `new_entity_permissions_role_id_index` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entity_permissions`
--

LOCK TABLES `entity_permissions` WRITE;
/*!40000 ALTER TABLE `entity_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `entity_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `favourites`
--

DROP TABLE IF EXISTS `favourites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `favourites` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `favouritable_id` int(11) NOT NULL,
  `favouritable_type` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `favouritable_index` (`favouritable_id`,`favouritable_type`),
  KEY `favourites_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `favourites`
--

LOCK TABLES `favourites` WRITE;
/*!40000 ALTER TABLE `favourites` DISABLE KEYS */;
/*!40000 ALTER TABLE `favourites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `images`
--

DROP TABLE IF EXISTS `images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `images` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL,
  `url` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `path` varchar(400) NOT NULL,
  `type` varchar(191) NOT NULL,
  `uploaded_to` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `images_type_index` (`type`),
  KEY `images_uploaded_to_index` (`uploaded_to`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `images`
--

LOCK TABLES `images` WRITE;
/*!40000 ALTER TABLE `images` DISABLE KEYS */;
INSERT INTO `images` VALUES
(1,'002.jpg','https://x2.znand.my.id/uploads/images/gallery/2025-02/vXm5ouArhDFP3Stk-002.jpg','2025-02-22 14:08:33','2025-02-22 14:08:33',1,1,'/uploads/images/gallery/2025-02/vXm5ouArhDFP3Stk-002.jpg','gallery',2),
(2,'Screenshot (1269).png','https://x2.znand.my.id/uploads/images/gallery/2025-02/DxnrxfvqtJduEYws-screenshot-1269.png','2025-02-22 14:19:53','2025-02-22 14:19:53',1,1,'/uploads/images/gallery/2025-02/DxnrxfvqtJduEYws-screenshot-1269.png','gallery',2),
(3,'Drawing-1-1740234124.png','https://x2.znand.my.id/uploads/images/drawio/2025-02/ivNkW834IgDsmXIj-drawing-1-1740234124.png','2025-02-22 14:22:04','2025-02-22 14:22:04',1,1,'/uploads/images/drawio/2025-02/ivNkW834IgDsmXIj-drawing-1-1740234124.png','drawio',2),
(4,'Drawing-1-1740234277.png','https://x2.znand.my.id/uploads/images/drawio/2025-02/3od1B7vKW08kPez3-drawing-1-1740234277.png','2025-02-22 14:24:37','2025-02-22 14:24:37',1,1,'/uploads/images/drawio/2025-02/3od1B7vKW08kPez3-drawing-1-1740234277.png','drawio',2),
(5,'test.png','https://x2.znand.my.id/uploads/images/gallery/2025-02/1bD7OFLLPcNkHdOf-test.png','2025-02-22 14:54:19','2025-02-22 14:54:19',1,1,'/uploads/images/gallery/2025-02/1bD7OFLLPcNkHdOf-test.png','gallery',2),
(6,'t1.png','https://x2.znand.my.id/uploads/images/gallery/2025-02/ZFaXCADfdqO5eMaB-t1.png','2025-02-22 14:56:24','2025-02-22 14:56:24',1,1,'/uploads/images/gallery/2025-02/ZFaXCADfdqO5eMaB-t1.png','gallery',2),
(7,'Drawing-1-1740236297.png','https://x2.znand.my.id/uploads/images/drawio/2025-02/kPMSAFdMEh0sDMj3-drawing-1-1740236297.png','2025-02-22 14:58:17','2025-02-22 14:58:17',1,1,'/uploads/images/drawio/2025-02/kPMSAFdMEh0sDMj3-drawing-1-1740236297.png','drawio',2),
(8,'Drawing-1-1740236389.png','https://x2.znand.my.id/uploads/images/drawio/2025-02/VE73eQb97EobqDay-drawing-1-1740236389.png','2025-02-22 14:59:49','2025-02-22 14:59:49',1,1,'/uploads/images/drawio/2025-02/VE73eQb97EobqDay-drawing-1-1740236389.png','drawio',2),
(9,'Drawing-1-1740236467.png','https://x2.znand.my.id/uploads/images/drawio/2025-02/0w9r75mt6SG673Ac-drawing-1-1740236467.png','2025-02-22 15:01:07','2025-02-22 15:01:07',1,1,'/uploads/images/drawio/2025-02/0w9r75mt6SG673Ac-drawing-1-1740236467.png','drawio',2),
(10,'Drawing-1-1740236636.png','https://x2.znand.my.id/uploads/images/drawio/2025-02/iafnjWw8NndOjO35-drawing-1-1740236636.png','2025-02-22 15:03:56','2025-02-22 15:03:56',1,1,'/uploads/images/drawio/2025-02/iafnjWw8NndOjO35-drawing-1-1740236636.png','drawio',2),
(11,'Drawing-1-1740236802.png','https://x2.znand.my.id/uploads/images/drawio/2025-02/tGOhBjZBg7rqXkru-drawing-1-1740236802.png','2025-02-22 15:06:42','2025-02-22 15:06:42',1,1,'/uploads/images/drawio/2025-02/tGOhBjZBg7rqXkru-drawing-1-1740236802.png','drawio',2),
(12,'image-1740237254773.png','https://x2.znand.my.id/uploads/images/gallery/2025-02/X4UZNezfBv3s0shF-image-1740237254773.png','2025-02-22 15:14:12','2025-02-22 15:14:12',1,1,'/uploads/images/gallery/2025-02/X4UZNezfBv3s0shF-image-1740237254773.png','gallery',3),
(13,'Drawing-1-1740237280.png','https://x2.znand.my.id/uploads/images/drawio/2025-02/BaylkcsYPHUBgHhz-drawing-1-1740237280.png','2025-02-22 15:14:40','2025-02-22 15:14:40',1,1,'/uploads/images/drawio/2025-02/BaylkcsYPHUBgHhz-drawing-1-1740237280.png','drawio',3),
(14,'Drawing-1-1740237929.png','https://x2.znand.my.id/uploads/images/drawio/2025-02/9vOtqam9UmRTqT3g-drawing-1-1740237929.png','2025-02-22 15:25:29','2025-02-22 15:25:29',1,1,'/uploads/images/drawio/2025-02/9vOtqam9UmRTqT3g-drawing-1-1740237929.png','drawio',3),
(15,'Drawing-1-1740237929.png','https://x2.znand.my.id/uploads/images/drawio/2025-02/MFIAEcB90gI4eb8W-drawing-1-1740237929.png','2025-02-22 15:25:29','2025-02-22 15:25:29',1,1,'/uploads/images/drawio/2025-02/MFIAEcB90gI4eb8W-drawing-1-1740237929.png','drawio',3),
(16,'image-1740238416292.png','https://x2.znand.my.id/uploads/images/gallery/2025-02/6mnMer6jrYpcY03s-image-1740238416292.png','2025-02-22 15:33:34','2025-02-22 15:33:34',1,1,'/uploads/images/gallery/2025-02/6mnMer6jrYpcY03s-image-1740238416292.png','gallery',5),
(17,'Drawing-1-1740238557.png','https://x2.znand.my.id/uploads/images/drawio/2025-02/73yP7O1amXBPAb0P-drawing-1-1740238557.png','2025-02-22 15:35:57','2025-02-22 15:35:57',1,1,'/uploads/images/drawio/2025-02/73yP7O1amXBPAb0P-drawing-1-1740238557.png','drawio',5),
(18,'Drawing-1-1740238655.png','https://x2.znand.my.id/uploads/images/drawio/2025-02/A2kXVC997tYk1u1V-drawing-1-1740238655.png','2025-02-22 15:37:35','2025-02-22 15:37:35',1,1,'/uploads/images/drawio/2025-02/A2kXVC997tYk1u1V-drawing-1-1740238655.png','drawio',5),
(19,'Drawing-1-1740238845.png','https://x2.znand.my.id/uploads/images/drawio/2025-02/fLK1oTCfavzPWnX8-drawing-1-1740238845.png','2025-02-22 15:40:45','2025-02-22 15:40:45',1,1,'/uploads/images/drawio/2025-02/fLK1oTCfavzPWnX8-drawing-1-1740238845.png','drawio',5),
(20,'Drawing-1-1740238846.png','https://x2.znand.my.id/uploads/images/drawio/2025-02/03fk9RwQ6G4Rrt3o-drawing-1-1740238846.png','2025-02-22 15:40:46','2025-02-22 15:40:46',1,1,'/uploads/images/drawio/2025-02/03fk9RwQ6G4Rrt3o-drawing-1-1740238846.png','drawio',5),
(21,'Drawing-1-1740239475.png','https://x2.znand.my.id/uploads/images/drawio/2025-02/jG21H9Lw098nw27o-drawing-1-1740239475.png','2025-02-22 15:51:15','2025-02-22 15:51:15',1,1,'/uploads/images/drawio/2025-02/jG21H9Lw098nw27o-drawing-1-1740239475.png','drawio',5),
(22,'Drawing-1-1740239476.png','https://x2.znand.my.id/uploads/images/drawio/2025-02/3xowFeCO1cx3AyI0-drawing-1-1740239476.png','2025-02-22 15:51:16','2025-02-22 15:51:16',1,1,'/uploads/images/drawio/2025-02/3xowFeCO1cx3AyI0-drawing-1-1740239476.png','drawio',5),
(23,'image-1740239582661.png','https://x2.znand.my.id/uploads/images/gallery/2025-02/ZVOTthRfElWaAVCH-image-1740239582661.png','2025-02-22 15:53:00','2025-02-22 15:53:00',1,1,'/uploads/images/gallery/2025-02/ZVOTthRfElWaAVCH-image-1740239582661.png','gallery',5),
(24,'Drawing-1-1740239667.png','https://x2.znand.my.id/uploads/images/drawio/2025-02/09kwcItPDo0MUct5-drawing-1-1740239667.png','2025-02-22 15:54:27','2025-02-22 15:54:27',1,1,'/uploads/images/drawio/2025-02/09kwcItPDo0MUct5-drawing-1-1740239667.png','drawio',5),
(25,'Drawing-1-1740239668.png','https://x2.znand.my.id/uploads/images/drawio/2025-02/RLhEbEjnWNqrZ7sa-drawing-1-1740239668.png','2025-02-22 15:54:28','2025-02-22 15:54:28',1,1,'/uploads/images/drawio/2025-02/RLhEbEjnWNqrZ7sa-drawing-1-1740239668.png','drawio',5),
(26,'Drawing-1-1740879617.png','https://x2.znand.my.id/uploads/images/drawio/2025-03/drawing-1-1740879617.png','2025-03-02 01:40:17','2025-03-02 01:40:17',1,1,'/uploads/images/drawio/2025-03/drawing-1-1740879617.png','drawio',7),
(27,'Drawing-1-1740879790.png','https://x2.znand.my.id/uploads/images/drawio/2025-03/drawing-1-1740879790.png','2025-03-02 01:43:10','2025-03-02 01:43:10',1,1,'/uploads/images/drawio/2025-03/drawing-1-1740879790.png','drawio',7),
(28,'Drawing-1-1740879954.png','https://x2.znand.my.id/uploads/images/drawio/2025-03/drawing-1-1740879954.png','2025-03-02 01:45:54','2025-03-02 01:45:54',1,1,'/uploads/images/drawio/2025-03/drawing-1-1740879954.png','drawio',7),
(29,'Drawing-1-1740881352.png','https://x2.znand.my.id/uploads/images/drawio/2025-03/drawing-1-1740881352.png','2025-03-02 02:09:12','2025-03-02 02:09:12',1,1,'/uploads/images/drawio/2025-03/drawing-1-1740881352.png','drawio',9),
(30,'Screenshot (1297)1.png','https://x2.znand.my.id/uploads/images/cover_book/2025-03/screenshot-12971.png','2025-03-02 02:20:12','2025-03-02 02:20:12',1,1,'/uploads/images/cover_book/2025-03/screenshot-12971.png','cover_book',3),
(31,'Drawing-1-1740882115.png','https://x2.znand.my.id/uploads/images/drawio/2025-03/drawing-1-1740882115.png','2025-03-02 02:21:55','2025-03-02 02:21:55',1,1,'/uploads/images/drawio/2025-03/drawing-1-1740882115.png','drawio',8),
(32,'port-forwarding.jpg','https://x2.znand.my.id/uploads/images/cover_book/2025-03/port-forwarding.jpg','2025-03-02 02:26:14','2025-03-02 02:26:14',1,1,'/uploads/images/cover_book/2025-03/port-forwarding.jpg','cover_book',1);
/*!40000 ALTER TABLE `images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `imports`
--

DROP TABLE IF EXISTS `imports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `imports` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL,
  `path` varchar(191) NOT NULL,
  `size` int(11) NOT NULL,
  `type` varchar(191) NOT NULL,
  `metadata` longtext NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `imports_created_by_index` (`created_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `imports`
--

LOCK TABLES `imports` WRITE;
/*!40000 ALTER TABLE `imports` DISABLE KEYS */;
/*!40000 ALTER TABLE `imports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(191) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) unsigned NOT NULL,
  `reserved_at` int(10) unsigned DEFAULT NULL,
  `available_at` int(10) unsigned NOT NULL,
  `created_at` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `joint_permissions`
--

DROP TABLE IF EXISTS `joint_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `joint_permissions` (
  `role_id` int(11) NOT NULL,
  `entity_type` varchar(191) NOT NULL,
  `entity_id` int(11) NOT NULL,
  `status` tinyint(3) unsigned NOT NULL,
  `owner_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`role_id`,`entity_type`,`entity_id`),
  KEY `joint_permissions_entity_id_entity_type_index` (`entity_id`,`entity_type`),
  KEY `joint_permissions_role_id_index` (`role_id`),
  KEY `joint_permissions_status_index` (`status`),
  KEY `joint_permissions_owner_id_index` (`owner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `joint_permissions`
--

LOCK TABLES `joint_permissions` WRITE;
/*!40000 ALTER TABLE `joint_permissions` DISABLE KEYS */;
INSERT INTO `joint_permissions` VALUES
(1,'book',1,3,1),
(1,'book',2,3,1),
(1,'book',3,3,1),
(1,'page',1,3,1),
(1,'page',2,3,1),
(1,'page',3,3,1),
(1,'page',4,3,1),
(1,'page',5,3,1),
(1,'page',6,3,1),
(1,'page',7,3,1),
(1,'page',8,3,1),
(1,'page',9,3,1),
(2,'book',1,1,1),
(2,'book',2,1,1),
(2,'book',3,1,1),
(2,'page',1,1,1),
(2,'page',2,1,1),
(2,'page',3,1,1),
(2,'page',4,1,1),
(2,'page',5,1,1),
(2,'page',6,1,1),
(2,'page',7,1,1),
(2,'page',8,1,1),
(2,'page',9,1,1),
(3,'book',1,1,1),
(3,'book',2,1,1),
(3,'book',3,1,1),
(3,'page',1,1,1),
(3,'page',2,1,1),
(3,'page',3,1,1),
(3,'page',4,1,1),
(3,'page',5,1,1),
(3,'page',6,1,1),
(3,'page',7,1,1),
(3,'page',8,1,1),
(3,'page',9,1,1),
(4,'book',1,1,1),
(4,'book',2,1,1),
(4,'book',3,1,1),
(4,'page',1,1,1),
(4,'page',2,1,1),
(4,'page',3,1,1),
(4,'page',4,1,1),
(4,'page',5,1,1),
(4,'page',6,1,1),
(4,'page',7,1,1),
(4,'page',8,1,1),
(4,'page',9,1,1);
/*!40000 ALTER TABLE `joint_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mfa_values`
--

DROP TABLE IF EXISTS `mfa_values`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mfa_values` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `method` varchar(20) NOT NULL,
  `value` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mfa_values_user_id_index` (`user_id`),
  KEY `mfa_values_method_index` (`method`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mfa_values`
--

LOCK TABLES `mfa_values` WRITE;
/*!40000 ALTER TABLE `mfa_values` DISABLE KEYS */;
/*!40000 ALTER TABLE `mfa_values` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES
(1,'2014_10_12_000000_create_users_table',1),
(2,'2014_10_12_100000_create_password_resets_table',1),
(3,'2015_07_12_114933_create_books_table',1),
(4,'2015_07_12_190027_create_pages_table',1),
(5,'2015_07_13_172121_create_images_table',1),
(6,'2015_07_27_172342_create_chapters_table',1),
(7,'2015_08_08_200447_add_users_to_entities',1),
(8,'2015_08_09_093534_create_page_revisions_table',1),
(9,'2015_08_16_142133_create_activities_table',1),
(10,'2015_08_29_105422_add_roles_and_permissions',1),
(11,'2015_08_30_125859_create_settings_table',1),
(12,'2015_08_31_175240_add_search_indexes',1),
(13,'2015_09_04_165821_create_social_accounts_table',1),
(14,'2015_09_05_164707_add_email_confirmation_table',1),
(15,'2015_11_21_145609_create_views_table',1),
(16,'2015_11_26_221857_add_entity_indexes',1),
(17,'2015_12_05_145049_fulltext_weighting',1),
(18,'2015_12_07_195238_add_image_upload_types',1),
(19,'2015_12_09_195748_add_user_avatars',1),
(20,'2016_01_11_210908_add_external_auth_to_users',1),
(21,'2016_02_25_184030_add_slug_to_revisions',1),
(22,'2016_02_27_120329_update_permissions_and_roles',1),
(23,'2016_02_28_084200_add_entity_access_controls',1),
(24,'2016_03_09_203143_add_page_revision_types',1),
(25,'2016_03_13_082138_add_page_drafts',1),
(26,'2016_03_25_123157_add_markdown_support',1),
(27,'2016_04_09_100730_add_view_permissions_to_roles',1),
(28,'2016_04_20_192649_create_joint_permissions_table',1),
(29,'2016_05_06_185215_create_tags_table',1),
(30,'2016_07_07_181521_add_summary_to_page_revisions',1),
(31,'2016_09_29_101449_remove_hidden_roles',1),
(32,'2016_10_09_142037_create_attachments_table',1),
(33,'2017_01_21_163556_create_cache_table',1),
(34,'2017_01_21_163602_create_sessions_table',1),
(35,'2017_03_19_091553_create_search_index_table',1),
(36,'2017_04_20_185112_add_revision_counts',1),
(37,'2017_07_02_152834_update_db_encoding_to_ut8mb4',1),
(38,'2017_08_01_130541_create_comments_table',1),
(39,'2017_08_29_102650_add_cover_image_display',1),
(40,'2018_07_15_173514_add_role_external_auth_id',1),
(41,'2018_08_04_115700_create_bookshelves_table',1),
(42,'2019_07_07_112515_add_template_support',1),
(43,'2019_08_17_140214_add_user_invites_table',1),
(44,'2019_12_29_120917_add_api_auth',1),
(45,'2020_08_04_111754_drop_joint_permissions_id',1),
(46,'2020_08_04_131052_remove_role_name_field',1),
(47,'2020_09_19_094251_add_activity_indexes',1),
(48,'2020_09_27_210059_add_entity_soft_deletes',1),
(49,'2020_09_27_210528_create_deletions_table',1),
(50,'2020_11_07_232321_simplify_activities_table',1),
(51,'2020_12_30_173528_add_owned_by_field_to_entities',1),
(52,'2021_01_30_225441_add_settings_type_column',1),
(53,'2021_03_08_215138_add_user_slug',1),
(54,'2021_05_15_173110_create_favourites_table',1),
(55,'2021_06_30_173111_create_mfa_values_table',1),
(56,'2021_07_03_085038_add_mfa_enforced_to_roles_table',1),
(57,'2021_08_28_161743_add_export_role_permission',1),
(58,'2021_09_26_044614_add_activities_ip_column',1),
(59,'2021_11_26_070438_add_index_for_user_ip',1),
(60,'2021_12_07_111343_create_webhooks_table',1),
(61,'2021_12_13_152024_create_jobs_table',1),
(62,'2021_12_13_152120_create_failed_jobs_table',1),
(63,'2022_01_03_154041_add_webhooks_timeout_error_columns',1),
(64,'2022_04_17_101741_add_editor_change_field_and_permission',1),
(65,'2022_04_25_140741_update_polymorphic_types',1),
(66,'2022_07_16_170051_drop_joint_permission_type',1),
(67,'2022_08_17_092941_create_references_table',1),
(68,'2022_09_02_082910_fix_shelf_cover_image_types',1),
(69,'2022_10_07_091406_flatten_entity_permissions_table',1),
(70,'2022_10_08_104202_drop_entity_restricted_field',1),
(71,'2023_01_24_104625_refactor_joint_permissions_storage',1),
(72,'2023_01_28_141230_copy_color_settings_for_dark_mode',1),
(73,'2023_02_20_093655_increase_attachments_path_length',1),
(74,'2023_02_23_200227_add_updated_at_index_to_pages',1),
(75,'2023_06_10_071823_remove_guest_user_secondary_roles',1),
(76,'2023_06_25_181952_remove_bookshelf_create_entity_permissions',1),
(77,'2023_07_25_124945_add_receive_notifications_role_permissions',1),
(78,'2023_07_31_104430_create_watches_table',1),
(79,'2023_08_21_174248_increase_cache_size',1),
(80,'2023_12_02_104541_add_default_template_to_books',1),
(81,'2023_12_17_140913_add_description_html_to_entities',1),
(82,'2024_01_01_104542_add_default_template_to_chapters',1),
(83,'2024_02_04_141358_add_views_updated_index',1),
(84,'2024_05_04_154409_rename_activity_relation_columns',1),
(85,'2024_09_29_140340_ensure_editor_value_set',1),
(86,'2024_10_29_114420_add_import_role_permission',1),
(87,'2024_11_02_160700_create_imports_table',1),
(88,'2024_11_27_171039_add_instance_id_setting',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `page_revisions`
--

DROP TABLE IF EXISTS `page_revisions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `page_revisions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `page_id` int(11) NOT NULL,
  `name` varchar(191) NOT NULL,
  `html` longtext NOT NULL,
  `text` longtext NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(191) NOT NULL,
  `book_slug` varchar(191) NOT NULL,
  `type` varchar(191) NOT NULL DEFAULT 'version',
  `markdown` longtext NOT NULL DEFAULT '',
  `summary` varchar(191) DEFAULT NULL,
  `revision_number` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `page_revisions_page_id_index` (`page_id`),
  KEY `page_revisions_slug_index` (`slug`),
  KEY `page_revisions_book_slug_index` (`book_slug`),
  KEY `page_revisions_type_index` (`type`),
  KEY `page_revisions_revision_number_index` (`revision_number`)
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `page_revisions`
--

LOCK TABLES `page_revisions` WRITE;
/*!40000 ALTER TABLE `page_revisions` DISABLE KEYS */;
INSERT INTO `page_revisions` VALUES
(1,1,'New Page','<pre id=\"bkmrk-protocol%3A-udp-auth%3A-\"><code class=\"language-listen:\">protocol: udp\n\nauth:\n  type: password\n  password: passwordtest \n\nacme:\n  domains:\n    - hysteria.znand.my.id\n  email: nannozeta@gmail.com\n\nmasquerade:\n  type: proxy\n  proxy:\n    url: https://www.cloudflare.com \n\nquic:\n  congestionControl: bbr   \n  idleTimeout: 60s         \n  maxIdleTimeout: 60s     \n  keepAlivePeriod: 10s     \n\nudp:\n  idleTimeout: 60s\n</code></pre>\n','protocol: udp\n\nauth:\n  type: password\n  password: passwordtest \n\nacme:\n  domains:\n    - hysteria.znand.my.id\n  email: nannozeta@gmail.com\n\nmasquerade:\n  type: proxy\n  proxy:\n    url: https://www.cloudflare.com \n\nquic:\n  congestionControl: bbr   \n  idleTimeout: 60s         \n  maxIdleTimeout: 60s     \n  keepAlivePeriod: 10s     \n\nudp:\n  idleTimeout: 60s\n\n',1,'2025-02-22 05:14:38','2025-02-22 05:14:38','new-page','test','version','```listen: :443  \r\nprotocol: udp\r\n\r\nauth:\r\n  type: password\r\n  password: passwordtest \r\n\r\nacme:\r\n  domains:\r\n    - hysteria.znand.my.id\r\n  email: nannozeta@gmail.com\r\n\r\nmasquerade:\r\n  type: proxy\r\n  proxy:\r\n    url: https://www.cloudflare.com \r\n\r\nquic:\r\n  congestionControl: bbr   \r\n  idleTimeout: 60s         \r\n  maxIdleTimeout: 60s     \r\n  keepAlivePeriod: 10s     \r\n\r\nudp:\r\n  idleTimeout: 60s\r\n```','Initial publish',1),
(3,1,'New Page','<p id=\"bkmrk-test-code-berikut%3A\">Test code berikut:</p>\n<pre id=\"bkmrk-protocol%3A-udp-auth%3A-\"><code class=\"language-listen:\">protocol: udp\n\nauth:\n  type: password\n  password: passwordtest \n\nacme:\n  domains:\n    - hysteria.znand.my.id\n  email: nannozeta@gmail.com\n\nmasquerade:\n  type: proxy\n  proxy:\n    url: https://www.cloudflare.com \n\nquic:\n  congestionControl: bbr   \n  idleTimeout: 60s         \n  maxIdleTimeout: 60s     \n  keepAlivePeriod: 10s     \n\nudp:\n  idleTimeout: 60s\n</code></pre>\n','Test code berikut:\nprotocol: udp\n\nauth:\n  type: password\n  password: passwordtest \n\nacme:\n  domains:\n    - hysteria.znand.my.id\n  email: nannozeta@gmail.com\n\nmasquerade:\n  type: proxy\n  proxy:\n    url: https://www.cloudflare.com \n\nquic:\n  congestionControl: bbr   \n  idleTimeout: 60s         \n  maxIdleTimeout: 60s     \n  keepAlivePeriod: 10s     \n\nudp:\n  idleTimeout: 60s\n\n',1,'2025-02-22 05:15:23','2025-02-22 05:15:23','new-page','test','version','Test code berikut:\r\n\r\n\r\n```listen: :443  \r\nprotocol: udp\r\n\r\nauth:\r\n  type: password\r\n  password: passwordtest \r\n\r\nacme:\r\n  domains:\r\n    - hysteria.znand.my.id\r\n  email: nannozeta@gmail.com\r\n\r\nmasquerade:\r\n  type: proxy\r\n  proxy:\r\n    url: https://www.cloudflare.com \r\n\r\nquic:\r\n  congestionControl: bbr   \r\n  idleTimeout: 60s         \r\n  maxIdleTimeout: 60s     \r\n  keepAlivePeriod: 10s     \r\n\r\nudp:\r\n  idleTimeout: 60s\r\n```','',2),
(4,2,'New Page','<p id=\"bkmrk-install-command\">Install Command</p>\n<p id=\"bkmrk-bash-%3C%28curl--fssl-ht\"><code>bash &lt;(curl -fsSL https://get.hy2.sh/)</code></p>\n','Install Command\nbash <(curl -fsSL https://get.hy2.sh/)\n',1,'2025-02-22 14:05:39','2025-02-22 14:05:39','new-page-OOV','how-to-configure-hysteria2-server-udp-forwarding','version','Install Command\r\n\r\n```bash <(curl -fsSL https://get.hy2.sh/)```','Initial publish',1),
(6,2,'New Page','<p id=\"bkmrk-install-to-latest-ve\">Install to latest version:</p>\n<p id=\"bkmrk-bash-%3C%28curl--fssl-ht\"><code>bash &lt;(curl -fsSL https://get.hy2.sh/)</code></p>\n<p id=\"bkmrk-remove-and-uninstall\">Remove and uninstall:</p>\n<p id=\"bkmrk-bash-%3C%28curl--fssl-ht-1\"><code>bash &lt;(curl -fsSL https://get.hy2.sh/) --remove</code></p>\n<p id=\"bkmrk-in-home-directory%2C\">In home directory,</p>\n<p id=\"bkmrk-mkdir-hysteria-nano-\"><code>mkdir hysteria</code>\n<code>nano config.yaml</code></p>\n<p id=\"bkmrk-fill-the-blank-yaml-\">Fill the blank yaml file with:</p>\n<pre id=\"bkmrk-protocol%3A-udp-auth%3A-\"><code class=\"language-listen:\">protocol: udp\n\nauth:\n  type: password\n  password: passwordtest \n\nacme:\n  domains:\n    - hysteria.znand.my.id\n  email: nannozeta@gmail.com\n\nmasquerade:\n  type: proxy\n  proxy:\n    url: https://www.cloudflare.com \n\nquic:\n  congestionControl: bbr   \n  idleTimeout: 60s         \n  maxIdleTimeout: 60s     \n  keepAlivePeriod: 10s     \n\nudp:\n  idleTimeout: 60s```\n</code></pre>\n','Install to latest version:\nbash <(curl -fsSL https://get.hy2.sh/)\nRemove and uninstall:\nbash <(curl -fsSL https://get.hy2.sh/) --remove\nIn home directory,\nmkdir hysteria\nnano config.yaml\nFill the blank yaml file with:\nprotocol: udp\n\nauth:\n  type: password\n  password: passwordtest \n\nacme:\n  domains:\n    - hysteria.znand.my.id\n  email: nannozeta@gmail.com\n\nmasquerade:\n  type: proxy\n  proxy:\n    url: https://www.cloudflare.com \n\nquic:\n  congestionControl: bbr   \n  idleTimeout: 60s         \n  maxIdleTimeout: 60s     \n  keepAlivePeriod: 10s     \n\nudp:\n  idleTimeout: 60s```\n\n',1,'2025-02-22 14:12:01','2025-02-22 14:12:01','new-page-OOV','how-to-configure-hysteria2-server-udp-forwarding','version','Install to latest version:\r\n\r\n```bash <(curl -fsSL https://get.hy2.sh/)```\r\n\r\nRemove and uninstall:\r\n\r\n```bash <(curl -fsSL https://get.hy2.sh/) --remove```\r\n\r\nIn home directory, \r\n\r\n```mkdir hysteria```\r\n```nano config.yaml```\r\n\r\nFill the blank yaml file with:\r\n\r\n```listen: :443  \r\nprotocol: udp\r\n\r\nauth:\r\n  type: password\r\n  password: passwordtest \r\n\r\nacme:\r\n  domains:\r\n    - hysteria.znand.my.id\r\n  email: nannozeta@gmail.com\r\n\r\nmasquerade:\r\n  type: proxy\r\n  proxy:\r\n    url: https://www.cloudflare.com \r\n\r\nquic:\r\n  congestionControl: bbr   \r\n  idleTimeout: 60s         \r\n  maxIdleTimeout: 60s     \r\n  keepAlivePeriod: 10s     \r\n\r\nudp:\r\n  idleTimeout: 60s```','',2),
(8,2,'New Page','<ol id=\"bkmrk-install-to-latest-ve\">\n<li>Install to latest version:</li>\n</ol>\n<p id=\"bkmrk-bash-%3C%28curl--fssl-ht\"><code>bash &lt;(curl -fsSL https://get.hy2.sh/)</code></p>\n<p id=\"bkmrk-remove-and-uninstall\">Remove and uninstall:</p>\n<p id=\"bkmrk-bash-%3C%28curl--fssl-ht-1\"><code>bash &lt;(curl -fsSL https://get.hy2.sh/) --remove</code></p>\n<ol start=\"2\" id=\"bkmrk-in-home-directory%2C\">\n<li>In home directory,</li>\n</ol>\n<p id=\"bkmrk-mkdir-hysteria-nano-\"><code>mkdir hysteria</code>\n<code>nano config.yaml</code></p>\n<ol start=\"3\" id=\"bkmrk-fill-the-blank-yaml-\">\n<li>Fill the blank yaml file with:</li>\n</ol>\n<pre id=\"bkmrk-protocol%3A-udp-auth%3A-\"><code class=\"language-listen:\">protocol: udp\n\nauth:\n  type: password\n  password: passwordtest \n\nacme:\n  domains:\n    - hysteria.znand.my.id\n  email: nannozeta@gmail.com\n\nmasquerade:\n  type: proxy\n  proxy:\n    url: https://www.cloudflare.com \n\nquic:\n  congestionControl: bbr   \n  idleTimeout: 60s         \n  maxIdleTimeout: 60s     \n  keepAlivePeriod: 10s     \n\nudp:\n  idleTimeout: 60s```\n\n4. Download the executable file from this [link](https://github.com/apernet/hysteria/releases)\n</code></pre>\n','\nInstall to latest version:\n\nbash <(curl -fsSL https://get.hy2.sh/)\nRemove and uninstall:\nbash <(curl -fsSL https://get.hy2.sh/) --remove\n\nIn home directory,\n\nmkdir hysteria\nnano config.yaml\n\nFill the blank yaml file with:\n\nprotocol: udp\n\nauth:\n  type: password\n  password: passwordtest \n\nacme:\n  domains:\n    - hysteria.znand.my.id\n  email: nannozeta@gmail.com\n\nmasquerade:\n  type: proxy\n  proxy:\n    url: https://www.cloudflare.com \n\nquic:\n  congestionControl: bbr   \n  idleTimeout: 60s         \n  maxIdleTimeout: 60s     \n  keepAlivePeriod: 10s     \n\nudp:\n  idleTimeout: 60s```\n\n4. Download the executable file from this [link](https://github.com/apernet/hysteria/releases)\n\n',1,'2025-02-22 14:16:51','2025-02-22 14:16:51','new-page-OOV','how-to-configure-hysteria2-server-udp-forwarding','version','1. Install to latest version:\r\n\r\n```bash <(curl -fsSL https://get.hy2.sh/)```\r\n\r\n Remove and uninstall:\r\n\r\n```bash <(curl -fsSL https://get.hy2.sh/) --remove```\r\n\r\n2. In home directory, \r\n\r\n```mkdir hysteria```\r\n```nano config.yaml```\r\n\r\n3. Fill the blank yaml file with:\r\n\r\n```listen: :443  \r\nprotocol: udp\r\n\r\nauth:\r\n  type: password\r\n  password: passwordtest \r\n\r\nacme:\r\n  domains:\r\n    - hysteria.znand.my.id\r\n  email: nannozeta@gmail.com\r\n\r\nmasquerade:\r\n  type: proxy\r\n  proxy:\r\n    url: https://www.cloudflare.com \r\n\r\nquic:\r\n  congestionControl: bbr   \r\n  idleTimeout: 60s         \r\n  maxIdleTimeout: 60s     \r\n  keepAlivePeriod: 10s     \r\n\r\nudp:\r\n  idleTimeout: 60s```\r\n\r\n4. Download the executable file from this [link](https://github.com/apernet/hysteria/releases)','',3),
(10,2,'New Page','<ol id=\"bkmrk-install-to-latest-ve\">\n<li>Install to latest version:</li>\n</ol>\n<p id=\"bkmrk-bash-%3C%28curl--fssl-ht\"><code>bash &lt;(curl -fsSL https://get.hy2.sh/)</code></p>\n<p id=\"bkmrk-remove-and-uninstall\">Remove and uninstall:</p>\n<p id=\"bkmrk-bash-%3C%28curl--fssl-ht-1\"><code>bash &lt;(curl -fsSL https://get.hy2.sh/) --remove</code></p>\n<ol start=\"2\" id=\"bkmrk-in-home-directory%2C\">\n<li>In home directory,</li>\n</ol>\n<p id=\"bkmrk-mkdir-hysteria-nano-\"><code>mkdir hysteria</code>\n<code>nano config.yaml</code></p>\n<ol start=\"3\" id=\"bkmrk-fill-the-blank-yaml-\">\n<li>Fill the blank yaml file with:</li>\n</ol>\n<pre id=\"bkmrk-protocol%3A-udp-auth%3A-\"><code class=\"language-listen:\">protocol: udp\n\nauth:\n  type: password\n  password: passwordtest \n\nacme:\n  domains:\n    - hysteria.znand.my.id\n  email: nannozeta@gmail.com\n\nmasquerade:\n  type: proxy\n  proxy:\n    url: https://www.cloudflare.com \n\nquic:\n  congestionControl: bbr   \n  idleTimeout: 60s         \n  maxIdleTimeout: 60s     \n  keepAlivePeriod: 10s     \n\nudp:\n  idleTimeout: 60s```\n</code></pre>\n<ol start=\"4\" id=\"bkmrk-download-the-executa\">\n<li>Download the executable file from this <a href=\"https://github.com/apernet/hysteria/releases\">link</a>.</li>\n</ol>\n','\nInstall to latest version:\n\nbash <(curl -fsSL https://get.hy2.sh/)\nRemove and uninstall:\nbash <(curl -fsSL https://get.hy2.sh/) --remove\n\nIn home directory,\n\nmkdir hysteria\nnano config.yaml\n\nFill the blank yaml file with:\n\nprotocol: udp\n\nauth:\n  type: password\n  password: passwordtest \n\nacme:\n  domains:\n    - hysteria.znand.my.id\n  email: nannozeta@gmail.com\n\nmasquerade:\n  type: proxy\n  proxy:\n    url: https://www.cloudflare.com \n\nquic:\n  congestionControl: bbr   \n  idleTimeout: 60s         \n  maxIdleTimeout: 60s     \n  keepAlivePeriod: 10s     \n\nudp:\n  idleTimeout: 60s```\n\n\nDownload the executable file from this link.\n\n',1,'2025-02-22 14:17:53','2025-02-22 14:17:53','new-page-OOV','how-to-configure-hysteria2-server-udp-forwarding','version','1. Install to latest version:\r\n\r\n```bash <(curl -fsSL https://get.hy2.sh/)```\r\n\r\n Remove and uninstall:\r\n\r\n```bash <(curl -fsSL https://get.hy2.sh/) --remove```\r\n\r\n2. In home directory, \r\n\r\n```mkdir hysteria```\r\n```nano config.yaml```\r\n\r\n3. Fill the blank yaml file with:\r\n\r\n```listen: :443  \r\nprotocol: udp\r\n\r\nauth:\r\n  type: password\r\n  password: passwordtest \r\n\r\nacme:\r\n  domains:\r\n    - hysteria.znand.my.id\r\n  email: nannozeta@gmail.com\r\n\r\nmasquerade:\r\n  type: proxy\r\n  proxy:\r\n    url: https://www.cloudflare.com \r\n\r\nquic:\r\n  congestionControl: bbr   \r\n  idleTimeout: 60s         \r\n  maxIdleTimeout: 60s     \r\n  keepAlivePeriod: 10s     \r\n\r\nudp:\r\n  idleTimeout: 60s```\r\n```\r\n4. Download the executable file from this [link](https://github.com/apernet/hysteria/releases).','',4),
(11,2,'Configure the Server','<ol id=\"bkmrk-install-to-latest-ve\">\n<li>Install to latest version:</li>\n</ol>\n<p id=\"bkmrk-bash-%3C%28curl--fssl-ht\"><code>bash &lt;(curl -fsSL https://get.hy2.sh/)</code></p>\n<p id=\"bkmrk-remove-and-uninstall\">Remove and uninstall:</p>\n<p id=\"bkmrk-bash-%3C%28curl--fssl-ht-1\"><code>bash &lt;(curl -fsSL https://get.hy2.sh/) --remove</code></p>\n<ol start=\"2\" id=\"bkmrk-in-home-directory%2C\">\n<li>In home directory,</li>\n</ol>\n<p id=\"bkmrk-mkdir-hysteria-nano-\"><code>mkdir hysteria</code>\n<code>nano config.yaml</code></p>\n<ol start=\"3\" id=\"bkmrk-fill-the-blank-yaml-\">\n<li>Fill the blank yaml file with:</li>\n</ol>\n<pre id=\"bkmrk-protocol%3A-udp-auth%3A-\"><code class=\"language-listen:\">protocol: udp\n\nauth:\n  type: password\n  password: passwordtest \n\nacme:\n  domains:\n    - hysteria.znand.my.id\n  email: nannozeta@gmail.com\n\nmasquerade:\n  type: proxy\n  proxy:\n    url: https://www.cloudflare.com \n\nquic:\n  congestionControl: bbr   \n  idleTimeout: 60s         \n  maxIdleTimeout: 60s     \n  keepAlivePeriod: 10s     \n\nudp:\n  idleTimeout: 60s```\n</code></pre>\n<ol start=\"4\" id=\"bkmrk-download-the-executa\">\n<li>Download the executable file from this <a href=\"https://github.com/apernet/hysteria/releases\">link</a>.</li>\n</ol>\n','\nInstall to latest version:\n\nbash <(curl -fsSL https://get.hy2.sh/)\nRemove and uninstall:\nbash <(curl -fsSL https://get.hy2.sh/) --remove\n\nIn home directory,\n\nmkdir hysteria\nnano config.yaml\n\nFill the blank yaml file with:\n\nprotocol: udp\n\nauth:\n  type: password\n  password: passwordtest \n\nacme:\n  domains:\n    - hysteria.znand.my.id\n  email: nannozeta@gmail.com\n\nmasquerade:\n  type: proxy\n  proxy:\n    url: https://www.cloudflare.com \n\nquic:\n  congestionControl: bbr   \n  idleTimeout: 60s         \n  maxIdleTimeout: 60s     \n  keepAlivePeriod: 10s     \n\nudp:\n  idleTimeout: 60s```\n\n\nDownload the executable file from this link.\n\n',1,'2025-02-22 14:18:18','2025-02-22 14:18:18','configure-the-server','how-to-configure-hysteria2-server-udp-forwarding','version','1. Install to latest version:\r\n\r\n```bash <(curl -fsSL https://get.hy2.sh/)```\r\n\r\n Remove and uninstall:\r\n\r\n```bash <(curl -fsSL https://get.hy2.sh/) --remove```\r\n\r\n2. In home directory, \r\n\r\n```mkdir hysteria```\r\n```nano config.yaml```\r\n\r\n3. Fill the blank yaml file with:\r\n\r\n```listen: :443  \r\nprotocol: udp\r\n\r\nauth:\r\n  type: password\r\n  password: passwordtest \r\n\r\nacme:\r\n  domains:\r\n    - hysteria.znand.my.id\r\n  email: nannozeta@gmail.com\r\n\r\nmasquerade:\r\n  type: proxy\r\n  proxy:\r\n    url: https://www.cloudflare.com \r\n\r\nquic:\r\n  congestionControl: bbr   \r\n  idleTimeout: 60s         \r\n  maxIdleTimeout: 60s     \r\n  keepAlivePeriod: 10s     \r\n\r\nudp:\r\n  idleTimeout: 60s```\r\n```\r\n4. Download the executable file from this [link](https://github.com/apernet/hysteria/releases).','',5),
(13,2,'Configure the Server','<ol id=\"bkmrk-install-to-latest-ve\">\n<li>Install to latest version:</li>\n</ol>\n<p id=\"bkmrk-bash-%3C%28curl--fssl-ht\"><code>bash &lt;(curl -fsSL https://get.hy2.sh/)</code></p>\n<p id=\"bkmrk-remove-and-uninstall\">Remove and uninstall:</p>\n<p id=\"bkmrk-bash-%3C%28curl--fssl-ht-1\"><code>bash &lt;(curl -fsSL https://get.hy2.sh/) --remove</code></p>\n<ol start=\"2\" id=\"bkmrk-in-home-directory%2C\">\n<li>In home directory,</li>\n</ol>\n<p id=\"bkmrk-mkdir-hysteria-nano-\"><code>mkdir hysteria</code>\n<code>nano config.yaml</code></p>\n<ol start=\"3\" id=\"bkmrk-fill-the-blank-yaml-\">\n<li>Fill the blank yaml file with:</li>\n</ol>\n<pre id=\"bkmrk-protocol%3A-udp-auth%3A-\"><code class=\"language-listen:\">protocol: udp\n\nauth:\n  type: password\n  password: passwordtest \n\nacme:\n  domains:\n    - hysteria.znand.my.id\n  email: nannozeta@gmail.com\n\nmasquerade:\n  type: proxy\n  proxy:\n    url: https://www.cloudflare.com \n\nquic:\n  congestionControl: bbr   \n  idleTimeout: 60s         \n  maxIdleTimeout: 60s     \n  keepAlivePeriod: 10s     \n\nudp:\n  idleTimeout: 60s```\n```38\n</code></pre>\n<ol start=\"4\" id=\"bkmrk-download-the-executa\">\n<li>\n<p>Download the executable file from this <a href=\"https://github.com/apernet/hysteria/releases\">link</a>.</p>\n<div drawio-diagram=\"4\"><img src=\"https://x2.znand.my.id/uploads/images/drawio/2025-02/3od1B7vKW08kPez3-drawing-1-1740234277.png\"></div>\n</li>\n</ol>\n<p id=\"bkmrk-in-this-example-i-us\">In this example i use hysteria-linux-amd64-avx\n<code>wget https://github.com/apernet/hysteria/releases/download/app%2Fv2.6.1/hysteria-freebsd-amd64-avx</code></p>\n','\nInstall to latest version:\n\nbash <(curl -fsSL https://get.hy2.sh/)\nRemove and uninstall:\nbash <(curl -fsSL https://get.hy2.sh/) --remove\n\nIn home directory,\n\nmkdir hysteria\nnano config.yaml\n\nFill the blank yaml file with:\n\nprotocol: udp\n\nauth:\n  type: password\n  password: passwordtest \n\nacme:\n  domains:\n    - hysteria.znand.my.id\n  email: nannozeta@gmail.com\n\nmasquerade:\n  type: proxy\n  proxy:\n    url: https://www.cloudflare.com \n\nquic:\n  congestionControl: bbr   \n  idleTimeout: 60s         \n  maxIdleTimeout: 60s     \n  keepAlivePeriod: 10s     \n\nudp:\n  idleTimeout: 60s```\n```38\n\n\n\nDownload the executable file from this link.\n\n\n\nIn this example i use hysteria-linux-amd64-avx\nwget https://github.com/apernet/hysteria/releases/download/app%2Fv2.6.1/hysteria-freebsd-amd64-avx\n',1,'2025-02-22 14:26:34','2025-02-22 14:26:34','configure-the-server','how-to-configure-hysteria2-server-udp-forwarding','version','1. Install to latest version:\r\n\r\n```bash <(curl -fsSL https://get.hy2.sh/)```\r\n\r\n Remove and uninstall:\r\n\r\n```bash <(curl -fsSL https://get.hy2.sh/) --remove```\r\n\r\n2. In home directory, \r\n\r\n```mkdir hysteria```\r\n```nano config.yaml```\r\n\r\n3. Fill the blank yaml file with:\r\n\r\n```listen: :443  \r\nprotocol: udp\r\n\r\nauth:\r\n  type: password\r\n  password: passwordtest \r\n\r\nacme:\r\n  domains:\r\n    - hysteria.znand.my.id\r\n  email: nannozeta@gmail.com\r\n\r\nmasquerade:\r\n  type: proxy\r\n  proxy:\r\n    url: https://www.cloudflare.com \r\n\r\nquic:\r\n  congestionControl: bbr   \r\n  idleTimeout: 60s         \r\n  maxIdleTimeout: 60s     \r\n  keepAlivePeriod: 10s     \r\n\r\nudp:\r\n  idleTimeout: 60s```\r\n```38\r\n```\r\n4. Download the executable file from this [link](https://github.com/apernet/hysteria/releases).\r\n\r\n   <div drawio-diagram=\"4\"><img src=\"https://x2.znand.my.id/uploads/images/drawio/2025-02/3od1B7vKW08kPez3-drawing-1-1740234277.png\"></div>\r\n\r\nIn this example i use hysteria-linux-amd64-avx\r\n```wget https://github.com/apernet/hysteria/releases/download/app%2Fv2.6.1/hysteria-freebsd-amd64-avx```','',6),
(15,2,'Configure the Server','<ol id=\"bkmrk-install-to-latest-ve\">\n<li>Install to latest version:</li>\n</ol>\n<p id=\"bkmrk-bash-%3C%28curl--fssl-ht\"><code>bash &lt;(curl -fsSL https://get.hy2.sh/)</code></p>\n<p id=\"bkmrk-remove-and-uninstall\">Remove and uninstall:</p>\n<p id=\"bkmrk-bash-%3C%28curl--fssl-ht-1\"><code>bash &lt;(curl -fsSL https://get.hy2.sh/) --remove</code></p>\n<ol start=\"2\" id=\"bkmrk-in-home-directory%2C\">\n<li>In home directory,</li>\n</ol>\n<p id=\"bkmrk-mkdir-hysteria-nano-\"><code>mkdir hysteria</code>\n<code>nano config.yaml</code></p>\n<ol start=\"3\" id=\"bkmrk-fill-the-blank-yaml-\">\n<li>Fill the blank yaml file with:</li>\n</ol>\n<pre id=\"bkmrk-protocol%3A-udp-auth%3A-\"><code class=\"language-listen:\">protocol: udp\n\nauth:\n  type: password\n  password: passwordtest \n\nacme:\n  domains:\n    - hysteria.znand.my.id\n  email: nannozeta@gmail.com\n\nmasquerade:\n  type: proxy\n  proxy:\n    url: https://www.cloudflare.com \n\nquic:\n  congestionControl: bbr   \n  idleTimeout: 60s         \n  maxIdleTimeout: 60s     \n  keepAlivePeriod: 10s     \n\nudp:\n  idleTimeout: 60s\n</code></pre>\n<ol start=\"4\" id=\"bkmrk-download-the-executa\">\n<li>\n<p>Download the executable file from this <a href=\"https://github.com/apernet/hysteria/releases\">link</a>.</p>\n<div drawio-diagram=\"4\"><img src=\"https://x2.znand.my.id/uploads/images/drawio/2025-02/3od1B7vKW08kPez3-drawing-1-1740234277.png\"></div>\n</li>\n</ol>\n<p id=\"bkmrk-in-this-example-i-us\">In this example i use hysteria-linux-amd64-avx\n<code>wget https://github.com/apernet/hysteria/releases/download/app%2Fv2.6.1/hysteria-linux-amd64-avx</code></p>\n<ol start=\"5\" id=\"bkmrk-run-the-server-sudo-\">\n<li>Run the server\n<code>sudo setcap cap_net_bind_service=+ep ./hysteria-linux-amd64-avx</code>\n<code>./hysteria-linux-amd64-avx server</code></li>\n</ol>\n<p id=\"bkmrk-if-you-got-this-erro\">If you got this error:</p>\n<div drawio-diagram=\"9\" id=\"bkmrk-\"><img src=\"https://x2.znand.my.id/uploads/images/drawio/2025-02/0w9r75mt6SG673Ac-drawing-1-1740236467.png\"></div>\n<p id=\"bkmrk-give-the-permission%3A\">Give the permission:\n<code>sudo chmod +x hysteria-linux-amd64-avx</code></p>\n<p id=\"bkmrk-and-you-should-get-t\">And you should get the problem solved and server is ready to be running.</p>\n<div drawio-diagram=\"10\" id=\"bkmrk--1\"><img src=\"https://x2.znand.my.id/uploads/images/drawio/2025-02/iafnjWw8NndOjO35-drawing-1-1740236636.png\"></div>\n<p id=\"bkmrk-also-you-will-got-th\">Also you will got the SSL Certificate from Acme and server is already running (listening on port 443):</p>\n<div drawio-diagram=\"11\" id=\"bkmrk--2\"><img src=\"https://x2.znand.my.id/uploads/images/drawio/2025-02/tGOhBjZBg7rqXkru-drawing-1-1740236802.png\"></div>\n','\nInstall to latest version:\n\nbash <(curl -fsSL https://get.hy2.sh/)\nRemove and uninstall:\nbash <(curl -fsSL https://get.hy2.sh/) --remove\n\nIn home directory,\n\nmkdir hysteria\nnano config.yaml\n\nFill the blank yaml file with:\n\nprotocol: udp\n\nauth:\n  type: password\n  password: passwordtest \n\nacme:\n  domains:\n    - hysteria.znand.my.id\n  email: nannozeta@gmail.com\n\nmasquerade:\n  type: proxy\n  proxy:\n    url: https://www.cloudflare.com \n\nquic:\n  congestionControl: bbr   \n  idleTimeout: 60s         \n  maxIdleTimeout: 60s     \n  keepAlivePeriod: 10s     \n\nudp:\n  idleTimeout: 60s\n\n\n\nDownload the executable file from this link.\n\n\n\nIn this example i use hysteria-linux-amd64-avx\nwget https://github.com/apernet/hysteria/releases/download/app%2Fv2.6.1/hysteria-linux-amd64-avx\n\nRun the server\nsudo setcap cap_net_bind_service=+ep ./hysteria-linux-amd64-avx\n./hysteria-linux-amd64-avx server\n\nIf you got this error:\n\nGive the permission:\nsudo chmod +x hysteria-linux-amd64-avx\nAnd you should get the problem solved and server is ready to be running.\n\nAlso you will got the SSL Certificate from Acme and server is already running (listening on port 443):\n\n',1,'2025-02-22 15:07:53','2025-02-22 15:07:54','configure-the-server','how-to-configure-hysteria2-server-udp-forwarding','version','1. Install to latest version:\r\n\r\n```bash <(curl -fsSL https://get.hy2.sh/)```\r\n\r\n Remove and uninstall:\r\n\r\n```bash <(curl -fsSL https://get.hy2.sh/) --remove```\r\n\r\n2. In home directory, \r\n\r\n```mkdir hysteria```\r\n```nano config.yaml```\r\n\r\n3. Fill the blank yaml file with:\r\n\r\n```listen: :443  \r\nprotocol: udp\r\n\r\nauth:\r\n  type: password\r\n  password: passwordtest \r\n\r\nacme:\r\n  domains:\r\n    - hysteria.znand.my.id\r\n  email: nannozeta@gmail.com\r\n\r\nmasquerade:\r\n  type: proxy\r\n  proxy:\r\n    url: https://www.cloudflare.com \r\n\r\nquic:\r\n  congestionControl: bbr   \r\n  idleTimeout: 60s         \r\n  maxIdleTimeout: 60s     \r\n  keepAlivePeriod: 10s     \r\n\r\nudp:\r\n  idleTimeout: 60s\r\n```\r\n\r\n4. Download the executable file from this [link](https://github.com/apernet/hysteria/releases).\r\n\r\n   <div drawio-diagram=\"4\"><img src=\"https://x2.znand.my.id/uploads/images/drawio/2025-02/3od1B7vKW08kPez3-drawing-1-1740234277.png\"></div>\r\n\r\nIn this example i use hysteria-linux-amd64-avx\r\n```wget https://github.com/apernet/hysteria/releases/download/app%2Fv2.6.1/hysteria-linux-amd64-avx```\r\n\r\n5. Run the server\r\n```sudo setcap cap_net_bind_service=+ep ./hysteria-linux-amd64-avx```\r\n```./hysteria-linux-amd64-avx server```\r\n\r\nIf you got this error:\r\n<div drawio-diagram=\"9\"><img src=\"https://x2.znand.my.id/uploads/images/drawio/2025-02/0w9r75mt6SG673Ac-drawing-1-1740236467.png\"></div>\r\n\r\nGive the permission:\r\n```sudo chmod +x hysteria-linux-amd64-avx```\r\n\r\nAnd you should get the problem solved and server is ready to be running.\r\n<div drawio-diagram=\"10\"><img src=\"https://x2.znand.my.id/uploads/images/drawio/2025-02/iafnjWw8NndOjO35-drawing-1-1740236636.png\"></div>\r\n\r\nAlso you will got the SSL Certificate from Acme and server is already running (listening on port 443):\r\n<div drawio-diagram=\"11\"><img src=\"https://x2.znand.my.id/uploads/images/drawio/2025-02/tGOhBjZBg7rqXkru-drawing-1-1740236802.png\"></div>','',7),
(17,2,'Configure the Server','<ol id=\"bkmrk-install-to-latest-ve\">\n<li>Install to latest version:</li>\n</ol>\n<p id=\"bkmrk-bash-%3C%28curl--fssl-ht\"><code>bash &lt;(curl -fsSL https://get.hy2.sh/)</code></p>\n<p id=\"bkmrk-remove-and-uninstall\">Remove and uninstall:</p>\n<p id=\"bkmrk-bash-%3C%28curl--fssl-ht-1\"><code>bash &lt;(curl -fsSL https://get.hy2.sh/) --remove</code></p>\n<ol start=\"2\" id=\"bkmrk-in-home-directory%2C\">\n<li>In home directory,</li>\n</ol>\n<p id=\"bkmrk-mkdir-hysteria-nano-\"><code>mkdir hysteria</code>\n<code>nano config.yaml</code></p>\n<ol start=\"3\" id=\"bkmrk-fill-the-blank-yaml-\">\n<li>Fill the blank yaml file with:</li>\n</ol>\n<pre id=\"bkmrk-protocol%3A-udp-auth%3A-\"><code class=\"language-listen:\">protocol: udp\n\nauth:\n  type: password\n  password: passwordtest \n\nacme:\n  domains:\n    - hysteria.znand.my.id\n  email: nannozeta@gmail.com\n\nmasquerade:\n  type: proxy\n  proxy:\n    url: https://www.cloudflare.com \n\nquic:\n  congestionControl: bbr   \n  idleTimeout: 60s         \n  maxIdleTimeout: 60s     \n  keepAlivePeriod: 10s     \n\nudp:\n  idleTimeout: 60s\n</code></pre>\n<ol start=\"4\" id=\"bkmrk-download-the-executa\">\n<li>\n<p>Download the executable file from this <a href=\"https://github.com/apernet/hysteria/releases\">link</a>.</p>\n<div drawio-diagram=\"4\"><img src=\"https://x2.znand.my.id/uploads/images/drawio/2025-02/3od1B7vKW08kPez3-drawing-1-1740234277.png\"></div>\n</li>\n</ol>\n<p id=\"bkmrk-in-this-example-i-us\">In this example i use hysteria-linux-amd64-avx\n<code>wget https://github.com/apernet/hysteria/releases/download/app%2Fv2.6.1/hysteria-linux-amd64-avx</code></p>\n<ol start=\"5\" id=\"bkmrk-run-the-server-sudo-\">\n<li>Run the server\n<code>sudo setcap cap_net_bind_service=+ep ./hysteria-linux-amd64-avx</code>\n<code>./hysteria-linux-amd64-avx server</code></li>\n</ol>\n<p id=\"bkmrk-if-you-got-this-erro\">If you got this error:</p>\n<div drawio-diagram=\"9\" id=\"bkmrk-\"><img src=\"https://x2.znand.my.id/uploads/images/drawio/2025-02/0w9r75mt6SG673Ac-drawing-1-1740236467.png\"></div>\n<p id=\"bkmrk-give-the-permission%3A\">Give the permission:\n<code>sudo chmod +x hysteria-linux-amd64-avx</code></p>\n<p id=\"bkmrk-and-you-should-get-t\">And you should get the problem solved and server is ready to be running.</p>\n<div drawio-diagram=\"10\" id=\"bkmrk--1\"><img src=\"https://x2.znand.my.id/uploads/images/drawio/2025-02/iafnjWw8NndOjO35-drawing-1-1740236636.png\"></div>\n<p id=\"bkmrk-also-you-will-got-th\">Also you will got the SSL Certificate from Acme and server is already running (listening on port 443):</p>\n<div drawio-diagram=\"11\" id=\"bkmrk--2\"><img src=\"https://x2.znand.my.id/uploads/images/drawio/2025-02/tGOhBjZBg7rqXkru-drawing-1-1740236802.png\"></div>\n<p id=\"bkmrk-if-you-want-to-run-t\">If you want to run the server from systemd, you can read the next page :).</p>\n','\nInstall to latest version:\n\nbash <(curl -fsSL https://get.hy2.sh/)\nRemove and uninstall:\nbash <(curl -fsSL https://get.hy2.sh/) --remove\n\nIn home directory,\n\nmkdir hysteria\nnano config.yaml\n\nFill the blank yaml file with:\n\nprotocol: udp\n\nauth:\n  type: password\n  password: passwordtest \n\nacme:\n  domains:\n    - hysteria.znand.my.id\n  email: nannozeta@gmail.com\n\nmasquerade:\n  type: proxy\n  proxy:\n    url: https://www.cloudflare.com \n\nquic:\n  congestionControl: bbr   \n  idleTimeout: 60s         \n  maxIdleTimeout: 60s     \n  keepAlivePeriod: 10s     \n\nudp:\n  idleTimeout: 60s\n\n\n\nDownload the executable file from this link.\n\n\n\nIn this example i use hysteria-linux-amd64-avx\nwget https://github.com/apernet/hysteria/releases/download/app%2Fv2.6.1/hysteria-linux-amd64-avx\n\nRun the server\nsudo setcap cap_net_bind_service=+ep ./hysteria-linux-amd64-avx\n./hysteria-linux-amd64-avx server\n\nIf you got this error:\n\nGive the permission:\nsudo chmod +x hysteria-linux-amd64-avx\nAnd you should get the problem solved and server is ready to be running.\n\nAlso you will got the SSL Certificate from Acme and server is already running (listening on port 443):\n\nIf you want to run the server from systemd, you can read the next page :).\n',1,'2025-02-22 15:13:04','2025-02-22 15:13:04','configure-the-server','how-to-configure-hysteria2-server-udp-forwarding','version','1. Install to latest version:\r\n\r\n```bash <(curl -fsSL https://get.hy2.sh/)```\r\n\r\n Remove and uninstall:\r\n\r\n```bash <(curl -fsSL https://get.hy2.sh/) --remove```\r\n\r\n2. In home directory, \r\n\r\n```mkdir hysteria```\r\n```nano config.yaml```\r\n\r\n3. Fill the blank yaml file with:\r\n\r\n```listen: :443  \r\nprotocol: udp\r\n\r\nauth:\r\n  type: password\r\n  password: passwordtest \r\n\r\nacme:\r\n  domains:\r\n    - hysteria.znand.my.id\r\n  email: nannozeta@gmail.com\r\n\r\nmasquerade:\r\n  type: proxy\r\n  proxy:\r\n    url: https://www.cloudflare.com \r\n\r\nquic:\r\n  congestionControl: bbr   \r\n  idleTimeout: 60s         \r\n  maxIdleTimeout: 60s     \r\n  keepAlivePeriod: 10s     \r\n\r\nudp:\r\n  idleTimeout: 60s\r\n```\r\n\r\n4. Download the executable file from this [link](https://github.com/apernet/hysteria/releases).\r\n\r\n   <div drawio-diagram=\"4\"><img src=\"https://x2.znand.my.id/uploads/images/drawio/2025-02/3od1B7vKW08kPez3-drawing-1-1740234277.png\"></div>\r\n\r\nIn this example i use hysteria-linux-amd64-avx\r\n```wget https://github.com/apernet/hysteria/releases/download/app%2Fv2.6.1/hysteria-linux-amd64-avx```\r\n\r\n5. Run the server\r\n```sudo setcap cap_net_bind_service=+ep ./hysteria-linux-amd64-avx```\r\n```./hysteria-linux-amd64-avx server```\r\n\r\nIf you got this error:\r\n<div drawio-diagram=\"9\"><img src=\"https://x2.znand.my.id/uploads/images/drawio/2025-02/0w9r75mt6SG673Ac-drawing-1-1740236467.png\"></div>\r\n\r\nGive the permission:\r\n```sudo chmod +x hysteria-linux-amd64-avx```\r\n\r\nAnd you should get the problem solved and server is ready to be running.\r\n<div drawio-diagram=\"10\"><img src=\"https://x2.znand.my.id/uploads/images/drawio/2025-02/iafnjWw8NndOjO35-drawing-1-1740236636.png\"></div>\r\n\r\nAlso you will got the SSL Certificate from Acme and server is already running (listening on port 443):\r\n<div drawio-diagram=\"11\"><img src=\"https://x2.znand.my.id/uploads/images/drawio/2025-02/tGOhBjZBg7rqXkru-drawing-1-1740236802.png\"></div>\r\n\r\nIf you want to run the server from systemd, you can read the next page :).','',8),
(18,3,'New Page','<ol id=\"bkmrk-edit-hysteria-server\">\n<li>Edit hysteria-server.service in systemd</li>\n</ol>\n<p id=\"bkmrk-nano-%2Fetc%2Fsystemd%2Fsy\"><code>nano /etc/systemd/system/hysteria-server.service</code></p>\n<div drawio-diagram=\"13\" id=\"bkmrk-\"><img src=\"https://x2.znand.my.id/uploads/images/drawio/2025-02/BaylkcsYPHUBgHhz-drawing-1-1740237280.png\"></div>\n<p id=\"bkmrk-edit-the-file-into-t\">Edit the file into this:</p>\n<pre id=\"bkmrk-description%3Dhysteria\"><code class=\"language-[Unit]\">Description=Hysteria Server Service (config.yaml)\nAfter=network.target\n\n[Service]\nType=simple\nExecStart=/root/hysteria/hysteria-linux-amd64-avx -c /root/hysteria/config.yaml\nWorkingDirectory=/root/hysteria\nUser=root\nGroup=root\nEnvironment=HYSTERIA_LOG_LEVEL=info\nCapabilityBoundingSet=CAP_NET_ADMIN CAP_NET_BIND_SERVICE CAP_NET_RAW\nAmbientCapabilities=CAP_NET_ADMIN CAP_NET_BIND_SERVICE CAP_NET_RAW\nNoNewPrivileges=true\nRestart=on-failure\nLimitNOFILE=4096\n\n[Install]\nWantedBy=multi-user.target```\n</code></pre>\n','\nEdit hysteria-server.service in systemd\n\nnano /etc/systemd/system/hysteria-server.service\n\nEdit the file into this:\nDescription=Hysteria Server Service (config.yaml)\nAfter=network.target\n\n[Service]\nType=simple\nExecStart=/root/hysteria/hysteria-linux-amd64-avx -c /root/hysteria/config.yaml\nWorkingDirectory=/root/hysteria\nUser=root\nGroup=root\nEnvironment=HYSTERIA_LOG_LEVEL=info\nCapabilityBoundingSet=CAP_NET_ADMIN CAP_NET_BIND_SERVICE CAP_NET_RAW\nAmbientCapabilities=CAP_NET_ADMIN CAP_NET_BIND_SERVICE CAP_NET_RAW\nNoNewPrivileges=true\nRestart=on-failure\nLimitNOFILE=4096\n\n[Install]\nWantedBy=multi-user.target```\n\n',1,'2025-02-22 15:17:12','2025-02-22 15:17:12','new-page','how-to-configure-hysteria2-server-udp-forwarding','version','1. Edit hysteria-server.service in systemd\r\n\r\n```nano /etc/systemd/system/hysteria-server.service```\r\n\r\n<div drawio-diagram=\"13\"><img src=\"https://x2.znand.my.id/uploads/images/drawio/2025-02/BaylkcsYPHUBgHhz-drawing-1-1740237280.png\"></div>\r\n\r\nEdit the file into this:\r\n\r\n```[Unit]\r\nDescription=Hysteria Server Service (config.yaml)\r\nAfter=network.target\r\n\r\n[Service]\r\nType=simple\r\nExecStart=/root/hysteria/hysteria-linux-amd64-avx -c /root/hysteria/config.yaml\r\nWorkingDirectory=/root/hysteria\r\nUser=root\r\nGroup=root\r\nEnvironment=HYSTERIA_LOG_LEVEL=info\r\nCapabilityBoundingSet=CAP_NET_ADMIN CAP_NET_BIND_SERVICE CAP_NET_RAW\r\nAmbientCapabilities=CAP_NET_ADMIN CAP_NET_BIND_SERVICE CAP_NET_RAW\r\nNoNewPrivileges=true\r\nRestart=on-failure\r\nLimitNOFILE=4096\r\n\r\n[Install]\r\nWantedBy=multi-user.target```','Initial publish',1),
(20,3,'New Page','<ol id=\"bkmrk-edit-hysteria-server\">\n<li>Edit hysteria-server.service in systemd</li>\n</ol>\n<p id=\"bkmrk-nano-%2Fetc%2Fsystemd%2Fsy\"><code>nano /etc/systemd/system/hysteria-server.service</code></p>\n<div drawio-diagram=\"13\" id=\"bkmrk-\"><img src=\"https://x2.znand.my.id/uploads/images/drawio/2025-02/BaylkcsYPHUBgHhz-drawing-1-1740237280.png\"></div>\n<ol start=\"2\" id=\"bkmrk-edit-the-file-into-t\">\n<li>Edit the file into this:</li>\n</ol>\n<pre id=\"bkmrk-description%3Dhysteria\"><code class=\"language-[Unit]\">Description=Hysteria Server Service\nAfter=network.target\n\n[Service]\nType=simple\nExecStart=/root/hysteria/hysteria-linux-amd64-avx server -c /root/hysteria/config.yaml\nWorkingDirectory=/root/hysteria\nUser=root\nGroup=root\nEnvironment=HYSTERIA_LOG_LEVEL=info\nCapabilityBoundingSet=CAP_NET_ADMIN CAP_NET_BIND_SERVICE CAP_NET_RAW\nAmbientCapabilities=CAP_NET_ADMIN CAP_NET_BIND_SERVICE CAP_NET_RAW\nNoNewPrivileges=true\nRestart=on-failure\nLimitNOFILE=4096\n\n[Install]\nWantedBy=multi-user.target\n</code></pre>\n<ol start=\"3\" id=\"bkmrk-save-the-file-and-ru\">\n<li>Save the file and run the service:</li>\n</ol>\n<p id=\"bkmrk-systemctl-daemon-rel\"><code>systemctl daemon-reload</code>\n<code>systemctl enable --now hysteria-server.service</code>\n<code>systemctl start hysteria-server.service</code></p>\n<ol start=\"4\" id=\"bkmrk-check-the-status%2C-ru\">\n<li>Check the status, running or not:</li>\n</ol>\n<p id=\"bkmrk-systemctl-status-hys\"><code>systemctl status hysteria-server.service</code></p>\n<p id=\"bkmrk-your-service-should-\">Your service should be like this:</p>\n<div drawio-diagram=\"15\" id=\"bkmrk--1\"><img src=\"https://x2.znand.my.id/uploads/images/drawio/2025-02/MFIAEcB90gI4eb8W-drawing-1-1740237929.png\">\n</div>','\nEdit hysteria-server.service in systemd\n\nnano /etc/systemd/system/hysteria-server.service\n\n\nEdit the file into this:\n\nDescription=Hysteria Server Service\nAfter=network.target\n\n[Service]\nType=simple\nExecStart=/root/hysteria/hysteria-linux-amd64-avx server -c /root/hysteria/config.yaml\nWorkingDirectory=/root/hysteria\nUser=root\nGroup=root\nEnvironment=HYSTERIA_LOG_LEVEL=info\nCapabilityBoundingSet=CAP_NET_ADMIN CAP_NET_BIND_SERVICE CAP_NET_RAW\nAmbientCapabilities=CAP_NET_ADMIN CAP_NET_BIND_SERVICE CAP_NET_RAW\nNoNewPrivileges=true\nRestart=on-failure\nLimitNOFILE=4096\n\n[Install]\nWantedBy=multi-user.target\n\n\nSave the file and run the service:\n\nsystemctl daemon-reload\nsystemctl enable --now hysteria-server.service\nsystemctl start hysteria-server.service\n\nCheck the status, running or not:\n\nsystemctl status hysteria-server.service\nYour service should be like this:\n\n',1,'2025-02-22 15:26:00','2025-02-22 15:26:00','new-page','how-to-configure-hysteria2-server-udp-forwarding','version','1. Edit hysteria-server.service in systemd\r\n\r\n```nano /etc/systemd/system/hysteria-server.service```\r\n\r\n<div drawio-diagram=\"13\"><img src=\"https://x2.znand.my.id/uploads/images/drawio/2025-02/BaylkcsYPHUBgHhz-drawing-1-1740237280.png\"></div>\r\n\r\n2. Edit the file into this:\r\n\r\n```[Unit]\r\nDescription=Hysteria Server Service\r\nAfter=network.target\r\n\r\n[Service]\r\nType=simple\r\nExecStart=/root/hysteria/hysteria-linux-amd64-avx server -c /root/hysteria/config.yaml\r\nWorkingDirectory=/root/hysteria\r\nUser=root\r\nGroup=root\r\nEnvironment=HYSTERIA_LOG_LEVEL=info\r\nCapabilityBoundingSet=CAP_NET_ADMIN CAP_NET_BIND_SERVICE CAP_NET_RAW\r\nAmbientCapabilities=CAP_NET_ADMIN CAP_NET_BIND_SERVICE CAP_NET_RAW\r\nNoNewPrivileges=true\r\nRestart=on-failure\r\nLimitNOFILE=4096\r\n\r\n[Install]\r\nWantedBy=multi-user.target\r\n```\r\n\r\n3. Save the file and run the service:\r\n\r\n```systemctl daemon-reload```\r\n```systemctl enable --now hysteria-server.service```\r\n```systemctl start hysteria-server.service```\r\n\r\n4. Check the status, running or not:\r\n\r\n```systemctl status hysteria-server.service```\r\n\r\nYour service should be like this:\r\n\r\n<div drawio-diagram=\"15\"><img src=\"https://x2.znand.my.id/uploads/images/drawio/2025-02/MFIAEcB90gI4eb8W-drawing-1-1740237929.png\">','',2),
(21,3,'Configure the service in systemd','<ol id=\"bkmrk-edit-hysteria-server\">\n<li>Edit hysteria-server.service in systemd</li>\n</ol>\n<p id=\"bkmrk-nano-%2Fetc%2Fsystemd%2Fsy\"><code>nano /etc/systemd/system/hysteria-server.service</code></p>\n<div drawio-diagram=\"13\" id=\"bkmrk-\"><img src=\"https://x2.znand.my.id/uploads/images/drawio/2025-02/BaylkcsYPHUBgHhz-drawing-1-1740237280.png\"></div>\n<ol start=\"2\" id=\"bkmrk-edit-the-file-into-t\">\n<li>Edit the file into this:</li>\n</ol>\n<pre id=\"bkmrk-description%3Dhysteria\"><code class=\"language-[Unit]\">Description=Hysteria Server Service\nAfter=network.target\n\n[Service]\nType=simple\nExecStart=/root/hysteria/hysteria-linux-amd64-avx server -c /root/hysteria/config.yaml\nWorkingDirectory=/root/hysteria\nUser=root\nGroup=root\nEnvironment=HYSTERIA_LOG_LEVEL=info\nCapabilityBoundingSet=CAP_NET_ADMIN CAP_NET_BIND_SERVICE CAP_NET_RAW\nAmbientCapabilities=CAP_NET_ADMIN CAP_NET_BIND_SERVICE CAP_NET_RAW\nNoNewPrivileges=true\nRestart=on-failure\nLimitNOFILE=4096\n\n[Install]\nWantedBy=multi-user.target\n</code></pre>\n<ol start=\"3\" id=\"bkmrk-save-the-file-and-ru\">\n<li>Save the file and run the service:</li>\n</ol>\n<p id=\"bkmrk-systemctl-daemon-rel\"><code>systemctl daemon-reload</code>\n<code>systemctl enable --now hysteria-server.service</code>\n<code>systemctl start hysteria-server.service</code></p>\n<ol start=\"4\" id=\"bkmrk-check-the-status%2C-ru\">\n<li>Check the status, running or not:</li>\n</ol>\n<p id=\"bkmrk-systemctl-status-hys\"><code>systemctl status hysteria-server.service</code></p>\n<p id=\"bkmrk-your-service-should-\">Your service should be like this:</p>\n<div drawio-diagram=\"15\" id=\"bkmrk--1\"><img src=\"https://x2.znand.my.id/uploads/images/drawio/2025-02/MFIAEcB90gI4eb8W-drawing-1-1740237929.png\">\n</div>','\nEdit hysteria-server.service in systemd\n\nnano /etc/systemd/system/hysteria-server.service\n\n\nEdit the file into this:\n\nDescription=Hysteria Server Service\nAfter=network.target\n\n[Service]\nType=simple\nExecStart=/root/hysteria/hysteria-linux-amd64-avx server -c /root/hysteria/config.yaml\nWorkingDirectory=/root/hysteria\nUser=root\nGroup=root\nEnvironment=HYSTERIA_LOG_LEVEL=info\nCapabilityBoundingSet=CAP_NET_ADMIN CAP_NET_BIND_SERVICE CAP_NET_RAW\nAmbientCapabilities=CAP_NET_ADMIN CAP_NET_BIND_SERVICE CAP_NET_RAW\nNoNewPrivileges=true\nRestart=on-failure\nLimitNOFILE=4096\n\n[Install]\nWantedBy=multi-user.target\n\n\nSave the file and run the service:\n\nsystemctl daemon-reload\nsystemctl enable --now hysteria-server.service\nsystemctl start hysteria-server.service\n\nCheck the status, running or not:\n\nsystemctl status hysteria-server.service\nYour service should be like this:\n\n',1,'2025-02-22 15:26:28','2025-02-22 15:26:28','configure-the-service-in-systemd','how-to-configure-hysteria2-server-udp-forwarding','version','1. Edit hysteria-server.service in systemd\r\n\r\n```nano /etc/systemd/system/hysteria-server.service```\r\n\r\n<div drawio-diagram=\"13\"><img src=\"https://x2.znand.my.id/uploads/images/drawio/2025-02/BaylkcsYPHUBgHhz-drawing-1-1740237280.png\"></div>\r\n\r\n2. Edit the file into this:\r\n\r\n```[Unit]\r\nDescription=Hysteria Server Service\r\nAfter=network.target\r\n\r\n[Service]\r\nType=simple\r\nExecStart=/root/hysteria/hysteria-linux-amd64-avx server -c /root/hysteria/config.yaml\r\nWorkingDirectory=/root/hysteria\r\nUser=root\r\nGroup=root\r\nEnvironment=HYSTERIA_LOG_LEVEL=info\r\nCapabilityBoundingSet=CAP_NET_ADMIN CAP_NET_BIND_SERVICE CAP_NET_RAW\r\nAmbientCapabilities=CAP_NET_ADMIN CAP_NET_BIND_SERVICE CAP_NET_RAW\r\nNoNewPrivileges=true\r\nRestart=on-failure\r\nLimitNOFILE=4096\r\n\r\n[Install]\r\nWantedBy=multi-user.target\r\n```\r\n\r\n3. Save the file and run the service:\r\n\r\n```systemctl daemon-reload```\r\n```systemctl enable --now hysteria-server.service```\r\n```systemctl start hysteria-server.service```\r\n\r\n4. Check the status, running or not:\r\n\r\n```systemctl status hysteria-server.service```\r\n\r\nYour service should be like this:\r\n\r\n<div drawio-diagram=\"15\"><img src=\"https://x2.znand.my.id/uploads/images/drawio/2025-02/MFIAEcB90gI4eb8W-drawing-1-1740237929.png\">','',3),
(22,5,'New Page','<ol id=\"bkmrk-firstly%2C-download-th\">\n<li>\n<p>Firstly, download the client app. In this example, im using Nekobox to use the server in my Device. You can download through this <a href=\"https://github.com/MatsuriDayo/nekoray/releases\">link</a> and download the app according your OS.</p>\n</li>\n<li>\n<p>Open the software and add the new profile:</p>\n</li>\n</ol>\n<div drawio-diagram=\"17\" id=\"bkmrk-\"><img src=\"https://x2.znand.my.id/uploads/images/drawio/2025-02/73yP7O1amXBPAb0P-drawing-1-1740238557.png\"></div>\n','\n\nFirstly, download the client app. In this example, im using Nekobox to use the server in my Device. You can download through this link and download the app according your OS.\n\n\nOpen the software and add the new profile:\n\n\n\n',1,'2025-02-22 15:36:35','2025-02-22 15:36:35','new-page','how-to-configure-hysteria2-server-udp-forwarding','version','1. Firstly, download the client app. In this example, im using Nekobox to use the server in my Device. You can download through this [link](https://github.com/MatsuriDayo/nekoray/releases) and download the app according your OS.\r\n\r\n2. Open the software and add the new profile:\r\n<div drawio-diagram=\"17\"><img src=\"https://x2.znand.my.id/uploads/images/drawio/2025-02/73yP7O1amXBPAb0P-drawing-1-1740238557.png\"></div>','Initial publish',1),
(24,5,'Configure the client side','<ol id=\"bkmrk-firstly%2C-download-th\">\n<li>\n<p>Firstly, download the client app. In this example, im using Nekobox to use the server in my Device. You can download through this <a href=\"https://github.com/MatsuriDayo/nekoray/releases\">link</a> and download the app according your OS.</p>\n</li>\n<li>\n<p>Open the software and add the new profile:</p>\n</li>\n</ol>\n<div drawio-diagram=\"17\" id=\"bkmrk-\"><img src=\"https://x2.znand.my.id/uploads/images/drawio/2025-02/73yP7O1amXBPAb0P-drawing-1-1740238557.png\"></div>\n<ol start=\"3\" id=\"bkmrk-fill-the-configurati\">\n<li>Fill the configuration according the server you configured before:</li>\n</ol>\n<div drawio-diagram=\"17\" id=\"bkmrk--1\"><i drawio-diagram=\"20\"><img src=\"https://x2.znand.my.id/uploads/images/drawio/2025-02/03fk9RwQ6G4Rrt3o-drawing-1-1740238846.png\"></i></div>\n<ol start=\"4\" id=\"bkmrk-start%3A-mg-src%3D%22https\">\n<li>Start:\n<div drawio-diagram=\"19\"><img src=\"https://x2.znand.my.id/uploads/images/drawio/2025-02/fLK1oTCfavzPWnX8-drawing-1-1740238845.png\"></div>mg src=\"https://x2.znand.my.id/uploads/images/drawio/2025-02/A2kXVC997tYk1u1V-drawing-1-1740238655.png\"&gt;\n</li>\n</ol>\n','\n\nFirstly, download the client app. In this example, im using Nekobox to use the server in my Device. You can download through this link and download the app according your OS.\n\n\nOpen the software and add the new profile:\n\n\n\n\nFill the configuration according the server you configured before:\n\n\n\nStart:\nmg src=\"https://x2.znand.my.id/uploads/images/drawio/2025-02/A2kXVC997tYk1u1V-drawing-1-1740238655.png\">\n\n\n',1,'2025-02-22 15:41:31','2025-02-22 15:41:31','configure-the-client-side','how-to-configure-hysteria2-server-udp-forwarding','version','1. Firstly, download the client app. In this example, im using Nekobox to use the server in my Device. You can download through this [link](https://github.com/MatsuriDayo/nekoray/releases) and download the app according your OS.\r\n\r\n\r\n2. Open the software and add the new profile:\r\n<div drawio-diagram=\"17\"><img src=\"https://x2.znand.my.id/uploads/images/drawio/2025-02/73yP7O1amXBPAb0P-drawing-1-1740238557.png\"></div>\r\n\r\n3. Fill the configuration according the server you configured before:\r\n<div drawio-diagram=\"17\"><i<div drawio-diagram=\"20\"><img src=\"https://x2.znand.my.id/uploads/images/drawio/2025-02/03fk9RwQ6G4Rrt3o-drawing-1-1740238846.png\"></div>\r\n\r\n4. Start:\r\n   <div drawio-diagram=\"19\"><img src=\"https://x2.znand.my.id/uploads/images/drawio/2025-02/fLK1oTCfavzPWnX8-drawing-1-1740238845.png\"></div>mg src=\"https://x2.znand.my.id/uploads/images/drawio/2025-02/A2kXVC997tYk1u1V-drawing-1-1740238655.png\"></div>','',2),
(26,5,'Configure the client side','<ol id=\"bkmrk-firstly%2C-download-th\">\n<li>\n<p>Firstly, download the client app. In this example, im using Nekobox to use the server in my Device. You can download through this <a href=\"https://github.com/MatsuriDayo/nekoray/releases\">link</a> and download the app according your OS.</p>\n</li>\n<li>\n<p>Open the software and add the new profile:</p>\n</li>\n</ol>\n<div drawio-diagram=\"17\" id=\"bkmrk-\"><img src=\"https://x2.znand.my.id/uploads/images/drawio/2025-02/73yP7O1amXBPAb0P-drawing-1-1740238557.png\"></div>\n<ol start=\"3\" id=\"bkmrk-fill-the-configurati\">\n<li>Fill the configuration according the server you configured before:</li>\n</ol>\n<div drawio-diagram=\"17\" id=\"bkmrk--1\"><i drawio-diagram=\"20\"><img src=\"https://x2.znand.my.id/uploads/images/drawio/2025-02/03fk9RwQ6G4Rrt3o-drawing-1-1740238846.png\"></i></div>\n<ol start=\"4\" id=\"bkmrk-start%3A-img-src%3D%22http\">\n<li>Start:\n<div drawio-diagram=\"19\"><img src=\"https://x2.znand.my.id/uploads/images/drawio/2025-02/fLK1oTCfavzPWnX8-drawing-1-1740238845.png\"></div>img src=\"https://x2.znand.my.id/uploads/images/drawio/2025-02/A2kXVC997tYk1u1V-drawing-1-1740238655.png\"&gt;\n</li>\n</ol>\n','\n\nFirstly, download the client app. In this example, im using Nekobox to use the server in my Device. You can download through this link and download the app according your OS.\n\n\nOpen the software and add the new profile:\n\n\n\n\nFill the configuration according the server you configured before:\n\n\n\nStart:\nimg src=\"https://x2.znand.my.id/uploads/images/drawio/2025-02/A2kXVC997tYk1u1V-drawing-1-1740238655.png\">\n\n\n',1,'2025-02-22 15:42:17','2025-02-22 15:42:17','configure-the-client-side','how-to-configure-hysteria2-server-udp-forwarding','version','1. Firstly, download the client app. In this example, im using Nekobox to use the server in my Device. You can download through this [link](https://github.com/MatsuriDayo/nekoray/releases) and download the app according your OS.\r\n\r\n\r\n2. Open the software and add the new profile:\r\n<div drawio-diagram=\"17\"><img src=\"https://x2.znand.my.id/uploads/images/drawio/2025-02/73yP7O1amXBPAb0P-drawing-1-1740238557.png\"></div>\r\n\r\n3. Fill the configuration according the server you configured before:\r\n<div drawio-diagram=\"17\"><i<div drawio-diagram=\"20\"><img src=\"https://x2.znand.my.id/uploads/images/drawio/2025-02/03fk9RwQ6G4Rrt3o-drawing-1-1740238846.png\"></div>\r\n\r\n4. Start:\r\n   <div drawio-diagram=\"19\"><img src=\"https://x2.znand.my.id/uploads/images/drawio/2025-02/fLK1oTCfavzPWnX8-drawing-1-1740238845.png\"></div>img src=\"https://x2.znand.my.id/uploads/images/drawio/2025-02/A2kXVC997tYk1u1V-drawing-1-1740238655.png\"></div>','',3),
(27,5,'Configure the client side','<ol id=\"bkmrk-firstly%2C-download-th\">\n<li>\n<p>Firstly, download the client app. In this example, im using Nekobox to use the server in my Device. You can download through this <a href=\"https://github.com/MatsuriDayo/nekoray/releases\">link</a> and download the app according your OS.</p>\n</li>\n<li>\n<p>Open the software and add the new profile:</p>\n</li>\n</ol>\n<div drawio-diagram=\"17\" id=\"bkmrk-\"><img src=\"https://x2.znand.my.id/uploads/images/drawio/2025-02/73yP7O1amXBPAb0P-drawing-1-1740238557.png\"></div>\n<ol start=\"3\" id=\"bkmrk-fill-the-configurati\">\n<li>Fill the configuration according the server you configured before:</li>\n</ol>\n<div drawio-diagram=\"17\" id=\"bkmrk--1\"><i drawio-diagram=\"20\"><img src=\"https://x2.znand.my.id/uploads/images/drawio/2025-02/03fk9RwQ6G4Rrt3o-drawing-1-1740238846.png\"></i></div>\n<ol start=\"4\" id=\"bkmrk-start%3A-img\">\n<li>Start:\n<div drawio-diagram=\"19\"><img src=\"https://x2.znand.my.id/uploads/images/drawio/2025-02/fLK1oTCfavzPWnX8-drawing-1-1740238845.png\"></div>img\n</li>\n</ol>\n','\n\nFirstly, download the client app. In this example, im using Nekobox to use the server in my Device. You can download through this link and download the app according your OS.\n\n\nOpen the software and add the new profile:\n\n\n\n\nFill the configuration according the server you configured before:\n\n\n\nStart:\nimg\n\n\n',1,'2025-02-22 15:42:38','2025-02-22 15:42:38','configure-the-client-side','how-to-configure-hysteria2-server-udp-forwarding','version','1. Firstly, download the client app. In this example, im using Nekobox to use the server in my Device. You can download through this [link](https://github.com/MatsuriDayo/nekoray/releases) and download the app according your OS.\r\n\r\n\r\n2. Open the software and add the new profile:\r\n<div drawio-diagram=\"17\"><img src=\"https://x2.znand.my.id/uploads/images/drawio/2025-02/73yP7O1amXBPAb0P-drawing-1-1740238557.png\"></div>\r\n\r\n3. Fill the configuration according the server you configured before:\r\n<div drawio-diagram=\"17\"><i<div drawio-diagram=\"20\"><img src=\"https://x2.znand.my.id/uploads/images/drawio/2025-02/03fk9RwQ6G4Rrt3o-drawing-1-1740238846.png\"></div>\r\n\r\n4. Start:\r\n   <div drawio-diagram=\"19\"><img src=\"https://x2.znand.my.id/uploads/images/drawio/2025-02/fLK1oTCfavzPWnX8-drawing-1-1740238845.png\"></div>img','',4),
(28,5,'Configure the client side','<ol id=\"bkmrk-firstly%2C-download-th\">\n<li>\n<p>Firstly, download the client app. In this example, im using Nekobox to use the server in my Device. You can download through this <a href=\"https://github.com/MatsuriDayo/nekoray/releases\">link</a> and download the app according your OS.</p>\n</li>\n<li>\n<p>Open the software and add the new profile:</p>\n</li>\n</ol>\n<div drawio-diagram=\"17\" id=\"bkmrk-\"><img src=\"https://x2.znand.my.id/uploads/images/drawio/2025-02/73yP7O1amXBPAb0P-drawing-1-1740238557.png\"></div>\n<ol start=\"3\" id=\"bkmrk-fill-the-configurati\">\n<li>Fill the configuration according the server you configured before:</li>\n</ol>\n<div drawio-diagram=\"17\" id=\"bkmrk--1\"><i drawio-diagram=\"20\"><img src=\"https://x2.znand.my.id/uploads/images/drawio/2025-02/03fk9RwQ6G4Rrt3o-drawing-1-1740238846.png\"></i></div>\n<ol start=\"4\" id=\"bkmrk-start%3A\">\n<li>Start:\n<div drawio-diagram=\"19\"><img src=\"https://x2.znand.my.id/uploads/images/drawio/2025-02/fLK1oTCfavzPWnX8-drawing-1-1740238845.png\"></div>\n</li>\n</ol>\n','\n\nFirstly, download the client app. In this example, im using Nekobox to use the server in my Device. You can download through this link and download the app according your OS.\n\n\nOpen the software and add the new profile:\n\n\n\n\nFill the configuration according the server you configured before:\n\n\n\nStart:\n\n\n\n',1,'2025-02-22 15:42:52','2025-02-22 15:42:52','configure-the-client-side','how-to-configure-hysteria2-server-udp-forwarding','version','1. Firstly, download the client app. In this example, im using Nekobox to use the server in my Device. You can download through this [link](https://github.com/MatsuriDayo/nekoray/releases) and download the app according your OS.\r\n\r\n\r\n2. Open the software and add the new profile:\r\n<div drawio-diagram=\"17\"><img src=\"https://x2.znand.my.id/uploads/images/drawio/2025-02/73yP7O1amXBPAb0P-drawing-1-1740238557.png\"></div>\r\n\r\n3. Fill the configuration according the server you configured before:\r\n<div drawio-diagram=\"17\"><i<div drawio-diagram=\"20\"><img src=\"https://x2.znand.my.id/uploads/images/drawio/2025-02/03fk9RwQ6G4Rrt3o-drawing-1-1740238846.png\"></div>\r\n\r\n4. Start:\r\n   <div drawio-diagram=\"19\"><img src=\"https://x2.znand.my.id/uploads/images/drawio/2025-02/fLK1oTCfavzPWnX8-drawing-1-1740238845.png\"></div>','',5),
(29,5,'Configure the client side','<ol id=\"bkmrk-firstly%2C-download-th\">\n<li>\n<p>Firstly, download the client app. In this example, im using Nekobox to use the server in my Device. You can download through this <a href=\"https://github.com/MatsuriDayo/nekoray/releases\">link</a> and download the app according your OS.</p>\n</li>\n<li>\n<p>Open the software and add the new profile:</p>\n</li>\n</ol>\n<div drawio-diagram=\"17\" id=\"bkmrk-\"><img src=\"https://x2.znand.my.id/uploads/images/drawio/2025-02/73yP7O1amXBPAb0P-drawing-1-1740238557.png\"></div>\n<ol start=\"3\" id=\"bkmrk-fill-the-configurati\">\n<li>Fill the configuration according the server you configured before:</li>\n</ol>\n<div drawio-diagram=\"17\" id=\"bkmrk--1\"><i drawio-diagram=\"20\"><img src=\"https://x2.znand.my.id/uploads/images/drawio/2025-02/03fk9RwQ6G4Rrt3o-drawing-1-1740238846.png\"></i></div>\n<ol start=\"4\" id=\"bkmrk-start%3A\">\n<li>Start:</li>\n</ol>\n<div drawio-diagram=\"19\" id=\"bkmrk--2\"><img src=\"https://x2.znand.my.id/uploads/images/drawio/2025-02/fLK1oTCfavzPWnX8-drawing-1-1740238845.png\"></div>\n','\n\nFirstly, download the client app. In this example, im using Nekobox to use the server in my Device. You can download through this link and download the app according your OS.\n\n\nOpen the software and add the new profile:\n\n\n\n\nFill the configuration according the server you configured before:\n\n\n\nStart:\n\n\n',1,'2025-02-22 15:43:08','2025-02-22 15:43:08','configure-the-client-side','how-to-configure-hysteria2-server-udp-forwarding','version','1. Firstly, download the client app. In this example, im using Nekobox to use the server in my Device. You can download through this [link](https://github.com/MatsuriDayo/nekoray/releases) and download the app according your OS.\r\n\r\n\r\n2. Open the software and add the new profile:\r\n<div drawio-diagram=\"17\"><img src=\"https://x2.znand.my.id/uploads/images/drawio/2025-02/73yP7O1amXBPAb0P-drawing-1-1740238557.png\"></div>\r\n\r\n3. Fill the configuration according the server you configured before:\r\n<div drawio-diagram=\"17\"><i<div drawio-diagram=\"20\"><img src=\"https://x2.znand.my.id/uploads/images/drawio/2025-02/03fk9RwQ6G4Rrt3o-drawing-1-1740238846.png\"></div>\r\n\r\n4. Start:\r\n<div drawio-diagram=\"19\"><img src=\"https://x2.znand.my.id/uploads/images/drawio/2025-02/fLK1oTCfavzPWnX8-drawing-1-1740238845.png\"></div>','',6),
(31,5,'Configure the client side','<ol id=\"bkmrk-firstly%2C-download-th\">\n<li>\n<p>Firstly, download the client app. In this example, im using Nekobox to use the server in my Device. You can download through this <a href=\"https://github.com/MatsuriDayo/nekoray/releases\">link</a> and download the app according your OS.</p>\n</li>\n<li>\n<p>Open the software and add the new profile:</p>\n</li>\n</ol>\n<div drawio-diagram=\"17\" id=\"bkmrk-\"><img src=\"https://x2.znand.my.id/uploads/images/drawio/2025-02/73yP7O1amXBPAb0P-drawing-1-1740238557.png\"></div>\n<ol start=\"3\" id=\"bkmrk-fill-the-configurati\">\n<li>Fill the configuration according the server you configured before:</li>\n</ol>\n<div drawio-diagram=\"17\" id=\"bkmrk--1\"><i drawio-diagram=\"20\"><img src=\"https://x2.znand.my.id/uploads/images/drawio/2025-02/03fk9RwQ6G4Rrt3o-drawing-1-1740238846.png\"></i></div>\n<ol start=\"4\" id=\"bkmrk-start%3A\">\n<li>Start:</li>\n</ol>\n<div drawio-diagram=\"19\" id=\"bkmrk--2\"><img src=\"https://x2.znand.my.id/uploads/images/drawio/2025-02/fLK1oTCfavzPWnX8-drawing-1-1740238845.png\"></div>\n<ol start=\"5\" id=\"bkmrk-check-the-log-and-in\">\n<li>Check the log and inbound-outbound traffic:</li>\n</ol>\n<div drawio-diagram=\"22\" id=\"bkmrk--3\"><img src=\"https://x2.znand.my.id/uploads/images/drawio/2025-02/3xowFeCO1cx3AyI0-drawing-1-1740239476.png\"></div><div drawio-diagram=\"21\" id=\"bkmrk--4\"><img src=\"https://x2.znand.my.id/uploads/images/drawio/2025-02/jG21H9Lw098nw27o-drawing-1-1740239475.png\"></div>\n','\n\nFirstly, download the client app. In this example, im using Nekobox to use the server in my Device. You can download through this link and download the app according your OS.\n\n\nOpen the software and add the new profile:\n\n\n\n\nFill the configuration according the server you configured before:\n\n\n\nStart:\n\n\n\nCheck the log and inbound-outbound traffic:\n\n\n',1,'2025-02-22 15:51:35','2025-02-22 15:51:35','configure-the-client-side','how-to-configure-hysteria2-server-udp-forwarding','version','1. Firstly, download the client app. In this example, im using Nekobox to use the server in my Device. You can download through this [link](https://github.com/MatsuriDayo/nekoray/releases) and download the app according your OS.\r\n\r\n\r\n2. Open the software and add the new profile:\r\n<div drawio-diagram=\"17\"><img src=\"https://x2.znand.my.id/uploads/images/drawio/2025-02/73yP7O1amXBPAb0P-drawing-1-1740238557.png\"></div>\r\n\r\n3. Fill the configuration according the server you configured before:\r\n<div drawio-diagram=\"17\"><i<div drawio-diagram=\"20\"><img src=\"https://x2.znand.my.id/uploads/images/drawio/2025-02/03fk9RwQ6G4Rrt3o-drawing-1-1740238846.png\"></div>\r\n\r\n4. Start:\r\n<div drawio-diagram=\"19\"><img src=\"https://x2.znand.my.id/uploads/images/drawio/2025-02/fLK1oTCfavzPWnX8-drawing-1-1740238845.png\"></div>\r\n\r\n5. Check the log and inbound-outbound traffic:\r\n<div drawio-diagram=\"22\"><img src=\"https://x2.znand.my.id/uploads/images/drawio/2025-02/3xowFeCO1cx3AyI0-drawing-1-1740239476.png\"></div><div drawio-diagram=\"21\"><img src=\"https://x2.znand.my.id/uploads/images/drawio/2025-02/jG21H9Lw098nw27o-drawing-1-1740239475.png\"></div>','',7),
(32,5,'Configure the client side','<ol id=\"bkmrk-firstly%2C-download-th\">\n<li>\n<p>Firstly, download the client app. In this example, im using Nekobox to use the server in my Device. You can download through this <a href=\"https://github.com/MatsuriDayo/nekoray/releases\">link</a> and download the app according your OS.</p>\n</li>\n<li>\n<p>Open the software and add the new profile:</p>\n</li>\n</ol>\n<div drawio-diagram=\"17\" id=\"bkmrk-\"><img src=\"https://x2.znand.my.id/uploads/images/drawio/2025-02/73yP7O1amXBPAb0P-drawing-1-1740238557.png\"></div>\n<ol start=\"3\" id=\"bkmrk-fill-the-configurati\">\n<li>Fill the configuration according the server you configured before:</li>\n</ol>\n<div drawio-diagram=\"17\" id=\"bkmrk--1\"><i drawio-diagram=\"20\"><img src=\"https://x2.znand.my.id/uploads/images/drawio/2025-02/03fk9RwQ6G4Rrt3o-drawing-1-1740238846.png\"></i></div>\n<ol start=\"4\" id=\"bkmrk-start%3A\">\n<li>Start:</li>\n</ol>\n<div drawio-diagram=\"19\" id=\"bkmrk--2\"><img src=\"https://x2.znand.my.id/uploads/images/drawio/2025-02/fLK1oTCfavzPWnX8-drawing-1-1740238845.png\"></div>\n<ol start=\"5\" id=\"bkmrk-check-the-log-and-in\">\n<li>Check the log and inbound-outbound traffic:</li>\n</ol>\n<div drawio-diagram=\"22\" id=\"bkmrk--3\"><img src=\"https://x2.znand.my.id/uploads/images/drawio/2025-02/3xowFeCO1cx3AyI0-drawing-1-1740239476.png\"></div>\n','\n\nFirstly, download the client app. In this example, im using Nekobox to use the server in my Device. You can download through this link and download the app according your OS.\n\n\nOpen the software and add the new profile:\n\n\n\n\nFill the configuration according the server you configured before:\n\n\n\nStart:\n\n\n\nCheck the log and inbound-outbound traffic:\n\n\n',1,'2025-02-22 15:52:15','2025-02-22 15:52:15','configure-the-client-side','how-to-configure-hysteria2-server-udp-forwarding','version','1. Firstly, download the client app. In this example, im using Nekobox to use the server in my Device. You can download through this [link](https://github.com/MatsuriDayo/nekoray/releases) and download the app according your OS.\r\n\r\n\r\n2. Open the software and add the new profile:\r\n<div drawio-diagram=\"17\"><img src=\"https://x2.znand.my.id/uploads/images/drawio/2025-02/73yP7O1amXBPAb0P-drawing-1-1740238557.png\"></div>\r\n\r\n3. Fill the configuration according the server you configured before:\r\n<div drawio-diagram=\"17\"><i<div drawio-diagram=\"20\"><img src=\"https://x2.znand.my.id/uploads/images/drawio/2025-02/03fk9RwQ6G4Rrt3o-drawing-1-1740238846.png\"></div>\r\n\r\n4. Start:\r\n<div drawio-diagram=\"19\"><img src=\"https://x2.znand.my.id/uploads/images/drawio/2025-02/fLK1oTCfavzPWnX8-drawing-1-1740238845.png\"></div>\r\n\r\n5. Check the log and inbound-outbound traffic:\r\n<div drawio-diagram=\"22\"><img src=\"https://x2.znand.my.id/uploads/images/drawio/2025-02/3xowFeCO1cx3AyI0-drawing-1-1740239476.png\"></div>','',9),
(34,5,'Configure the client side','<ol id=\"bkmrk-firstly%2C-download-th\">\n<li>\n<p>Firstly, download the client app. In this example, im using Nekobox to use the server in my Device. You can download through this <a href=\"https://github.com/MatsuriDayo/nekoray/releases\">link</a> and download the app according your OS.</p>\n</li>\n<li>\n<p>Open the software and add the new profile:</p>\n</li>\n</ol>\n<div drawio-diagram=\"17\" id=\"bkmrk-\"><img src=\"https://x2.znand.my.id/uploads/images/drawio/2025-02/73yP7O1amXBPAb0P-drawing-1-1740238557.png\"></div>\n<ol start=\"3\" id=\"bkmrk-fill-the-configurati\">\n<li>Fill the configuration according the server you configured before:</li>\n</ol>\n<div drawio-diagram=\"17\" id=\"bkmrk--1\"><i drawio-diagram=\"20\"><img src=\"https://x2.znand.my.id/uploads/images/drawio/2025-02/03fk9RwQ6G4Rrt3o-drawing-1-1740238846.png\"></i></div>\n<ol start=\"4\" id=\"bkmrk-start%3A\">\n<li>Start:</li>\n</ol>\n<div drawio-diagram=\"19\" id=\"bkmrk--2\"><img src=\"https://x2.znand.my.id/uploads/images/drawio/2025-02/fLK1oTCfavzPWnX8-drawing-1-1740238845.png\"></div>\n<ol start=\"5\" id=\"bkmrk-check-the-log-and-in\">\n<li>Check the log and inbound-outbound traffic:</li>\n</ol>\n<div drawio-diagram=\"22\" id=\"bkmrk--3\"><img src=\"https://x2.znand.my.id/uploads/images/drawio/2025-02/3xowFeCO1cx3AyI0-drawing-1-1740239476.png\"></div>\n<ol start=\"6\" id=\"bkmrk-access-the-whoer.net\">\n<li>Access the <a href=\"https://whoer.net/\">whoer.net</a> to verify the server is connected.</li>\n</ol>\n<div drawio-diagram=\"25\" id=\"bkmrk--4\"><img src=\"https://x2.znand.my.id/uploads/images/drawio/2025-02/RLhEbEjnWNqrZ7sa-drawing-1-1740239668.png\"></div><div drawio-diagram=\"24\" id=\"bkmrk--5\"><img src=\"https://x2.znand.my.id/uploads/images/drawio/2025-02/09kwcItPDo0MUct5-drawing-1-1740239667.png\"></div>\n','\n\nFirstly, download the client app. In this example, im using Nekobox to use the server in my Device. You can download through this link and download the app according your OS.\n\n\nOpen the software and add the new profile:\n\n\n\n\nFill the configuration according the server you configured before:\n\n\n\nStart:\n\n\n\nCheck the log and inbound-outbound traffic:\n\n\n\nAccess the whoer.net to verify the server is connected.\n\n\n',1,'2025-02-22 15:54:36','2025-02-22 15:54:36','configure-the-client-side','how-to-configure-hysteria2-server-udp-forwarding','version','1. Firstly, download the client app. In this example, im using Nekobox to use the server in my Device. You can download through this [link](https://github.com/MatsuriDayo/nekoray/releases) and download the app according your OS.\r\n\r\n\r\n2. Open the software and add the new profile:\r\n<div drawio-diagram=\"17\"><img src=\"https://x2.znand.my.id/uploads/images/drawio/2025-02/73yP7O1amXBPAb0P-drawing-1-1740238557.png\"></div>\r\n\r\n3. Fill the configuration according the server you configured before:\r\n<div drawio-diagram=\"17\"><i<div drawio-diagram=\"20\"><img src=\"https://x2.znand.my.id/uploads/images/drawio/2025-02/03fk9RwQ6G4Rrt3o-drawing-1-1740238846.png\"></div>\r\n\r\n4. Start:\r\n<div drawio-diagram=\"19\"><img src=\"https://x2.znand.my.id/uploads/images/drawio/2025-02/fLK1oTCfavzPWnX8-drawing-1-1740238845.png\"></div>\r\n\r\n5. Check the log and inbound-outbound traffic:\r\n<div drawio-diagram=\"22\"><img src=\"https://x2.znand.my.id/uploads/images/drawio/2025-02/3xowFeCO1cx3AyI0-drawing-1-1740239476.png\"></div>\r\n\r\n6. Access the [whoer.net](https://whoer.net/) to verify the server is connected.\r\n<div drawio-diagram=\"25\"><img src=\"https://x2.znand.my.id/uploads/images/drawio/2025-02/RLhEbEjnWNqrZ7sa-drawing-1-1740239668.png\"></div><div drawio-diagram=\"24\"><img src=\"https://x2.znand.my.id/uploads/images/drawio/2025-02/09kwcItPDo0MUct5-drawing-1-1740239667.png\"></div>','',10),
(35,5,'Configure the client side','<ol id=\"bkmrk-firstly%2C-download-th\">\n<li>\n<p>Firstly, download the client app. In this example, im using Nekobox to use the server in my Device. You can download through this <a href=\"https://github.com/MatsuriDayo/nekoray/releases\">link</a> and download the app according your OS.</p>\n</li>\n<li>\n<p>Open the software and add the new profile:</p>\n</li>\n</ol>\n<div drawio-diagram=\"17\" id=\"bkmrk-\"><img src=\"https://x2.znand.my.id/uploads/images/drawio/2025-02/73yP7O1amXBPAb0P-drawing-1-1740238557.png\"></div>\n<ol start=\"3\" id=\"bkmrk-fill-the-configurati\">\n<li>Fill the configuration according the server you configured before:</li>\n</ol>\n<div drawio-diagram=\"17\" id=\"bkmrk--1\"><i drawio-diagram=\"20\"><img src=\"https://x2.znand.my.id/uploads/images/drawio/2025-02/03fk9RwQ6G4Rrt3o-drawing-1-1740238846.png\"></i></div>\n<ol start=\"4\" id=\"bkmrk-start%3A\">\n<li>Start:</li>\n</ol>\n<div drawio-diagram=\"19\" id=\"bkmrk--2\"><img src=\"https://x2.znand.my.id/uploads/images/drawio/2025-02/fLK1oTCfavzPWnX8-drawing-1-1740238845.png\"></div>\n<ol start=\"5\" id=\"bkmrk-check-the-log-and-in\">\n<li>Check the log and inbound-outbound traffic:</li>\n</ol>\n<div drawio-diagram=\"22\" id=\"bkmrk--3\"><img src=\"https://x2.znand.my.id/uploads/images/drawio/2025-02/3xowFeCO1cx3AyI0-drawing-1-1740239476.png\"></div>\n<ol start=\"6\" id=\"bkmrk-access-the-whoer.net\">\n<li>Access the <a href=\"https://whoer.net/\">whoer.net</a> to verify the server is connected.</li>\n</ol>\n<div drawio-diagram=\"25\" id=\"bkmrk--4\"><img src=\"https://x2.znand.my.id/uploads/images/drawio/2025-02/RLhEbEjnWNqrZ7sa-drawing-1-1740239668.png\"></div>\n','\n\nFirstly, download the client app. In this example, im using Nekobox to use the server in my Device. You can download through this link and download the app according your OS.\n\n\nOpen the software and add the new profile:\n\n\n\n\nFill the configuration according the server you configured before:\n\n\n\nStart:\n\n\n\nCheck the log and inbound-outbound traffic:\n\n\n\nAccess the whoer.net to verify the server is connected.\n\n\n',1,'2025-02-22 15:54:49','2025-02-22 15:54:49','configure-the-client-side','how-to-configure-hysteria2-server-udp-forwarding','version','1. Firstly, download the client app. In this example, im using Nekobox to use the server in my Device. You can download through this [link](https://github.com/MatsuriDayo/nekoray/releases) and download the app according your OS.\r\n\r\n\r\n2. Open the software and add the new profile:\r\n<div drawio-diagram=\"17\"><img src=\"https://x2.znand.my.id/uploads/images/drawio/2025-02/73yP7O1amXBPAb0P-drawing-1-1740238557.png\"></div>\r\n\r\n3. Fill the configuration according the server you configured before:\r\n<div drawio-diagram=\"17\"><i<div drawio-diagram=\"20\"><img src=\"https://x2.znand.my.id/uploads/images/drawio/2025-02/03fk9RwQ6G4Rrt3o-drawing-1-1740238846.png\"></div>\r\n\r\n4. Start:\r\n<div drawio-diagram=\"19\"><img src=\"https://x2.znand.my.id/uploads/images/drawio/2025-02/fLK1oTCfavzPWnX8-drawing-1-1740238845.png\"></div>\r\n\r\n5. Check the log and inbound-outbound traffic:\r\n<div drawio-diagram=\"22\"><img src=\"https://x2.znand.my.id/uploads/images/drawio/2025-02/3xowFeCO1cx3AyI0-drawing-1-1740239476.png\"></div>\r\n\r\n6. Access the [whoer.net](https://whoer.net/) to verify the server is connected.\r\n<div drawio-diagram=\"25\"><img src=\"https://x2.znand.my.id/uploads/images/drawio/2025-02/RLhEbEjnWNqrZ7sa-drawing-1-1740239668.png\"></div>','',11),
(36,4,'Configure the client side','<ol id=\"bkmrk-to-use-the-server%2C-y\">\n<li>\n<p>To use the server, you must download the client app. In this example, im using nekobox to use the server. You can download app from this <a href=\"https://github.com/MatsuriDayo/nekoray/releases\">link</a> and download the app according your OS.</p>\n</li>\n<li>\n<p>Open the software and configure the server:</p>\n</li>\n<li>\n</ol>\n','\n\nTo use the server, you must download the client app. In this example, im using nekobox to use the server. You can download app from this link and download the app according your OS.\n\n\nOpen the software and configure the server:\n\n\n\n',1,'2025-02-22 15:55:42','2025-02-22 15:55:42','configure-the-client-side-xUg','how-to-configure-hysteria2-server-udp-forwarding','version','1. To use the server, you must download the client app. In this example, im using nekobox to use the server. You can download app from this [link](https://github.com/MatsuriDayo/nekoray/releases) and download the app according your OS.\r\n\r\n2. Open the software and configure the server:\r\n\r\n3.','Initial publish',1),
(38,2,'Configure the Server','<ol id=\"bkmrk-install-to-latest-ve\">\n<li>Install to latest version:</li>\n</ol>\n<p id=\"bkmrk-bash-%3C%28curl--fssl-ht\"><code>bash &lt;(curl -fsSL https://get.hy2.sh/)</code></p>\n<p id=\"bkmrk-remove-and-uninstall\">Remove and uninstall:</p>\n<p id=\"bkmrk-bash-%3C%28curl--fssl-ht-1\"><code>bash &lt;(curl -fsSL https://get.hy2.sh/) --remove</code></p>\n<ol start=\"2\" id=\"bkmrk-in-home-directory%2C\">\n<li>In home directory,</li>\n</ol>\n<p id=\"bkmrk-mkdir-hysteria-nano-\"><code>mkdir hysteria</code>\n<code>nano config.yaml</code></p>\n<ol start=\"3\" id=\"bkmrk-fill-the-blank-yaml-\">\n<li>Fill the blank yaml file with:</li>\n</ol>\n<pre id=\"bkmrk-protocol%3A-udp-auth%3A-\"><code class=\"language-listen:\">protocol: udp\n\nauth:\n  type: password\n  password: passwordtest \n\nacme:\n  domains:\n    - yourdomain.net\n  email: nannozeta@gmail.com\n\nmasquerade:\n  type: proxy\n  proxy:\n    url: https://www.cloudflare.com \n\nquic:\n  congestionControl: bbr   \n  idleTimeout: 60s         \n  maxIdleTimeout: 60s     \n  keepAlivePeriod: 10s     \n\nudp:\n  idleTimeout: 60s\n</code></pre>\n<p id=\"bkmrk-dont-forget-to-edit-\">Dont forget to edit the domain and password.</p>\n<ol start=\"4\" id=\"bkmrk-download-the-executa\">\n<li>\n<p>Download the executable file from this <a href=\"https://github.com/apernet/hysteria/releases\">link</a>.</p>\n<div drawio-diagram=\"4\"><img src=\"https://x2.znand.my.id/uploads/images/drawio/2025-02/3od1B7vKW08kPez3-drawing-1-1740234277.png\"></div>\n</li>\n</ol>\n<p id=\"bkmrk-in-this-example-i-us\">In this example i use hysteria-linux-amd64-avx\n<code>wget https://github.com/apernet/hysteria/releases/download/app%2Fv2.6.1/hysteria-linux-amd64-avx</code></p>\n<ol start=\"5\" id=\"bkmrk-run-the-server-sudo-\">\n<li>Run the server\n<code>sudo setcap cap_net_bind_service=+ep ./hysteria-linux-amd64-avx</code>\n<code>./hysteria-linux-amd64-avx server</code></li>\n</ol>\n<p id=\"bkmrk-if-you-got-this-erro\">If you got this error:</p>\n<div drawio-diagram=\"9\" id=\"bkmrk-\"><img src=\"https://x2.znand.my.id/uploads/images/drawio/2025-02/0w9r75mt6SG673Ac-drawing-1-1740236467.png\"></div>\n<p id=\"bkmrk-give-the-permission%3A\">Give the permission:\n<code>sudo chmod +x hysteria-linux-amd64-avx</code></p>\n<p id=\"bkmrk-and-you-should-get-t\">And you should get the problem solved and server is ready to be running.</p>\n<div drawio-diagram=\"10\" id=\"bkmrk--1\"><img src=\"https://x2.znand.my.id/uploads/images/drawio/2025-02/iafnjWw8NndOjO35-drawing-1-1740236636.png\"></div>\n<p id=\"bkmrk-also-you-will-got-th\">Also you will got the SSL Certificate from Acme and server is already running (listening on port 443):</p>\n<div drawio-diagram=\"11\" id=\"bkmrk--2\"><img src=\"https://x2.znand.my.id/uploads/images/drawio/2025-02/tGOhBjZBg7rqXkru-drawing-1-1740236802.png\"></div>\n<p id=\"bkmrk-if-you-want-to-run-t\">If you want to run the server from systemd, you can read the next page :).</p>\n','\nInstall to latest version:\n\nbash <(curl -fsSL https://get.hy2.sh/)\nRemove and uninstall:\nbash <(curl -fsSL https://get.hy2.sh/) --remove\n\nIn home directory,\n\nmkdir hysteria\nnano config.yaml\n\nFill the blank yaml file with:\n\nprotocol: udp\n\nauth:\n  type: password\n  password: passwordtest \n\nacme:\n  domains:\n    - yourdomain.net\n  email: nannozeta@gmail.com\n\nmasquerade:\n  type: proxy\n  proxy:\n    url: https://www.cloudflare.com \n\nquic:\n  congestionControl: bbr   \n  idleTimeout: 60s         \n  maxIdleTimeout: 60s     \n  keepAlivePeriod: 10s     \n\nudp:\n  idleTimeout: 60s\n\nDont forget to edit the domain and password.\n\n\nDownload the executable file from this link.\n\n\n\nIn this example i use hysteria-linux-amd64-avx\nwget https://github.com/apernet/hysteria/releases/download/app%2Fv2.6.1/hysteria-linux-amd64-avx\n\nRun the server\nsudo setcap cap_net_bind_service=+ep ./hysteria-linux-amd64-avx\n./hysteria-linux-amd64-avx server\n\nIf you got this error:\n\nGive the permission:\nsudo chmod +x hysteria-linux-amd64-avx\nAnd you should get the problem solved and server is ready to be running.\n\nAlso you will got the SSL Certificate from Acme and server is already running (listening on port 443):\n\nIf you want to run the server from systemd, you can read the next page :).\n',1,'2025-02-22 16:33:36','2025-02-22 16:33:36','configure-the-server','how-to-configure-hysteria2-server-udp-forwarding','version','1. Install to latest version:\r\n\r\n```bash <(curl -fsSL https://get.hy2.sh/)```\r\n\r\n Remove and uninstall:\r\n\r\n```bash <(curl -fsSL https://get.hy2.sh/) --remove```\r\n\r\n2. In home directory, \r\n\r\n```mkdir hysteria```\r\n```nano config.yaml```\r\n\r\n3. Fill the blank yaml file with:\r\n\r\n```listen: :443  \r\nprotocol: udp\r\n\r\nauth:\r\n  type: password\r\n  password: passwordtest \r\n\r\nacme:\r\n  domains:\r\n    - yourdomain.net\r\n  email: nannozeta@gmail.com\r\n\r\nmasquerade:\r\n  type: proxy\r\n  proxy:\r\n    url: https://www.cloudflare.com \r\n\r\nquic:\r\n  congestionControl: bbr   \r\n  idleTimeout: 60s         \r\n  maxIdleTimeout: 60s     \r\n  keepAlivePeriod: 10s     \r\n\r\nudp:\r\n  idleTimeout: 60s\r\n```\r\nDont forget to edit the domain and password.\r\n\r\n4. Download the executable file from this [link](https://github.com/apernet/hysteria/releases).\r\n\r\n   <div drawio-diagram=\"4\"><img src=\"https://x2.znand.my.id/uploads/images/drawio/2025-02/3od1B7vKW08kPez3-drawing-1-1740234277.png\"></div>\r\n\r\nIn this example i use hysteria-linux-amd64-avx\r\n```wget https://github.com/apernet/hysteria/releases/download/app%2Fv2.6.1/hysteria-linux-amd64-avx```\r\n\r\n5. Run the server\r\n```sudo setcap cap_net_bind_service=+ep ./hysteria-linux-amd64-avx```\r\n```./hysteria-linux-amd64-avx server```\r\n\r\nIf you got this error:\r\n<div drawio-diagram=\"9\"><img src=\"https://x2.znand.my.id/uploads/images/drawio/2025-02/0w9r75mt6SG673Ac-drawing-1-1740236467.png\"></div>\r\n\r\nGive the permission:\r\n```sudo chmod +x hysteria-linux-amd64-avx```\r\n\r\nAnd you should get the problem solved and server is ready to be running.\r\n<div drawio-diagram=\"10\"><img src=\"https://x2.znand.my.id/uploads/images/drawio/2025-02/iafnjWw8NndOjO35-drawing-1-1740236636.png\"></div>\r\n\r\nAlso you will got the SSL Certificate from Acme and server is already running (listening on port 443):\r\n<div drawio-diagram=\"11\"><img src=\"https://x2.znand.my.id/uploads/images/drawio/2025-02/tGOhBjZBg7rqXkru-drawing-1-1740236802.png\"></div>\r\n\r\nIf you want to run the server from systemd, you can read the next page :).','',9),
(39,2,'Configure the Server','<ol id=\"bkmrk-install-to-latest-ve\">\n<li>Install to latest version:</li>\n</ol>\n<p id=\"bkmrk-bash-%3C%28curl--fssl-ht\"><code>bash &lt;(curl -fsSL https://get.hy2.sh/)</code></p>\n<p id=\"bkmrk-remove-and-uninstall\">Remove and uninstall:</p>\n<p id=\"bkmrk-bash-%3C%28curl--fssl-ht-1\"><code>bash &lt;(curl -fsSL https://get.hy2.sh/) --remove</code></p>\n<ol start=\"2\" id=\"bkmrk-in-home-directory%2C\">\n<li>In home directory,</li>\n</ol>\n<p id=\"bkmrk-mkdir-hysteria-nano-\"><code>mkdir hysteria</code>\n<code>nano config.yaml</code></p>\n<ol start=\"3\" id=\"bkmrk-fill-the-blank-yaml-\">\n<li>Fill the blank yaml file with:</li>\n</ol>\n<pre id=\"bkmrk-protocol%3A-udp-auth%3A-\"><code class=\"language-listen:\">protocol: udp\n\nauth:\n  type: password\n  password: passwordtest \n\nacme:\n  domains:\n    - yourdomain.net\n  email: yourname@yourdomain.net\n\nmasquerade:\n  type: proxy\n  proxy:\n    url: https://www.cloudflare.com \n\nquic:\n  congestionControl: bbr   \n  idleTimeout: 60s         \n  maxIdleTimeout: 60s     \n  keepAlivePeriod: 10s     \n\nudp:\n  idleTimeout: 60s\n</code></pre>\n<p id=\"bkmrk-dont-forget-to-edit-\">Dont forget to edit the domain and password.</p>\n<ol start=\"4\" id=\"bkmrk-download-the-executa\">\n<li>\n<p>Download the executable file from this <a href=\"https://github.com/apernet/hysteria/releases\">link</a>.</p>\n<div drawio-diagram=\"4\"><img src=\"https://x2.znand.my.id/uploads/images/drawio/2025-02/3od1B7vKW08kPez3-drawing-1-1740234277.png\"></div>\n</li>\n</ol>\n<p id=\"bkmrk-in-this-example-i-us\">In this example i use hysteria-linux-amd64-avx\n<code>wget https://github.com/apernet/hysteria/releases/download/app%2Fv2.6.1/hysteria-linux-amd64-avx</code></p>\n<ol start=\"5\" id=\"bkmrk-run-the-server-sudo-\">\n<li>Run the server\n<code>sudo setcap cap_net_bind_service=+ep ./hysteria-linux-amd64-avx</code>\n<code>./hysteria-linux-amd64-avx server</code></li>\n</ol>\n<p id=\"bkmrk-if-you-got-this-erro\">If you got this error:</p>\n<div drawio-diagram=\"9\" id=\"bkmrk-\"><img src=\"https://x2.znand.my.id/uploads/images/drawio/2025-02/0w9r75mt6SG673Ac-drawing-1-1740236467.png\"></div>\n<p id=\"bkmrk-give-the-permission%3A\">Give the permission:\n<code>sudo chmod +x hysteria-linux-amd64-avx</code></p>\n<p id=\"bkmrk-and-you-should-get-t\">And you should get the problem solved and server is ready to be running.</p>\n<div drawio-diagram=\"10\" id=\"bkmrk--1\"><img src=\"https://x2.znand.my.id/uploads/images/drawio/2025-02/iafnjWw8NndOjO35-drawing-1-1740236636.png\"></div>\n<p id=\"bkmrk-also-you-will-got-th\">Also you will got the SSL Certificate from Acme and server is already running (listening on port 443):</p>\n<div drawio-diagram=\"11\" id=\"bkmrk--2\"><img src=\"https://x2.znand.my.id/uploads/images/drawio/2025-02/tGOhBjZBg7rqXkru-drawing-1-1740236802.png\"></div>\n<p id=\"bkmrk-if-you-want-to-run-t\">If you want to run the server from systemd, you can read the next page :).</p>\n','\nInstall to latest version:\n\nbash <(curl -fsSL https://get.hy2.sh/)\nRemove and uninstall:\nbash <(curl -fsSL https://get.hy2.sh/) --remove\n\nIn home directory,\n\nmkdir hysteria\nnano config.yaml\n\nFill the blank yaml file with:\n\nprotocol: udp\n\nauth:\n  type: password\n  password: passwordtest \n\nacme:\n  domains:\n    - yourdomain.net\n  email: yourname@yourdomain.net\n\nmasquerade:\n  type: proxy\n  proxy:\n    url: https://www.cloudflare.com \n\nquic:\n  congestionControl: bbr   \n  idleTimeout: 60s         \n  maxIdleTimeout: 60s     \n  keepAlivePeriod: 10s     \n\nudp:\n  idleTimeout: 60s\n\nDont forget to edit the domain and password.\n\n\nDownload the executable file from this link.\n\n\n\nIn this example i use hysteria-linux-amd64-avx\nwget https://github.com/apernet/hysteria/releases/download/app%2Fv2.6.1/hysteria-linux-amd64-avx\n\nRun the server\nsudo setcap cap_net_bind_service=+ep ./hysteria-linux-amd64-avx\n./hysteria-linux-amd64-avx server\n\nIf you got this error:\n\nGive the permission:\nsudo chmod +x hysteria-linux-amd64-avx\nAnd you should get the problem solved and server is ready to be running.\n\nAlso you will got the SSL Certificate from Acme and server is already running (listening on port 443):\n\nIf you want to run the server from systemd, you can read the next page :).\n',1,'2025-02-22 16:34:03','2025-02-22 16:34:03','configure-the-server','how-to-configure-hysteria2-server-udp-forwarding','version','1. Install to latest version:\r\n\r\n```bash <(curl -fsSL https://get.hy2.sh/)```\r\n\r\n Remove and uninstall:\r\n\r\n```bash <(curl -fsSL https://get.hy2.sh/) --remove```\r\n\r\n2. In home directory, \r\n\r\n```mkdir hysteria```\r\n```nano config.yaml```\r\n\r\n3. Fill the blank yaml file with:\r\n\r\n```listen: :443  \r\nprotocol: udp\r\n\r\nauth:\r\n  type: password\r\n  password: passwordtest \r\n\r\nacme:\r\n  domains:\r\n    - yourdomain.net\r\n  email: yourname@yourdomain.net\r\n\r\nmasquerade:\r\n  type: proxy\r\n  proxy:\r\n    url: https://www.cloudflare.com \r\n\r\nquic:\r\n  congestionControl: bbr   \r\n  idleTimeout: 60s         \r\n  maxIdleTimeout: 60s     \r\n  keepAlivePeriod: 10s     \r\n\r\nudp:\r\n  idleTimeout: 60s\r\n```\r\nDont forget to edit the domain and password.\r\n\r\n4. Download the executable file from this [link](https://github.com/apernet/hysteria/releases).\r\n\r\n   <div drawio-diagram=\"4\"><img src=\"https://x2.znand.my.id/uploads/images/drawio/2025-02/3od1B7vKW08kPez3-drawing-1-1740234277.png\"></div>\r\n\r\nIn this example i use hysteria-linux-amd64-avx\r\n```wget https://github.com/apernet/hysteria/releases/download/app%2Fv2.6.1/hysteria-linux-amd64-avx```\r\n\r\n5. Run the server\r\n```sudo setcap cap_net_bind_service=+ep ./hysteria-linux-amd64-avx```\r\n```./hysteria-linux-amd64-avx server```\r\n\r\nIf you got this error:\r\n<div drawio-diagram=\"9\"><img src=\"https://x2.znand.my.id/uploads/images/drawio/2025-02/0w9r75mt6SG673Ac-drawing-1-1740236467.png\"></div>\r\n\r\nGive the permission:\r\n```sudo chmod +x hysteria-linux-amd64-avx```\r\n\r\nAnd you should get the problem solved and server is ready to be running.\r\n<div drawio-diagram=\"10\"><img src=\"https://x2.znand.my.id/uploads/images/drawio/2025-02/iafnjWw8NndOjO35-drawing-1-1740236636.png\"></div>\r\n\r\nAlso you will got the SSL Certificate from Acme and server is already running (listening on port 443):\r\n<div drawio-diagram=\"11\"><img src=\"https://x2.znand.my.id/uploads/images/drawio/2025-02/tGOhBjZBg7rqXkru-drawing-1-1740236802.png\"></div>\r\n\r\nIf you want to run the server from systemd, you can read the next page :).','',10),
(40,2,'Configure the Server','<ol id=\"bkmrk-install-to-latest-ve\">\n<li>Install to latest version:</li>\n</ol>\n<p id=\"bkmrk-bash-%3C%28curl--fssl-ht\"><code>bash &lt;(curl -fsSL https://get.hy2.sh/)</code></p>\n<p id=\"bkmrk-remove-and-uninstall\">Remove and uninstall:</p>\n<p id=\"bkmrk-bash-%3C%28curl--fssl-ht-1\"><code>bash &lt;(curl -fsSL https://get.hy2.sh/) --remove</code></p>\n<ol start=\"2\" id=\"bkmrk-in-home-directory%2C\">\n<li>In home directory,</li>\n</ol>\n<p id=\"bkmrk-mkdir-hysteria-nano-\"><code>mkdir hysteria</code>\n<code>nano config.yaml</code></p>\n<ol start=\"3\" id=\"bkmrk-fill-the-blank-yaml-\">\n<li>Fill the blank yaml file with:</li>\n</ol>\n<pre id=\"bkmrk-protocol%3A-udp-auth%3A-\"><code class=\"language-listen:\">protocol: udp\n\nauth:\n  type: password\n  password: passwordtest \n\nacme:\n  domains:\n    - yourdomain.net\n  email: yourname@yourdomain.net\n\nmasquerade:\n  type: proxy\n  proxy:\n    url: https://www.cloudflare.com \n\nquic:\n  congestionControl: bbr   \n  idleTimeout: 60s         \n  maxIdleTimeout: 60s     \n  keepAlivePeriod: 10s     \n\nudp:\n  idleTimeout: 60s\n</code></pre>\n<p id=\"bkmrk-dont-forget-to-edit-\">Dont forget to edit the email, domain and password.</p>\n<ol start=\"4\" id=\"bkmrk-download-the-executa\">\n<li>\n<p>Download the executable file from this <a href=\"https://github.com/apernet/hysteria/releases\">link</a>.</p>\n<div drawio-diagram=\"4\"><img src=\"https://x2.znand.my.id/uploads/images/drawio/2025-02/3od1B7vKW08kPez3-drawing-1-1740234277.png\"></div>\n</li>\n</ol>\n<p id=\"bkmrk-in-this-example-i-us\">In this example i use hysteria-linux-amd64-avx\n<code>wget https://github.com/apernet/hysteria/releases/download/app%2Fv2.6.1/hysteria-linux-amd64-avx</code></p>\n<ol start=\"5\" id=\"bkmrk-run-the-server-sudo-\">\n<li>Run the server\n<code>sudo setcap cap_net_bind_service=+ep ./hysteria-linux-amd64-avx</code>\n<code>./hysteria-linux-amd64-avx server</code></li>\n</ol>\n<p id=\"bkmrk-if-you-got-this-erro\">If you got this error:</p>\n<div drawio-diagram=\"9\" id=\"bkmrk-\"><img src=\"https://x2.znand.my.id/uploads/images/drawio/2025-02/0w9r75mt6SG673Ac-drawing-1-1740236467.png\"></div>\n<p id=\"bkmrk-give-the-permission%3A\">Give the permission:\n<code>sudo chmod +x hysteria-linux-amd64-avx</code></p>\n<p id=\"bkmrk-and-you-should-get-t\">And you should get the problem solved and server is ready to be running.</p>\n<div drawio-diagram=\"10\" id=\"bkmrk--1\"><img src=\"https://x2.znand.my.id/uploads/images/drawio/2025-02/iafnjWw8NndOjO35-drawing-1-1740236636.png\"></div>\n<p id=\"bkmrk-also-you-will-got-th\">Also you will got the SSL Certificate from Acme and server is already running (listening on port 443):</p>\n<div drawio-diagram=\"11\" id=\"bkmrk--2\"><img src=\"https://x2.znand.my.id/uploads/images/drawio/2025-02/tGOhBjZBg7rqXkru-drawing-1-1740236802.png\"></div>\n<p id=\"bkmrk-if-you-want-to-run-t\">If you want to run the server from systemd, you can read the next page :).</p>\n','\nInstall to latest version:\n\nbash <(curl -fsSL https://get.hy2.sh/)\nRemove and uninstall:\nbash <(curl -fsSL https://get.hy2.sh/) --remove\n\nIn home directory,\n\nmkdir hysteria\nnano config.yaml\n\nFill the blank yaml file with:\n\nprotocol: udp\n\nauth:\n  type: password\n  password: passwordtest \n\nacme:\n  domains:\n    - yourdomain.net\n  email: yourname@yourdomain.net\n\nmasquerade:\n  type: proxy\n  proxy:\n    url: https://www.cloudflare.com \n\nquic:\n  congestionControl: bbr   \n  idleTimeout: 60s         \n  maxIdleTimeout: 60s     \n  keepAlivePeriod: 10s     \n\nudp:\n  idleTimeout: 60s\n\nDont forget to edit the email, domain and password.\n\n\nDownload the executable file from this link.\n\n\n\nIn this example i use hysteria-linux-amd64-avx\nwget https://github.com/apernet/hysteria/releases/download/app%2Fv2.6.1/hysteria-linux-amd64-avx\n\nRun the server\nsudo setcap cap_net_bind_service=+ep ./hysteria-linux-amd64-avx\n./hysteria-linux-amd64-avx server\n\nIf you got this error:\n\nGive the permission:\nsudo chmod +x hysteria-linux-amd64-avx\nAnd you should get the problem solved and server is ready to be running.\n\nAlso you will got the SSL Certificate from Acme and server is already running (listening on port 443):\n\nIf you want to run the server from systemd, you can read the next page :).\n',1,'2025-02-22 16:34:26','2025-02-22 16:34:26','configure-the-server','how-to-configure-hysteria2-server-udp-forwarding','version','1. Install to latest version:\r\n\r\n```bash <(curl -fsSL https://get.hy2.sh/)```\r\n\r\n Remove and uninstall:\r\n\r\n```bash <(curl -fsSL https://get.hy2.sh/) --remove```\r\n\r\n2. In home directory, \r\n\r\n```mkdir hysteria```\r\n```nano config.yaml```\r\n\r\n3. Fill the blank yaml file with:\r\n\r\n```listen: :443  \r\nprotocol: udp\r\n\r\nauth:\r\n  type: password\r\n  password: passwordtest \r\n\r\nacme:\r\n  domains:\r\n    - yourdomain.net\r\n  email: yourname@yourdomain.net\r\n\r\nmasquerade:\r\n  type: proxy\r\n  proxy:\r\n    url: https://www.cloudflare.com \r\n\r\nquic:\r\n  congestionControl: bbr   \r\n  idleTimeout: 60s         \r\n  maxIdleTimeout: 60s     \r\n  keepAlivePeriod: 10s     \r\n\r\nudp:\r\n  idleTimeout: 60s\r\n```\r\nDont forget to edit the email, domain and password.\r\n\r\n4. Download the executable file from this [link](https://github.com/apernet/hysteria/releases).\r\n\r\n   <div drawio-diagram=\"4\"><img src=\"https://x2.znand.my.id/uploads/images/drawio/2025-02/3od1B7vKW08kPez3-drawing-1-1740234277.png\"></div>\r\n\r\nIn this example i use hysteria-linux-amd64-avx\r\n```wget https://github.com/apernet/hysteria/releases/download/app%2Fv2.6.1/hysteria-linux-amd64-avx```\r\n\r\n5. Run the server\r\n```sudo setcap cap_net_bind_service=+ep ./hysteria-linux-amd64-avx```\r\n```./hysteria-linux-amd64-avx server```\r\n\r\nIf you got this error:\r\n<div drawio-diagram=\"9\"><img src=\"https://x2.znand.my.id/uploads/images/drawio/2025-02/0w9r75mt6SG673Ac-drawing-1-1740236467.png\"></div>\r\n\r\nGive the permission:\r\n```sudo chmod +x hysteria-linux-amd64-avx```\r\n\r\nAnd you should get the problem solved and server is ready to be running.\r\n<div drawio-diagram=\"10\"><img src=\"https://x2.znand.my.id/uploads/images/drawio/2025-02/iafnjWw8NndOjO35-drawing-1-1740236636.png\"></div>\r\n\r\nAlso you will got the SSL Certificate from Acme and server is already running (listening on port 443):\r\n<div drawio-diagram=\"11\"><img src=\"https://x2.znand.my.id/uploads/images/drawio/2025-02/tGOhBjZBg7rqXkru-drawing-1-1740236802.png\"></div>\r\n\r\nIf you want to run the server from systemd, you can read the next page :).','',11),
(41,2,'Configure the Server','<ol id=\"bkmrk-install-to-latest-ve\">\n<li>Install to latest version:</li>\n</ol>\n<p id=\"bkmrk-bash-%3C%28curl--fssl-ht\"><code>bash &lt;(curl -fsSL https://get.hy2.sh/)</code></p>\n<p id=\"bkmrk-remove-and-uninstall\">Remove and uninstall:</p>\n<p id=\"bkmrk-bash-%3C%28curl--fssl-ht-1\"><code>bash &lt;(curl -fsSL https://get.hy2.sh/) --remove</code></p>\n<ol start=\"2\" id=\"bkmrk-in-home-directory%2C\">\n<li>In home directory,</li>\n</ol>\n<p id=\"bkmrk-mkdir-hysteria-nano-\"><code>mkdir hysteria</code>\n<code>nano config.yaml</code></p>\n<ol start=\"3\" id=\"bkmrk-fill-the-blank-yaml-\">\n<li>Fill the blank yaml file with:</li>\n</ol>\n<pre id=\"bkmrk-listen%3A-%3A443-protoco\"><code>listen: :443  \nprotocol: udp\n\nauth:\n  type: password\n  password: passwordtest \n\nacme:\n  domains:\n    - yourdomain.net\n  email: yourname@yourdomain.net\n\nmasquerade:\n  type: proxy\n  proxy:\n    url: https://www.cloudflare.com \n\nquic:\n  congestionControl: bbr   \n  idleTimeout: 60s         \n  maxIdleTimeout: 60s     \n  keepAlivePeriod: 10s     \n\nudp:\n  idleTimeout: 60s\n</code></pre>\n<p id=\"bkmrk-dont-forget-to-edit-\">Dont forget to edit the email, domain and password.</p>\n<ol start=\"4\" id=\"bkmrk-download-the-executa\">\n<li>\n<p>Download the executable file from this <a href=\"https://github.com/apernet/hysteria/releases\">link</a>.</p>\n<div drawio-diagram=\"4\"><img src=\"https://x2.znand.my.id/uploads/images/drawio/2025-02/3od1B7vKW08kPez3-drawing-1-1740234277.png\"></div>\n</li>\n</ol>\n<p id=\"bkmrk-in-this-example-i-us\">In this example i use hysteria-linux-amd64-avx\n<code>wget https://github.com/apernet/hysteria/releases/download/app%2Fv2.6.1/hysteria-linux-amd64-avx</code></p>\n<ol start=\"5\" id=\"bkmrk-run-the-server-sudo-\">\n<li>Run the server\n<code>sudo setcap cap_net_bind_service=+ep ./hysteria-linux-amd64-avx</code>\n<code>./hysteria-linux-amd64-avx server</code></li>\n</ol>\n<p id=\"bkmrk-if-you-got-this-erro\">If you got this error:</p>\n<div drawio-diagram=\"9\" id=\"bkmrk-\"><img src=\"https://x2.znand.my.id/uploads/images/drawio/2025-02/0w9r75mt6SG673Ac-drawing-1-1740236467.png\"></div>\n<p id=\"bkmrk-give-the-permission%3A\">Give the permission:\n<code>sudo chmod +x hysteria-linux-amd64-avx</code></p>\n<p id=\"bkmrk-and-you-should-get-t\">And you should get the problem solved and server is ready to be running.</p>\n<div drawio-diagram=\"10\" id=\"bkmrk--1\"><img src=\"https://x2.znand.my.id/uploads/images/drawio/2025-02/iafnjWw8NndOjO35-drawing-1-1740236636.png\"></div>\n<p id=\"bkmrk-also-you-will-got-th\">Also you will got the SSL Certificate from Acme and server is already running (listening on port 443):</p>\n<div drawio-diagram=\"11\" id=\"bkmrk--2\"><img src=\"https://x2.znand.my.id/uploads/images/drawio/2025-02/tGOhBjZBg7rqXkru-drawing-1-1740236802.png\"></div>\n<p id=\"bkmrk-if-you-want-to-run-t\">If you want to run the server from systemd, you can read the next page :).</p>\n','\nInstall to latest version:\n\nbash <(curl -fsSL https://get.hy2.sh/)\nRemove and uninstall:\nbash <(curl -fsSL https://get.hy2.sh/) --remove\n\nIn home directory,\n\nmkdir hysteria\nnano config.yaml\n\nFill the blank yaml file with:\n\nlisten: :443  \nprotocol: udp\n\nauth:\n  type: password\n  password: passwordtest \n\nacme:\n  domains:\n    - yourdomain.net\n  email: yourname@yourdomain.net\n\nmasquerade:\n  type: proxy\n  proxy:\n    url: https://www.cloudflare.com \n\nquic:\n  congestionControl: bbr   \n  idleTimeout: 60s         \n  maxIdleTimeout: 60s     \n  keepAlivePeriod: 10s     \n\nudp:\n  idleTimeout: 60s\n\nDont forget to edit the email, domain and password.\n\n\nDownload the executable file from this link.\n\n\n\nIn this example i use hysteria-linux-amd64-avx\nwget https://github.com/apernet/hysteria/releases/download/app%2Fv2.6.1/hysteria-linux-amd64-avx\n\nRun the server\nsudo setcap cap_net_bind_service=+ep ./hysteria-linux-amd64-avx\n./hysteria-linux-amd64-avx server\n\nIf you got this error:\n\nGive the permission:\nsudo chmod +x hysteria-linux-amd64-avx\nAnd you should get the problem solved and server is ready to be running.\n\nAlso you will got the SSL Certificate from Acme and server is already running (listening on port 443):\n\nIf you want to run the server from systemd, you can read the next page :).\n',1,'2025-02-22 16:35:20','2025-02-22 16:35:20','configure-the-server','how-to-configure-hysteria2-server-udp-forwarding','version','1. Install to latest version:\r\n\r\n```bash <(curl -fsSL https://get.hy2.sh/)```\r\n\r\n Remove and uninstall:\r\n\r\n```bash <(curl -fsSL https://get.hy2.sh/) --remove```\r\n\r\n2. In home directory, \r\n\r\n```mkdir hysteria```\r\n```nano config.yaml```\r\n\r\n3. Fill the blank yaml file with:\r\n\r\n```\r\nlisten: :443  \r\nprotocol: udp\r\n\r\nauth:\r\n  type: password\r\n  password: passwordtest \r\n\r\nacme:\r\n  domains:\r\n    - yourdomain.net\r\n  email: yourname@yourdomain.net\r\n\r\nmasquerade:\r\n  type: proxy\r\n  proxy:\r\n    url: https://www.cloudflare.com \r\n\r\nquic:\r\n  congestionControl: bbr   \r\n  idleTimeout: 60s         \r\n  maxIdleTimeout: 60s     \r\n  keepAlivePeriod: 10s     \r\n\r\nudp:\r\n  idleTimeout: 60s\r\n```\r\nDont forget to edit the email, domain and password.\r\n\r\n4. Download the executable file from this [link](https://github.com/apernet/hysteria/releases).\r\n\r\n   <div drawio-diagram=\"4\"><img src=\"https://x2.znand.my.id/uploads/images/drawio/2025-02/3od1B7vKW08kPez3-drawing-1-1740234277.png\"></div>\r\n\r\nIn this example i use hysteria-linux-amd64-avx\r\n```wget https://github.com/apernet/hysteria/releases/download/app%2Fv2.6.1/hysteria-linux-amd64-avx```\r\n\r\n5. Run the server\r\n```sudo setcap cap_net_bind_service=+ep ./hysteria-linux-amd64-avx```\r\n```./hysteria-linux-amd64-avx server```\r\n\r\nIf you got this error:\r\n<div drawio-diagram=\"9\"><img src=\"https://x2.znand.my.id/uploads/images/drawio/2025-02/0w9r75mt6SG673Ac-drawing-1-1740236467.png\"></div>\r\n\r\nGive the permission:\r\n```sudo chmod +x hysteria-linux-amd64-avx```\r\n\r\nAnd you should get the problem solved and server is ready to be running.\r\n<div drawio-diagram=\"10\"><img src=\"https://x2.znand.my.id/uploads/images/drawio/2025-02/iafnjWw8NndOjO35-drawing-1-1740236636.png\"></div>\r\n\r\nAlso you will got the SSL Certificate from Acme and server is already running (listening on port 443):\r\n<div drawio-diagram=\"11\"><img src=\"https://x2.znand.my.id/uploads/images/drawio/2025-02/tGOhBjZBg7rqXkru-drawing-1-1740236802.png\"></div>\r\n\r\nIf you want to run the server from systemd, you can read the next page :).','',12),
(43,5,'Configure the client side','<ol id=\"bkmrk-firstly%2C-download-th\">\n<li>\n<p>Firstly, download the client app. In this example, im using Nekobox to use the server in my Device. You can download through this <a href=\"https://github.com/MatsuriDayo/nekoray/releases\">link</a> and download the app according your OS.</p>\n</li>\n<li>\n<p>Open the software and add the new profile:</p>\n</li>\n</ol>\n<div drawio-diagram=\"17\" id=\"bkmrk-\"><img src=\"https://x2.znand.my.id/uploads/images/drawio/2025-02/73yP7O1amXBPAb0P-drawing-1-1740238557.png\"></div>\n<ol start=\"3\" id=\"bkmrk-fill-the-configurati\">\n<li>Fill the configuration according the server you configured before:</li>\n</ol>\n<div drawio-diagram=\"17\" id=\"bkmrk--1\"><i drawio-diagram=\"20\"><img src=\"https://x2.znand.my.id/uploads/images/drawio/2025-02/03fk9RwQ6G4Rrt3o-drawing-1-1740238846.png\"></i></div>\n<ol start=\"4\" id=\"bkmrk-start%3A\">\n<li>Start:</li>\n</ol>\n<div drawio-diagram=\"19\" id=\"bkmrk--2\"><img src=\"https://x2.znand.my.id/uploads/images/drawio/2025-02/fLK1oTCfavzPWnX8-drawing-1-1740238845.png\"></div>\n<ol start=\"5\" id=\"bkmrk-check-the-log-and-in\">\n<li>Check the log and inbound-outbound traffic:</li>\n</ol>\n<div drawio-diagram=\"22\" id=\"bkmrk--3\"><img src=\"https://x2.znand.my.id/uploads/images/drawio/2025-02/3xowFeCO1cx3AyI0-drawing-1-1740239476.png\"></div>\n<ol start=\"6\" id=\"bkmrk-access-the-whoer.net\">\n<li>Access the <a href=\"https://whoer.net/\">whoer.net</a> to verify the server is connected.</li>\n</ol>\n<div drawio-diagram=\"25\" id=\"bkmrk--4\"><img src=\"https://x2.znand.my.id/uploads/images/drawio/2025-02/RLhEbEjnWNqrZ7sa-drawing-1-1740239668.png\"></div>\n<ol start=\"7\" id=\"bkmrk-also-you-can-use-my-\">\n<li>Also you can use my server :):</li>\n</ol>\n<p id=\"bkmrk-sn%3A%2F%2Fhysteria%3Fenpjz2\"><code>sn://hysteria?eNpjZ2BgyKgsLkktykzUq8pLzEvRy63Uy3xiwcLAwMQAAQWJxcXl-UUpJanFX0D8RmwaGhlgAMHiAmITk82MIMHGRgBAPhqn</code></p>\n','\n\nFirstly, download the client app. In this example, im using Nekobox to use the server in my Device. You can download through this link and download the app according your OS.\n\n\nOpen the software and add the new profile:\n\n\n\n\nFill the configuration according the server you configured before:\n\n\n\nStart:\n\n\n\nCheck the log and inbound-outbound traffic:\n\n\n\nAccess the whoer.net to verify the server is connected.\n\n\n\nAlso you can use my server :):\n\nsn://hysteria?eNpjZ2BgyKgsLkktykzUq8pLzEvRy63Uy3xiwcLAwMQAAQWJxcXl-UUpJanFX0D8RmwaGhlgAMHiAmITk82MIMHGRgBAPhqn\n',1,'2025-02-22 17:13:19','2025-02-22 17:13:19','configure-the-client-side','how-to-configure-hysteria2-server-udp-forwarding','version','1. Firstly, download the client app. In this example, im using Nekobox to use the server in my Device. You can download through this [link](https://github.com/MatsuriDayo/nekoray/releases) and download the app according your OS.\r\n\r\n\r\n2. Open the software and add the new profile:\r\n<div drawio-diagram=\"17\"><img src=\"https://x2.znand.my.id/uploads/images/drawio/2025-02/73yP7O1amXBPAb0P-drawing-1-1740238557.png\"></div>\r\n\r\n3. Fill the configuration according the server you configured before:\r\n<div drawio-diagram=\"17\"><i<div drawio-diagram=\"20\"><img src=\"https://x2.znand.my.id/uploads/images/drawio/2025-02/03fk9RwQ6G4Rrt3o-drawing-1-1740238846.png\"></div>\r\n\r\n4. Start:\r\n<div drawio-diagram=\"19\"><img src=\"https://x2.znand.my.id/uploads/images/drawio/2025-02/fLK1oTCfavzPWnX8-drawing-1-1740238845.png\"></div>\r\n\r\n5. Check the log and inbound-outbound traffic:\r\n<div drawio-diagram=\"22\"><img src=\"https://x2.znand.my.id/uploads/images/drawio/2025-02/3xowFeCO1cx3AyI0-drawing-1-1740239476.png\"></div>\r\n\r\n6. Access the [whoer.net](https://whoer.net/) to verify the server is connected.\r\n<div drawio-diagram=\"25\"><img src=\"https://x2.znand.my.id/uploads/images/drawio/2025-02/RLhEbEjnWNqrZ7sa-drawing-1-1740239668.png\"></div>\r\n\r\n7. Also you can use my server :):\r\n\r\n```sn://hysteria?eNpjZ2BgyKgsLkktykzUq8pLzEvRy63Uy3xiwcLAwMQAAQWJxcXl-UUpJanFX0D8RmwaGhlgAMHiAmITk82MIMHGRgBAPhqn```','',12),
(44,6,'Configure Wireguard Relay on VPS','<ol id=\"bkmrk-update-your-dist-rep\">\n<li>\n<p>Update your dist repository:\n<code>apt update &amp;&amp; apt upgrade -y</code></p>\n</li>\n<li>\n<p>Install Wireguard:\n<code>apt install wireguard -y</code></p>\n</li>\n<li>\n<p>Create a new Wireguard key:\n<code>wg genkey | tee /etc/wireguard/privatekey | wg pubkey &gt; /etc/wireguard/publickey</code></p>\n<p>Save the output of these two files:\nPrivate Key: for server configuration.\nPublic Key: for client (your PC/phone).</p>\n</li>\n<li>\n<p>Create a configuration:\n<code>nano /etc/wireguard/wg0.conf</code></p>\n</li>\n<li>\n<p>Fill conf file with:</p>\n</li>\n</ol>\n<pre id=\"bkmrk-privatekey-%3D-%3Cprivat\"><code class=\"language-[Interface]\">PrivateKey = &lt;PRIVATE_KEY_VPS&gt;\nAddress = 10.200.200.1/24\nListenPort = 51820\nPostUp = iptables -A FORWARD -i wg0 -j ACCEPT; iptables -t nat -A POSTROUTING -o eth0 -j MASQUERADE\nPostDown = iptables -D FORWARD -i wg0 -j ACCEPT; iptables -t nat -D POSTROUTING -o eth0 -j MASQUERADE\n\n[Peer]\nPublicKey = &lt;PUBLIC_KEY_CLIENT&gt;\nAllowedIPs = 10.200.200.2/32\n</code></pre>\n','\n\nUpdate your dist repository:\napt update && apt upgrade -y\n\n\nInstall Wireguard:\napt install wireguard -y\n\n\nCreate a new Wireguard key:\nwg genkey | tee /etc/wireguard/privatekey | wg pubkey > /etc/wireguard/publickey\nSave the output of these two files:\nPrivate Key: for server configuration.\nPublic Key: for client (your PC/phone).\n\n\nCreate a configuration:\nnano /etc/wireguard/wg0.conf\n\n\nFill conf file with:\n\n\nPrivateKey = <PRIVATE_KEY_VPS>\nAddress = 10.200.200.1/24\nListenPort = 51820\nPostUp = iptables -A FORWARD -i wg0 -j ACCEPT; iptables -t nat -A POSTROUTING -o eth0 -j MASQUERADE\nPostDown = iptables -D FORWARD -i wg0 -j ACCEPT; iptables -t nat -D POSTROUTING -o eth0 -j MASQUERADE\n\n[Peer]\nPublicKey = <PUBLIC_KEY_CLIENT>\nAllowedIPs = 10.200.200.2/32\n\n',1,'2025-02-24 16:04:11','2025-02-24 16:04:11','configure-wireguard-relay-on-vps','how-to-configure-hysteria2-serverwireguard-relay-for-gaming','version','1. Update your dist repository:\r\n   ```apt update && apt upgrade -y```\r\n\r\n2. Install Wireguard:\r\n   ```apt install wireguard -y```\r\n\r\n3. Create a new Wireguard key:\r\n   ```wg genkey | tee /etc/wireguard/privatekey | wg pubkey > /etc/wireguard/publickey```\r\n\r\n   Save the output of these two files:\r\nPrivate Key: for server configuration.\r\nPublic Key: for client (your PC/phone).\r\n\r\n4. Create a configuration:\r\n```nano /etc/wireguard/wg0.conf```\r\n\r\n5. Fill conf file with:\r\n```[Interface]\r\nPrivateKey = <PRIVATE_KEY_VPS>\r\nAddress = 10.200.200.1/24\r\nListenPort = 51820\r\nPostUp = iptables -A FORWARD -i wg0 -j ACCEPT; iptables -t nat -A POSTROUTING -o eth0 -j MASQUERADE\r\nPostDown = iptables -D FORWARD -i wg0 -j ACCEPT; iptables -t nat -D POSTROUTING -o eth0 -j MASQUERADE\r\n\r\n[Peer]\r\nPublicKey = <PUBLIC_KEY_CLIENT>\r\nAllowedIPs = 10.200.200.2/32\r\n```','Initial publish',1),
(46,6,'Configure Wireguard Relay on VPS','<ol id=\"bkmrk-update-your-dist-rep\">\n<li>\n<p>Update your dist repository:\n<code>apt update &amp;&amp; apt upgrade -y</code></p>\n</li>\n<li>\n<p>Install Wireguard:\n<code>apt install wireguard -y</code></p>\n</li>\n<li>\n<p>Create a new Wireguard key:\n<code>wg genkey | tee /etc/wireguard/privatekey | wg pubkey &gt; /etc/wireguard/publickey</code></p>\n<p>Save the output of these two files:\nPrivate Key: for server configuration.\nPublic Key: for client (your PC/phone).</p>\n</li>\n<li>\n<p>Create a configuration:\n<code>nano /etc/wireguard/wg0.conf</code></p>\n</li>\n<li>\n<p>Fill conf file with:</p>\n</li>\n</ol>\n<pre id=\"bkmrk-privatekey-%3D-%3Cprivat\"><code class=\"language-[Interface]\">PrivateKey = &lt;PRIVATE_KEY_VPS&gt;\nAddress = 10.200.200.1/24\nListenPort = 51820\nPostUp = iptables -A FORWARD -i wg0 -j ACCEPT; iptables -t nat -A POSTROUTING -o eth0 -j MASQUERADE\nPostDown = iptables -D FORWARD -i wg0 -j ACCEPT; iptables -t nat -D POSTROUTING -o eth0 -j MASQUERADE\n\n[Peer]\nPublicKey = &lt;PUBLIC_KEY_CLIENT&gt;\nAllowedIPs = 10.200.200.2/32\n</code></pre>\n<ol start=\"6\" id=\"bkmrk-run-the-wireguard\">\n<li>Run the wireguard</li>\n</ol>\n<pre id=\"bkmrk-systemctl-enable-wg-\"><code class=\"language-wg-quick\">systemctl enable wg-quick@wg0\n</code></pre>\n','\n\nUpdate your dist repository:\napt update && apt upgrade -y\n\n\nInstall Wireguard:\napt install wireguard -y\n\n\nCreate a new Wireguard key:\nwg genkey | tee /etc/wireguard/privatekey | wg pubkey > /etc/wireguard/publickey\nSave the output of these two files:\nPrivate Key: for server configuration.\nPublic Key: for client (your PC/phone).\n\n\nCreate a configuration:\nnano /etc/wireguard/wg0.conf\n\n\nFill conf file with:\n\n\nPrivateKey = <PRIVATE_KEY_VPS>\nAddress = 10.200.200.1/24\nListenPort = 51820\nPostUp = iptables -A FORWARD -i wg0 -j ACCEPT; iptables -t nat -A POSTROUTING -o eth0 -j MASQUERADE\nPostDown = iptables -D FORWARD -i wg0 -j ACCEPT; iptables -t nat -D POSTROUTING -o eth0 -j MASQUERADE\n\n[Peer]\nPublicKey = <PUBLIC_KEY_CLIENT>\nAllowedIPs = 10.200.200.2/32\n\n\nRun the wireguard\n\nsystemctl enable wg-quick@wg0\n\n',1,'2025-02-24 16:04:56','2025-02-24 16:04:56','configure-wireguard-relay-on-vps','how-to-configure-hysteria2-serverwireguard-relay-for-gaming','version','1. Update your dist repository:\r\n   ```apt update && apt upgrade -y```\r\n\r\n2. Install Wireguard:\r\n   ```apt install wireguard -y```\r\n\r\n3. Create a new Wireguard key:\r\n   ```wg genkey | tee /etc/wireguard/privatekey | wg pubkey > /etc/wireguard/publickey```\r\n\r\n   Save the output of these two files:\r\nPrivate Key: for server configuration.\r\nPublic Key: for client (your PC/phone).\r\n\r\n4. Create a configuration:\r\n```nano /etc/wireguard/wg0.conf```\r\n\r\n5. Fill conf file with:\r\n```[Interface]\r\nPrivateKey = <PRIVATE_KEY_VPS>\r\nAddress = 10.200.200.1/24\r\nListenPort = 51820\r\nPostUp = iptables -A FORWARD -i wg0 -j ACCEPT; iptables -t nat -A POSTROUTING -o eth0 -j MASQUERADE\r\nPostDown = iptables -D FORWARD -i wg0 -j ACCEPT; iptables -t nat -D POSTROUTING -o eth0 -j MASQUERADE\r\n\r\n[Peer]\r\nPublicKey = <PUBLIC_KEY_CLIENT>\r\nAllowedIPs = 10.200.200.2/32\r\n```\r\n\r\n6. Run the wireguard\r\n```wg-quick up wg0\r\nsystemctl enable wg-quick@wg0\r\n```','',2),
(47,6,'Configure Wireguard Relay on VPS','<ol id=\"bkmrk-update-your-dist-rep\">\n<li>\n<p>Update your dist repository:\n<code>apt update &amp;&amp; apt upgrade -y</code></p>\n</li>\n<li>\n<p>Install Wireguard:\n<code>apt install wireguard -y</code></p>\n</li>\n<li>\n<p>Create a new Wireguard key:\n<code>wg genkey | tee /etc/wireguard/privatekey | wg pubkey &gt; /etc/wireguard/publickey</code></p>\n<p>Save the output of these two files:\nPrivate Key: for server configuration.\nPublic Key: for client (your PC/phone).</p>\n</li>\n<li>\n<p>Create a configuration:\n<code>nano /etc/wireguard/wg0.conf</code></p>\n</li>\n<li>\n<p>Fill conf file with:</p>\n</li>\n</ol>\n<pre id=\"bkmrk-privatekey-%3D-%3Cprivat\"><code class=\"language-[Interface]\">PrivateKey = &lt;PRIVATE_KEY_VPS&gt;\nAddress = 10.200.200.1/24\nListenPort = 51820\nPostUp = iptables -A FORWARD -i wg0 -j ACCEPT; iptables -t nat -A POSTROUTING -o eth0 -j MASQUERADE\nPostDown = iptables -D FORWARD -i wg0 -j ACCEPT; iptables -t nat -D POSTROUTING -o eth0 -j MASQUERADE\n\n[Peer]\nPublicKey = &lt;PUBLIC_KEY_CLIENT&gt;\nAllowedIPs = 10.200.200.2/32\n</code></pre>\n<ol start=\"6\" id=\"bkmrk-run-the-wireguard\">\n<li>Run the wireguard</li>\n</ol>\n<pre id=\"bkmrk-wg-quick-up-wg0-syst\"><code>wg-quick up wg0\nsystemctl enable wg-quick@wg0\n</code></pre>\n','\n\nUpdate your dist repository:\napt update && apt upgrade -y\n\n\nInstall Wireguard:\napt install wireguard -y\n\n\nCreate a new Wireguard key:\nwg genkey | tee /etc/wireguard/privatekey | wg pubkey > /etc/wireguard/publickey\nSave the output of these two files:\nPrivate Key: for server configuration.\nPublic Key: for client (your PC/phone).\n\n\nCreate a configuration:\nnano /etc/wireguard/wg0.conf\n\n\nFill conf file with:\n\n\nPrivateKey = <PRIVATE_KEY_VPS>\nAddress = 10.200.200.1/24\nListenPort = 51820\nPostUp = iptables -A FORWARD -i wg0 -j ACCEPT; iptables -t nat -A POSTROUTING -o eth0 -j MASQUERADE\nPostDown = iptables -D FORWARD -i wg0 -j ACCEPT; iptables -t nat -D POSTROUTING -o eth0 -j MASQUERADE\n\n[Peer]\nPublicKey = <PUBLIC_KEY_CLIENT>\nAllowedIPs = 10.200.200.2/32\n\n\nRun the wireguard\n\nwg-quick up wg0\nsystemctl enable wg-quick@wg0\n\n',1,'2025-02-24 16:05:19','2025-02-24 16:05:19','configure-wireguard-relay-on-vps','how-to-configure-hysteria2-serverwireguard-relay-for-gaming','version','1. Update your dist repository:\r\n   ```apt update && apt upgrade -y```\r\n\r\n2. Install Wireguard:\r\n   ```apt install wireguard -y```\r\n\r\n3. Create a new Wireguard key:\r\n   ```wg genkey | tee /etc/wireguard/privatekey | wg pubkey > /etc/wireguard/publickey```\r\n\r\n   Save the output of these two files:\r\nPrivate Key: for server configuration.\r\nPublic Key: for client (your PC/phone).\r\n\r\n4. Create a configuration:\r\n```nano /etc/wireguard/wg0.conf```\r\n\r\n5. Fill conf file with:\r\n```[Interface]\r\nPrivateKey = <PRIVATE_KEY_VPS>\r\nAddress = 10.200.200.1/24\r\nListenPort = 51820\r\nPostUp = iptables -A FORWARD -i wg0 -j ACCEPT; iptables -t nat -A POSTROUTING -o eth0 -j MASQUERADE\r\nPostDown = iptables -D FORWARD -i wg0 -j ACCEPT; iptables -t nat -D POSTROUTING -o eth0 -j MASQUERADE\r\n\r\n[Peer]\r\nPublicKey = <PUBLIC_KEY_CLIENT>\r\nAllowedIPs = 10.200.200.2/32\r\n```\r\n\r\n6. Run the wireguard\r\n```\r\nwg-quick up wg0\r\nsystemctl enable wg-quick@wg0\r\n```','',3),
(49,6,'Configure Wireguard Relay on VPS','<ol id=\"bkmrk-update-your-dist-rep\">\n<li>\n<p>Update your dist repository:\n<code>apt update &amp;&amp; apt upgrade -y</code></p>\n</li>\n<li>\n<p>Install Wireguard:\n<code>apt install wireguard -y</code></p>\n</li>\n<li>\n<p>Create a new Wireguard key:\n<code>wg genkey | tee /etc/wireguard/privatekey | wg pubkey &gt; /etc/wireguard/publickey</code></p>\n<p>Save the output of these two files:\nPrivate Key: for server configuration.\nPublic Key: for client (your PC/phone).</p>\n</li>\n<li>\n<p>Create a configuration:\n<code>nano /etc/wireguard/wg0.conf</code></p>\n</li>\n<li>\n<p>Fill conf file with:</p>\n</li>\n</ol>\n<pre id=\"bkmrk-privatekey-%3D-%3Cprivat\"><code class=\"language-[Interface]\">PrivateKey = &lt;PRIVATE_KEY_VPS&gt;\nAddress = 10.200.200.1/24\nListenPort = 51820\nPostUp = iptables -A FORWARD -i wg0 -j ACCEPT; iptables -t nat -A POSTROUTING -o eth0 -j MASQUERADE\nPostDown = iptables -D FORWARD -i wg0 -j ACCEPT; iptables -t nat -D POSTROUTING -o eth0 -j MASQUERADE\n\n[Peer]\nPublicKey = &lt;PUBLIC_KEY_CLIENT&gt;\nAllowedIPs = 10.200.200.2/32\n</code></pre>\n<ol start=\"6\" id=\"bkmrk-run-the-wireguard\">\n<li>Run the wireguard</li>\n</ol>\n<p id=\"bkmrk-wg-quick-up-wg0-syst\"><code>wg-quick up wg0</code>\n<code>systemctl enable wg-quick@wg0</code></p>\n<p id=\"bkmrk-if-you-using-ufw%2C-pl\">If you using ufw, please open the port:</p>\n<pre id=\"bkmrk-ufw-allow-51820%2Fudp-\"><code>ufw allow 51820/udp\nufw reload\n</code></pre>\n','\n\nUpdate your dist repository:\napt update && apt upgrade -y\n\n\nInstall Wireguard:\napt install wireguard -y\n\n\nCreate a new Wireguard key:\nwg genkey | tee /etc/wireguard/privatekey | wg pubkey > /etc/wireguard/publickey\nSave the output of these two files:\nPrivate Key: for server configuration.\nPublic Key: for client (your PC/phone).\n\n\nCreate a configuration:\nnano /etc/wireguard/wg0.conf\n\n\nFill conf file with:\n\n\nPrivateKey = <PRIVATE_KEY_VPS>\nAddress = 10.200.200.1/24\nListenPort = 51820\nPostUp = iptables -A FORWARD -i wg0 -j ACCEPT; iptables -t nat -A POSTROUTING -o eth0 -j MASQUERADE\nPostDown = iptables -D FORWARD -i wg0 -j ACCEPT; iptables -t nat -D POSTROUTING -o eth0 -j MASQUERADE\n\n[Peer]\nPublicKey = <PUBLIC_KEY_CLIENT>\nAllowedIPs = 10.200.200.2/32\n\n\nRun the wireguard\n\nwg-quick up wg0\nsystemctl enable wg-quick@wg0\nIf you using ufw, please open the port:\nufw allow 51820/udp\nufw reload\n\n',1,'2025-02-24 16:06:47','2025-02-24 16:06:47','configure-wireguard-relay-on-vps','how-to-configure-hysteria2-serverwireguard-relay-for-gaming','version','1. Update your dist repository:\r\n   ```apt update && apt upgrade -y```\r\n\r\n2. Install Wireguard:\r\n   ```apt install wireguard -y```\r\n\r\n3. Create a new Wireguard key:\r\n   ```wg genkey | tee /etc/wireguard/privatekey | wg pubkey > /etc/wireguard/publickey```\r\n\r\n   Save the output of these two files:\r\nPrivate Key: for server configuration.\r\nPublic Key: for client (your PC/phone).\r\n\r\n4. Create a configuration:\r\n```nano /etc/wireguard/wg0.conf```\r\n\r\n5. Fill conf file with:\r\n```[Interface]\r\nPrivateKey = <PRIVATE_KEY_VPS>\r\nAddress = 10.200.200.1/24\r\nListenPort = 51820\r\nPostUp = iptables -A FORWARD -i wg0 -j ACCEPT; iptables -t nat -A POSTROUTING -o eth0 -j MASQUERADE\r\nPostDown = iptables -D FORWARD -i wg0 -j ACCEPT; iptables -t nat -D POSTROUTING -o eth0 -j MASQUERADE\r\n\r\n[Peer]\r\nPublicKey = <PUBLIC_KEY_CLIENT>\r\nAllowedIPs = 10.200.200.2/32\r\n```\r\n\r\n6. Run the wireguard\r\n\r\n```wg-quick up wg0```\r\n```systemctl enable wg-quick@wg0```\r\n\r\nIf you using ufw, please open the port:\r\n```\r\nufw allow 51820/udp\r\nufw reload\r\n```','',4),
(50,6,'Configure Wireguard Relay on VPS','<ol id=\"bkmrk-update-your-dist-rep\">\n<li>\n<p>Update your dist repository:\n<code>apt update &amp;&amp; apt upgrade -y</code></p>\n</li>\n<li>\n<p>Install Wireguard:\n<code>apt install wireguard -y</code></p>\n</li>\n<li>\n<p>Create a new Wireguard key:\n<code>wg genkey | tee /etc/wireguard/privatekey | wg pubkey &gt; /etc/wireguard/publickey</code></p>\n<p>Save the output of these two files:\nPrivate Key: for server configuration.\nPublic Key: for client (your PC/phone).</p>\n</li>\n<li>\n<p>Create a configuration:\n<code>nano /etc/wireguard/wg0.conf</code></p>\n</li>\n<li>\n<p>Fill conf file with:</p>\n</li>\n</ol>\n<pre id=\"bkmrk-privatekey-%3D-%3Cprivat\"><code class=\"language-[Interface]\">PrivateKey = &lt;PRIVATE_KEY_VPS&gt;\nAddress = 10.200.200.1/24\nListenPort = 51820\nPostUp = iptables -A FORWARD -i wg0 -j ACCEPT; iptables -t nat -A POSTROUTING -o eth0 -j MASQUERADE\nPostDown = iptables -D FORWARD -i wg0 -j ACCEPT; iptables -t nat -D POSTROUTING -o eth0 -j MASQUERADE\n\n[Peer]\nPublicKey = &lt;PUBLIC_KEY_CLIENT&gt;\nAllowedIPs = 10.200.200.2/32\n</code></pre>\n<ol start=\"6\" id=\"bkmrk-run-the-wireguard\">\n<li>Run the wireguard</li>\n</ol>\n<p id=\"bkmrk-wg-quick-up-wg0-syst\"><code>wg-quick up wg0</code>\n<code>systemctl enable wg-quick@wg0</code></p>\n<p id=\"bkmrk-if-you-using-ufw%2C-pl\">If you using ufw, please open the port:\n<code>ufw allow 51820/udp</code>\n<code>ufw reload</code></p>\n','\n\nUpdate your dist repository:\napt update && apt upgrade -y\n\n\nInstall Wireguard:\napt install wireguard -y\n\n\nCreate a new Wireguard key:\nwg genkey | tee /etc/wireguard/privatekey | wg pubkey > /etc/wireguard/publickey\nSave the output of these two files:\nPrivate Key: for server configuration.\nPublic Key: for client (your PC/phone).\n\n\nCreate a configuration:\nnano /etc/wireguard/wg0.conf\n\n\nFill conf file with:\n\n\nPrivateKey = <PRIVATE_KEY_VPS>\nAddress = 10.200.200.1/24\nListenPort = 51820\nPostUp = iptables -A FORWARD -i wg0 -j ACCEPT; iptables -t nat -A POSTROUTING -o eth0 -j MASQUERADE\nPostDown = iptables -D FORWARD -i wg0 -j ACCEPT; iptables -t nat -D POSTROUTING -o eth0 -j MASQUERADE\n\n[Peer]\nPublicKey = <PUBLIC_KEY_CLIENT>\nAllowedIPs = 10.200.200.2/32\n\n\nRun the wireguard\n\nwg-quick up wg0\nsystemctl enable wg-quick@wg0\nIf you using ufw, please open the port:\nufw allow 51820/udp\nufw reload\n',1,'2025-02-24 16:07:12','2025-02-24 16:07:12','configure-wireguard-relay-on-vps','how-to-configure-hysteria2-serverwireguard-relay-for-gaming','version','1. Update your dist repository:\r\n   ```apt update && apt upgrade -y```\r\n\r\n2. Install Wireguard:\r\n   ```apt install wireguard -y```\r\n\r\n3. Create a new Wireguard key:\r\n   ```wg genkey | tee /etc/wireguard/privatekey | wg pubkey > /etc/wireguard/publickey```\r\n\r\n   Save the output of these two files:\r\nPrivate Key: for server configuration.\r\nPublic Key: for client (your PC/phone).\r\n\r\n4. Create a configuration:\r\n```nano /etc/wireguard/wg0.conf```\r\n\r\n5. Fill conf file with:\r\n```[Interface]\r\nPrivateKey = <PRIVATE_KEY_VPS>\r\nAddress = 10.200.200.1/24\r\nListenPort = 51820\r\nPostUp = iptables -A FORWARD -i wg0 -j ACCEPT; iptables -t nat -A POSTROUTING -o eth0 -j MASQUERADE\r\nPostDown = iptables -D FORWARD -i wg0 -j ACCEPT; iptables -t nat -D POSTROUTING -o eth0 -j MASQUERADE\r\n\r\n[Peer]\r\nPublicKey = <PUBLIC_KEY_CLIENT>\r\nAllowedIPs = 10.200.200.2/32\r\n```\r\n\r\n6. Run the wireguard\r\n\r\n```wg-quick up wg0```\r\n```systemctl enable wg-quick@wg0```\r\n\r\nIf you using ufw, please open the port:\r\n```ufw allow 51820/udp```\r\n```ufw reload```','',5),
(52,6,'Configure Wireguard Relay on VPS','<ol id=\"bkmrk-update-your-dist-rep\">\n<li>\n<p>Update your dist repository:\n<code>apt update &amp;&amp; apt upgrade -y</code></p>\n</li>\n<li>\n<p>Install Wireguard:\n<code>apt install wireguard -y</code></p>\n</li>\n<li>\n<p>Create a new Wireguard key:\n<code>wg genkey | tee /etc/wireguard/privatekey | wg pubkey &gt; /etc/wireguard/publickey</code></p>\n<p>Save the output of these two files:\nPrivate Key: for server configuration.\nPublic Key: for client (your PC/phone).</p>\n</li>\n<li>\n<p>Create a configuration:\n<code>nano /etc/wireguard/wg0.conf</code></p>\n</li>\n<li>\n<p>Fill conf file with:</p>\n</li>\n</ol>\n<pre id=\"bkmrk-privatekey-%3D-%3Cprivat\"><code class=\"language-[Interface]\">PrivateKey = &lt;PRIVATE_KEY_VPS&gt;\nAddress = 10.200.200.1/24\nListenPort = 51820\nPostUp = iptables -A FORWARD -i wg0 -j ACCEPT; iptables -t nat -A POSTROUTING -o eth0 -j MASQUERADE\nPostDown = iptables -D FORWARD -i wg0 -j ACCEPT; iptables -t nat -D POSTROUTING -o eth0 -j MASQUERADE\n\n[Peer]\nPublicKey = &lt;PUBLIC_KEY_CLIENT&gt;\nAllowedIPs = 10.200.200.2/32\n</code></pre>\n<ol start=\"6\" id=\"bkmrk-run-the-wireguard\">\n<li>Run the wireguard</li>\n</ol>\n<p id=\"bkmrk-wg-quick-up-wg0-syst\"><code>wg-quick up wg0</code>\n<code>systemctl enable wg-quick@wg0</code></p>\n<p id=\"bkmrk-if-you-using-ufw%2C-pl\">If you using ufw, please open the port:\n<code>ufw allow 51820/udp</code>\n<code>ufw reload</code></p>\n<ol start=\"7\" id=\"bkmrk-download-client-app-\">\n<li>Download client app from official website, <a href=\"https://www.wireguard.com/\">wireguard.com</a>.\nFill the configuration with:</li>\n</ol>\n<pre id=\"bkmrk-%5Binterface%5D-privatek\"><code>[Interface]\nPrivateKey = &lt;PRIVATE_KEY_CLIENT&gt;\nAddress = 10.200.200.2/24\nDNS = 8.8.8.8\n\n[Peer]\nPublicKey = &lt;PUBLIC_KEY_VPS&gt;\nEndpoint = &lt;IP_VPS&gt;:51820\nAllowedIPs = 0.0.0.0/0, ::/0\nPersistentKeepalive = 25\n</code></pre>\n','\n\nUpdate your dist repository:\napt update && apt upgrade -y\n\n\nInstall Wireguard:\napt install wireguard -y\n\n\nCreate a new Wireguard key:\nwg genkey | tee /etc/wireguard/privatekey | wg pubkey > /etc/wireguard/publickey\nSave the output of these two files:\nPrivate Key: for server configuration.\nPublic Key: for client (your PC/phone).\n\n\nCreate a configuration:\nnano /etc/wireguard/wg0.conf\n\n\nFill conf file with:\n\n\nPrivateKey = <PRIVATE_KEY_VPS>\nAddress = 10.200.200.1/24\nListenPort = 51820\nPostUp = iptables -A FORWARD -i wg0 -j ACCEPT; iptables -t nat -A POSTROUTING -o eth0 -j MASQUERADE\nPostDown = iptables -D FORWARD -i wg0 -j ACCEPT; iptables -t nat -D POSTROUTING -o eth0 -j MASQUERADE\n\n[Peer]\nPublicKey = <PUBLIC_KEY_CLIENT>\nAllowedIPs = 10.200.200.2/32\n\n\nRun the wireguard\n\nwg-quick up wg0\nsystemctl enable wg-quick@wg0\nIf you using ufw, please open the port:\nufw allow 51820/udp\nufw reload\n\nDownload client app from official website, wireguard.com.\nFill the configuration with:\n\n[Interface]\nPrivateKey = <PRIVATE_KEY_CLIENT>\nAddress = 10.200.200.2/24\nDNS = 8.8.8.8\n\n[Peer]\nPublicKey = <PUBLIC_KEY_VPS>\nEndpoint = <IP_VPS>:51820\nAllowedIPs = 0.0.0.0/0, ::/0\nPersistentKeepalive = 25\n\n',1,'2025-02-24 16:09:22','2025-02-24 16:09:22','configure-wireguard-relay-on-vps','how-to-configure-hysteria2-serverwireguard-relay-for-gaming','version','1. Update your dist repository:\r\n   ```apt update && apt upgrade -y```\r\n\r\n2. Install Wireguard:\r\n   ```apt install wireguard -y```\r\n\r\n3. Create a new Wireguard key:\r\n   ```wg genkey | tee /etc/wireguard/privatekey | wg pubkey > /etc/wireguard/publickey```\r\n\r\n   Save the output of these two files:\r\nPrivate Key: for server configuration.\r\nPublic Key: for client (your PC/phone).\r\n\r\n4. Create a configuration:\r\n```nano /etc/wireguard/wg0.conf```\r\n\r\n5. Fill conf file with:\r\n```[Interface]\r\nPrivateKey = <PRIVATE_KEY_VPS>\r\nAddress = 10.200.200.1/24\r\nListenPort = 51820\r\nPostUp = iptables -A FORWARD -i wg0 -j ACCEPT; iptables -t nat -A POSTROUTING -o eth0 -j MASQUERADE\r\nPostDown = iptables -D FORWARD -i wg0 -j ACCEPT; iptables -t nat -D POSTROUTING -o eth0 -j MASQUERADE\r\n\r\n[Peer]\r\nPublicKey = <PUBLIC_KEY_CLIENT>\r\nAllowedIPs = 10.200.200.2/32\r\n```\r\n\r\n6. Run the wireguard\r\n\r\n```wg-quick up wg0```\r\n```systemctl enable wg-quick@wg0```\r\n\r\nIf you using ufw, please open the port:\r\n```ufw allow 51820/udp```\r\n```ufw reload```\r\n\r\n7. Download client app from official website, [wireguard.com](https://www.wireguard.com/).\r\nFill the configuration with:\r\n```\r\n[Interface]\r\nPrivateKey = <PRIVATE_KEY_CLIENT>\r\nAddress = 10.200.200.2/24\r\nDNS = 8.8.8.8\r\n\r\n[Peer]\r\nPublicKey = <PUBLIC_KEY_VPS>\r\nEndpoint = <IP_VPS>:51820\r\nAllowedIPs = 0.0.0.0/0, ::/0\r\nPersistentKeepalive = 25\r\n```','',6),
(54,6,'Configure Wireguard Relay on VPS','<ol id=\"bkmrk-update-your-dist-rep\">\n<li>\n<p>Update your dist repository:\n<code>apt update &amp;&amp; apt upgrade -y</code></p>\n</li>\n<li>\n<p>Install Wireguard:\n<code>apt install wireguard -y</code></p>\n</li>\n<li>\n<p>Create a new Wireguard key:\n<code>wg genkey | tee /etc/wireguard/privatekey | wg pubkey &gt; /etc/wireguard/publickey</code></p>\n<p>Save the output of these two files:\nPrivate Key: for server configuration.\nPublic Key: for client (your PC/phone).</p>\n</li>\n<li>\n<p>Create a configuration:\n<code>nano /etc/wireguard/wg0.conf</code></p>\n</li>\n<li>\n<p>Fill conf file with:</p>\n</li>\n</ol>\n<pre id=\"bkmrk-privatekey-%3D-%3Cprivat\"><code class=\"language-[Interface]\">PrivateKey = &lt;PRIVATE_KEY_VPS&gt;\nAddress = 10.200.200.1/24\nListenPort = 51820\nPostUp = iptables -A FORWARD -i wg0 -j ACCEPT; iptables -t nat -A POSTROUTING -o eth0 -j MASQUERADE\nPostDown = iptables -D FORWARD -i wg0 -j ACCEPT; iptables -t nat -D POSTROUTING -o eth0 -j MASQUERADE\n\n[Peer]\nPublicKey = &lt;PUBLIC_KEY_CLIENT&gt;\nAllowedIPs = 10.200.200.2/32\n</code></pre>\n<ol start=\"6\" id=\"bkmrk-run-the-wireguard\">\n<li>Run the wireguard</li>\n</ol>\n<p id=\"bkmrk-wg-quick-up-wg0-syst\"><code>wg-quick up wg0</code>\n<code>systemctl enable wg-quick@wg0</code></p>\n<p id=\"bkmrk-if-you-using-ufw%2C-pl\">If you using ufw, please open the port:\n<code>ufw allow 51820/udp</code>\n<code>ufw reload</code></p>\n<ol start=\"7\" id=\"bkmrk-download-client-app-\">\n<li>Download client app from official website, <a href=\"https://www.wireguard.com/\">wireguard.com</a>.\nFill the configuration with:</li>\n</ol>\n<pre id=\"bkmrk-%5Binterface%5D-privatek\"><code>[Interface]\nPrivateKey = &lt;PRIVATE_KEY_CLIENT&gt;\nAddress = 10.200.200.2/24\nDNS = 8.8.8.8\n\n[Peer]\nPublicKey = &lt;PUBLIC_KEY_VPS&gt;\nEndpoint = &lt;IP_VPS&gt;:51820\nAllowedIPs = 0.0.0.0/0, ::/0\nPersistentKeepalive = 25\n</code></pre>\n<ol start=\"8\" id=\"bkmrk-don%27t-forget-to-acti\">\n<li>\n<p>Don\'t forget to activate Hysteria client first before Wireguard.</p>\n</li>\n<li>\n<p>Add the new line in config.yaml Hysteria:</p>\n</li>\n</ol>\n<pre id=\"bkmrk-masquerade%3A-10.200.2\"><code>masquerade: 10.200.200.2\n</code></pre>\n<p id=\"bkmrk-or-run-this-command-\">Or run this command to route traffic from Hysteria to Wireguard:\n<code>iptables -t nat -A PREROUTING -p udp --dport 443 -j DNAT --to-destination 10.200.200.2</code></p>\n','\n\nUpdate your dist repository:\napt update && apt upgrade -y\n\n\nInstall Wireguard:\napt install wireguard -y\n\n\nCreate a new Wireguard key:\nwg genkey | tee /etc/wireguard/privatekey | wg pubkey > /etc/wireguard/publickey\nSave the output of these two files:\nPrivate Key: for server configuration.\nPublic Key: for client (your PC/phone).\n\n\nCreate a configuration:\nnano /etc/wireguard/wg0.conf\n\n\nFill conf file with:\n\n\nPrivateKey = <PRIVATE_KEY_VPS>\nAddress = 10.200.200.1/24\nListenPort = 51820\nPostUp = iptables -A FORWARD -i wg0 -j ACCEPT; iptables -t nat -A POSTROUTING -o eth0 -j MASQUERADE\nPostDown = iptables -D FORWARD -i wg0 -j ACCEPT; iptables -t nat -D POSTROUTING -o eth0 -j MASQUERADE\n\n[Peer]\nPublicKey = <PUBLIC_KEY_CLIENT>\nAllowedIPs = 10.200.200.2/32\n\n\nRun the wireguard\n\nwg-quick up wg0\nsystemctl enable wg-quick@wg0\nIf you using ufw, please open the port:\nufw allow 51820/udp\nufw reload\n\nDownload client app from official website, wireguard.com.\nFill the configuration with:\n\n[Interface]\nPrivateKey = <PRIVATE_KEY_CLIENT>\nAddress = 10.200.200.2/24\nDNS = 8.8.8.8\n\n[Peer]\nPublicKey = <PUBLIC_KEY_VPS>\nEndpoint = <IP_VPS>:51820\nAllowedIPs = 0.0.0.0/0, ::/0\nPersistentKeepalive = 25\n\n\n\nDon\'t forget to activate Hysteria client first before Wireguard.\n\n\nAdd the new line in config.yaml Hysteria:\n\n\nmasquerade: 10.200.200.2\n\nOr run this command to route traffic from Hysteria to Wireguard:\niptables -t nat -A PREROUTING -p udp --dport 443 -j DNAT --to-destination 10.200.200.2\n',1,'2025-02-24 16:13:22','2025-02-24 16:13:22','configure-wireguard-relay-on-vps','how-to-configure-hysteria2-serverwireguard-relay-for-gaming','version','1. Update your dist repository:\r\n   ```apt update && apt upgrade -y```\r\n\r\n2. Install Wireguard:\r\n   ```apt install wireguard -y```\r\n\r\n3. Create a new Wireguard key:\r\n   ```wg genkey | tee /etc/wireguard/privatekey | wg pubkey > /etc/wireguard/publickey```\r\n\r\n   Save the output of these two files:\r\nPrivate Key: for server configuration.\r\nPublic Key: for client (your PC/phone).\r\n\r\n4. Create a configuration:\r\n```nano /etc/wireguard/wg0.conf```\r\n\r\n5. Fill conf file with:\r\n```[Interface]\r\nPrivateKey = <PRIVATE_KEY_VPS>\r\nAddress = 10.200.200.1/24\r\nListenPort = 51820\r\nPostUp = iptables -A FORWARD -i wg0 -j ACCEPT; iptables -t nat -A POSTROUTING -o eth0 -j MASQUERADE\r\nPostDown = iptables -D FORWARD -i wg0 -j ACCEPT; iptables -t nat -D POSTROUTING -o eth0 -j MASQUERADE\r\n\r\n[Peer]\r\nPublicKey = <PUBLIC_KEY_CLIENT>\r\nAllowedIPs = 10.200.200.2/32\r\n```\r\n\r\n6. Run the wireguard\r\n\r\n```wg-quick up wg0```\r\n```systemctl enable wg-quick@wg0```\r\n\r\nIf you using ufw, please open the port:\r\n```ufw allow 51820/udp```\r\n```ufw reload```\r\n\r\n7. Download client app from official website, [wireguard.com](https://www.wireguard.com/).\r\nFill the configuration with:\r\n```\r\n[Interface]\r\nPrivateKey = <PRIVATE_KEY_CLIENT>\r\nAddress = 10.200.200.2/24\r\nDNS = 8.8.8.8\r\n\r\n[Peer]\r\nPublicKey = <PUBLIC_KEY_VPS>\r\nEndpoint = <IP_VPS>:51820\r\nAllowedIPs = 0.0.0.0/0, ::/0\r\nPersistentKeepalive = 25\r\n```\r\n8. Don\'t forget to activate Hysteria client first before Wireguard.\r\n\r\n9. Add the new line in config.yaml Hysteria:\r\n```\r\nmasquerade: 10.200.200.2\r\n```\r\nOr run this command to route traffic from Hysteria to Wireguard:\r\n```iptables -t nat -A PREROUTING -p udp --dport 443 -j DNAT --to-destination 10.200.200.2```','',7),
(55,6,'Configure Wireguard Relay on VPS','<ol id=\"bkmrk-update-your-dist-rep\">\n<li>\n<p>Update your dist repository:\n<code>apt update &amp;&amp; apt upgrade -y</code></p>\n</li>\n<li>\n<p>Install Wireguard:\n<code>apt install wireguard -y</code></p>\n</li>\n<li>\n<p>Create a new Wireguard key:\n<code>wg genkey | tee /etc/wireguard/privatekey | wg pubkey &gt; /etc/wireguard/publickey</code></p>\n<p>Save the output of these two files:\nPrivate Key: for server configuration.\nPublic Key: for client (your PC/phone).</p>\n</li>\n<li>\n<p>Create a configuration:\n<code>nano /etc/wireguard/wg0.conf</code></p>\n</li>\n<li>\n<p>Fill conf file with:</p>\n</li>\n</ol>\n<pre id=\"bkmrk-privatekey-%3D-%3Cprivat\"><code class=\"language-[Interface]\">PrivateKey = &lt;PRIVATE_KEY_VPS&gt;\nAddress = 10.200.200.1/24\nListenPort = 51820\nPostUp = iptables -A FORWARD -i wg0 -j ACCEPT; iptables -t nat -A POSTROUTING -o eth0 -j MASQUERADE\nPostDown = iptables -D FORWARD -i wg0 -j ACCEPT; iptables -t nat -D POSTROUTING -o eth0 -j MASQUERADE\n\n[Peer]\nPublicKey = &lt;PUBLIC_KEY_CLIENT&gt;\nAllowedIPs = 10.200.200.2/32\n</code></pre>\n<ol start=\"6\" id=\"bkmrk-run-the-wireguard\">\n<li>Run the wireguard</li>\n</ol>\n<p id=\"bkmrk-wg-quick-up-wg0-syst\"><code>wg-quick up wg0</code>\n<code>systemctl enable wg-quick@wg0</code></p>\n<p id=\"bkmrk-if-you-using-ufw%2C-pl\">If you using ufw, please open the port:\n<code>ufw allow 51820/udp</code>\n<code>ufw reload</code></p>\n<ol start=\"7\" id=\"bkmrk-download-client-app-\">\n<li>Download client app from official website, <a href=\"https://www.wireguard.com/\">wireguard.com</a>.\nFill the configuration with:</li>\n</ol>\n<pre id=\"bkmrk-%5Binterface%5D-privatek\"><code>[Interface]\nPrivateKey = &lt;PRIVATE_KEY_CLIENT&gt;\nAddress = 10.200.200.2/24\nDNS = 8.8.8.8\n\n[Peer]\nPublicKey = &lt;PUBLIC_KEY_VPS&gt;\nEndpoint = &lt;IP_VPS&gt;:51820\nAllowedIPs = 0.0.0.0/0, ::/0\nPersistentKeepalive = 25\n</code></pre>\n<ol start=\"8\" id=\"bkmrk-add-the-new-line-in-\">\n<li>Add the new line in config.yaml Hysteria:</li>\n</ol>\n<pre id=\"bkmrk-masquerade%3A-10.200.2\"><code>masquerade: 10.200.200.2\n</code></pre>\n<p id=\"bkmrk-or-run-this-command-\">Or run this command to route traffic from Hysteria to Wireguard:\n<code>iptables -t nat -A PREROUTING -p udp --dport 443 -j DNAT --to-destination 10.200.200.2</code></p>\n','\n\nUpdate your dist repository:\napt update && apt upgrade -y\n\n\nInstall Wireguard:\napt install wireguard -y\n\n\nCreate a new Wireguard key:\nwg genkey | tee /etc/wireguard/privatekey | wg pubkey > /etc/wireguard/publickey\nSave the output of these two files:\nPrivate Key: for server configuration.\nPublic Key: for client (your PC/phone).\n\n\nCreate a configuration:\nnano /etc/wireguard/wg0.conf\n\n\nFill conf file with:\n\n\nPrivateKey = <PRIVATE_KEY_VPS>\nAddress = 10.200.200.1/24\nListenPort = 51820\nPostUp = iptables -A FORWARD -i wg0 -j ACCEPT; iptables -t nat -A POSTROUTING -o eth0 -j MASQUERADE\nPostDown = iptables -D FORWARD -i wg0 -j ACCEPT; iptables -t nat -D POSTROUTING -o eth0 -j MASQUERADE\n\n[Peer]\nPublicKey = <PUBLIC_KEY_CLIENT>\nAllowedIPs = 10.200.200.2/32\n\n\nRun the wireguard\n\nwg-quick up wg0\nsystemctl enable wg-quick@wg0\nIf you using ufw, please open the port:\nufw allow 51820/udp\nufw reload\n\nDownload client app from official website, wireguard.com.\nFill the configuration with:\n\n[Interface]\nPrivateKey = <PRIVATE_KEY_CLIENT>\nAddress = 10.200.200.2/24\nDNS = 8.8.8.8\n\n[Peer]\nPublicKey = <PUBLIC_KEY_VPS>\nEndpoint = <IP_VPS>:51820\nAllowedIPs = 0.0.0.0/0, ::/0\nPersistentKeepalive = 25\n\n\nAdd the new line in config.yaml Hysteria:\n\nmasquerade: 10.200.200.2\n\nOr run this command to route traffic from Hysteria to Wireguard:\niptables -t nat -A PREROUTING -p udp --dport 443 -j DNAT --to-destination 10.200.200.2\n',1,'2025-02-24 16:15:33','2025-02-24 16:15:33','configure-wireguard-relay-on-vps','how-to-configure-hysteria2-serverwireguard-relay-for-gaming','version','1. Update your dist repository:\r\n   ```apt update && apt upgrade -y```\r\n\r\n2. Install Wireguard:\r\n   ```apt install wireguard -y```\r\n\r\n3. Create a new Wireguard key:\r\n   ```wg genkey | tee /etc/wireguard/privatekey | wg pubkey > /etc/wireguard/publickey```\r\n\r\n   Save the output of these two files:\r\nPrivate Key: for server configuration.\r\nPublic Key: for client (your PC/phone).\r\n\r\n4. Create a configuration:\r\n```nano /etc/wireguard/wg0.conf```\r\n\r\n5. Fill conf file with:\r\n```[Interface]\r\nPrivateKey = <PRIVATE_KEY_VPS>\r\nAddress = 10.200.200.1/24\r\nListenPort = 51820\r\nPostUp = iptables -A FORWARD -i wg0 -j ACCEPT; iptables -t nat -A POSTROUTING -o eth0 -j MASQUERADE\r\nPostDown = iptables -D FORWARD -i wg0 -j ACCEPT; iptables -t nat -D POSTROUTING -o eth0 -j MASQUERADE\r\n\r\n[Peer]\r\nPublicKey = <PUBLIC_KEY_CLIENT>\r\nAllowedIPs = 10.200.200.2/32\r\n```\r\n\r\n6. Run the wireguard\r\n\r\n```wg-quick up wg0```\r\n```systemctl enable wg-quick@wg0```\r\n\r\nIf you using ufw, please open the port:\r\n```ufw allow 51820/udp```\r\n```ufw reload```\r\n\r\n7. Download client app from official website, [wireguard.com](https://www.wireguard.com/).\r\nFill the configuration with:\r\n```\r\n[Interface]\r\nPrivateKey = <PRIVATE_KEY_CLIENT>\r\nAddress = 10.200.200.2/24\r\nDNS = 8.8.8.8\r\n\r\n[Peer]\r\nPublicKey = <PUBLIC_KEY_VPS>\r\nEndpoint = <IP_VPS>:51820\r\nAllowedIPs = 0.0.0.0/0, ::/0\r\nPersistentKeepalive = 25\r\n```\r\n\r\n8. Add the new line in config.yaml Hysteria:\r\n```\r\nmasquerade: 10.200.200.2\r\n```\r\nOr run this command to route traffic from Hysteria to Wireguard:\r\n```iptables -t nat -A PREROUTING -p udp --dport 443 -j DNAT --to-destination 10.200.200.2```','',8),
(57,6,'Configure Wireguard Relay on VPS','<ol id=\"bkmrk-update-your-dist-rep\">\n<li>\n<p>Update your dist repository:\n<code>apt update &amp;&amp; apt upgrade -y</code></p>\n</li>\n<li>\n<p>Install Wireguard:\n<code>apt install wireguard -y</code></p>\n</li>\n<li>\n<p>Create a new Wireguard key:\n<code>wg genkey | tee /etc/wireguard/privatekey | wg pubkey &gt; /etc/wireguard/publickey</code></p>\n<p>Save the output of these two files:\nPrivate Key: for server configuration.\nPublic Key: for client (your PC/phone).</p>\n</li>\n<li>\n<p>Create a configuration:\n<code>nano /etc/wireguard/wg0.conf</code></p>\n</li>\n<li>\n<p>Fill conf file with:</p>\n</li>\n</ol>\n<pre id=\"bkmrk-privatekey-%3D-%3Cprivat\"><code class=\"language-[Interface]\">PrivateKey = &lt;PRIVATE_KEY_VPS&gt;\nAddress = 10.200.200.1/24\nListenPort = 51820\nPostUp = iptables -A FORWARD -i wg0 -j ACCEPT; iptables -t nat -A POSTROUTING -o eth0 -j MASQUERADE\nPostDown = iptables -D FORWARD -i wg0 -j ACCEPT; iptables -t nat -D POSTROUTING -o eth0 -j MASQUERADE\n\n[Peer]\nPublicKey = &lt;PUBLIC_KEY_CLIENT&gt;\nAllowedIPs = 10.200.200.2/32\n</code></pre>\n<ol start=\"6\" id=\"bkmrk-run-the-wireguard\">\n<li>Run the wireguard</li>\n</ol>\n<p id=\"bkmrk-wg-quick-up-wg0-syst\"><code>wg-quick up wg0</code>\n<code>systemctl enable wg-quick@wg0</code></p>\n<p id=\"bkmrk-if-you-using-ufw%2C-pl\">If you using ufw, please open the port:\n<code>ufw allow 51820/udp</code>\n<code>ufw reload</code></p>\n<ol start=\"7\" id=\"bkmrk-download-client-app-\">\n<li>Download client app from official website, <a href=\"https://www.wireguard.com/\">wireguard.com</a>.\nFill the configuration with:</li>\n</ol>\n<pre id=\"bkmrk-%5Binterface%5D-privatek\"><code>[Interface]\nPrivateKey = &lt;PRIVATE_KEY_CLIENT&gt;\nAddress = 10.200.200.2/24\nDNS = 8.8.8.8\n\n[Peer]\nPublicKey = &lt;PUBLIC_KEY_VPS&gt;\nEndpoint = &lt;IP_VPS&gt;:51820\nAllowedIPs = 0.0.0.0/0, ::/0\nPersistentKeepalive = 25\n</code></pre>\n<ol start=\"8\" id=\"bkmrk-add-the-new-line-in-\">\n<li>Add the new line in config.yaml Hysteria:</li>\n</ol>\n<pre id=\"bkmrk-masquerade%3A-10.200.2\"><code>masquerade: 10.200.200.2\n</code></pre>\n<p id=\"bkmrk-or-run-this-command-\">Or run this command to route traffic from Hysteria to Wireguard:\n<code>iptables -t nat -A PREROUTING -p udp --dport 443 -j DNAT --to-destination 10.200.200.2</code></p>\n<ol start=\"9\" id=\"bkmrk-run-ping-test-ping-%3C\">\n<li>Run ping test\n<code>ping &lt;Game_Server_IPs&gt; -t</code>\nTraceroute\n<code>traceroute &lt;Game_Server_IPs&gt;</code></li>\n</ol>\n','\n\nUpdate your dist repository:\napt update && apt upgrade -y\n\n\nInstall Wireguard:\napt install wireguard -y\n\n\nCreate a new Wireguard key:\nwg genkey | tee /etc/wireguard/privatekey | wg pubkey > /etc/wireguard/publickey\nSave the output of these two files:\nPrivate Key: for server configuration.\nPublic Key: for client (your PC/phone).\n\n\nCreate a configuration:\nnano /etc/wireguard/wg0.conf\n\n\nFill conf file with:\n\n\nPrivateKey = <PRIVATE_KEY_VPS>\nAddress = 10.200.200.1/24\nListenPort = 51820\nPostUp = iptables -A FORWARD -i wg0 -j ACCEPT; iptables -t nat -A POSTROUTING -o eth0 -j MASQUERADE\nPostDown = iptables -D FORWARD -i wg0 -j ACCEPT; iptables -t nat -D POSTROUTING -o eth0 -j MASQUERADE\n\n[Peer]\nPublicKey = <PUBLIC_KEY_CLIENT>\nAllowedIPs = 10.200.200.2/32\n\n\nRun the wireguard\n\nwg-quick up wg0\nsystemctl enable wg-quick@wg0\nIf you using ufw, please open the port:\nufw allow 51820/udp\nufw reload\n\nDownload client app from official website, wireguard.com.\nFill the configuration with:\n\n[Interface]\nPrivateKey = <PRIVATE_KEY_CLIENT>\nAddress = 10.200.200.2/24\nDNS = 8.8.8.8\n\n[Peer]\nPublicKey = <PUBLIC_KEY_VPS>\nEndpoint = <IP_VPS>:51820\nAllowedIPs = 0.0.0.0/0, ::/0\nPersistentKeepalive = 25\n\n\nAdd the new line in config.yaml Hysteria:\n\nmasquerade: 10.200.200.2\n\nOr run this command to route traffic from Hysteria to Wireguard:\niptables -t nat -A PREROUTING -p udp --dport 443 -j DNAT --to-destination 10.200.200.2\n\nRun ping test\nping <Game_Server_IPs> -t\nTraceroute\ntraceroute <Game_Server_IPs>\n\n',1,'2025-02-24 16:17:31','2025-02-24 16:17:31','configure-wireguard-relay-on-vps','how-to-configure-hysteria2-serverwireguard-relay-for-gaming','version','1. Update your dist repository:\r\n   ```apt update && apt upgrade -y```\r\n\r\n2. Install Wireguard:\r\n   ```apt install wireguard -y```\r\n\r\n3. Create a new Wireguard key:\r\n   ```wg genkey | tee /etc/wireguard/privatekey | wg pubkey > /etc/wireguard/publickey```\r\n\r\n   Save the output of these two files:\r\nPrivate Key: for server configuration.\r\nPublic Key: for client (your PC/phone).\r\n\r\n4. Create a configuration:\r\n```nano /etc/wireguard/wg0.conf```\r\n\r\n5. Fill conf file with:\r\n```[Interface]\r\nPrivateKey = <PRIVATE_KEY_VPS>\r\nAddress = 10.200.200.1/24\r\nListenPort = 51820\r\nPostUp = iptables -A FORWARD -i wg0 -j ACCEPT; iptables -t nat -A POSTROUTING -o eth0 -j MASQUERADE\r\nPostDown = iptables -D FORWARD -i wg0 -j ACCEPT; iptables -t nat -D POSTROUTING -o eth0 -j MASQUERADE\r\n\r\n[Peer]\r\nPublicKey = <PUBLIC_KEY_CLIENT>\r\nAllowedIPs = 10.200.200.2/32\r\n```\r\n\r\n6. Run the wireguard\r\n\r\n```wg-quick up wg0```\r\n```systemctl enable wg-quick@wg0```\r\n\r\nIf you using ufw, please open the port:\r\n```ufw allow 51820/udp```\r\n```ufw reload```\r\n\r\n7. Download client app from official website, [wireguard.com](https://www.wireguard.com/).\r\nFill the configuration with:\r\n```\r\n[Interface]\r\nPrivateKey = <PRIVATE_KEY_CLIENT>\r\nAddress = 10.200.200.2/24\r\nDNS = 8.8.8.8\r\n\r\n[Peer]\r\nPublicKey = <PUBLIC_KEY_VPS>\r\nEndpoint = <IP_VPS>:51820\r\nAllowedIPs = 0.0.0.0/0, ::/0\r\nPersistentKeepalive = 25\r\n```\r\n\r\n8. Add the new line in config.yaml Hysteria:\r\n```\r\nmasquerade: 10.200.200.2\r\n```\r\nOr run this command to route traffic from Hysteria to Wireguard:\r\n```iptables -t nat -A PREROUTING -p udp --dport 443 -j DNAT --to-destination 10.200.200.2```\r\n\r\n9. Run ping test\r\n```ping <Game_Server_IPs> -t```\r\nTraceroute\r\n```traceroute <Game_Server_IPs>```','',9),
(58,6,'Configure Wireguard Relay on VPS','<ol id=\"bkmrk-update-your-dist-rep\">\n<li>\n<p>Update your dist repository:\n<code>apt update &amp;&amp; apt upgrade -y</code></p>\n</li>\n<li>\n<p>Install Wireguard:\n<code>apt install wireguard -y</code></p>\n</li>\n<li>\n<p>Create a new Wireguard key:\n<code>wg genkey | tee /etc/wireguard/privatekey | wg pubkey &gt; /etc/wireguard/publickey</code></p>\n<p>Save the output of these two files:\nPrivate Key: for server configuration.\nPublic Key: for client (your PC/phone).</p>\n</li>\n<li>\n<p>Create a configuration:\n<code>nano /etc/wireguard/wg0.conf</code></p>\n</li>\n<li>\n<p>Fill conf file with:</p>\n</li>\n</ol>\n<pre id=\"bkmrk-%5Binterface%5D-privatek\"><code>[Interface]\nPrivateKey = &lt;PRIVATE_KEY_VPS&gt;\nAddress = 10.200.200.1/24\nListenPort = 51820\nPostUp = iptables -A FORWARD -i wg0 -j ACCEPT; iptables -t nat -A POSTROUTING -o eth0 -j MASQUERADE\nPostDown = iptables -D FORWARD -i wg0 -j ACCEPT; iptables -t nat -D POSTROUTING -o eth0 -j MASQUERADE\n\n[Peer]\nPublicKey = &lt;PUBLIC_KEY_CLIENT&gt;\nAllowedIPs = 10.200.200.2/32\n</code></pre>\n<ol start=\"6\" id=\"bkmrk-run-the-wireguard\">\n<li>Run the wireguard</li>\n</ol>\n<p id=\"bkmrk-wg-quick-up-wg0-syst\"><code>wg-quick up wg0</code>\n<code>systemctl enable wg-quick@wg0</code></p>\n<p id=\"bkmrk-if-you-using-ufw%2C-pl\">If you using ufw, please open the port:\n<code>ufw allow 51820/udp</code>\n<code>ufw reload</code></p>\n<ol start=\"7\" id=\"bkmrk-download-client-app-\">\n<li>Download client app from official website, <a href=\"https://www.wireguard.com/\">wireguard.com</a>.\nFill the configuration with:</li>\n</ol>\n<pre id=\"bkmrk-%5Binterface%5D-privatek-1\"><code>[Interface]\nPrivateKey = &lt;PRIVATE_KEY_CLIENT&gt;\nAddress = 10.200.200.2/24\nDNS = 8.8.8.8\n\n[Peer]\nPublicKey = &lt;PUBLIC_KEY_VPS&gt;\nEndpoint = &lt;IP_VPS&gt;:51820\nAllowedIPs = 0.0.0.0/0, ::/0\nPersistentKeepalive = 25\n</code></pre>\n<ol start=\"8\" id=\"bkmrk-add-the-new-line-in-\">\n<li>Add the new line in config.yaml Hysteria:</li>\n</ol>\n<pre id=\"bkmrk-masquerade%3A-10.200.2\"><code>masquerade: 10.200.200.2\n</code></pre>\n<p id=\"bkmrk-or-run-this-command-\">Or run this command to route traffic from Hysteria to Wireguard:\n<code>iptables -t nat -A PREROUTING -p udp --dport 443 -j DNAT --to-destination 10.200.200.2</code></p>\n<ol start=\"9\" id=\"bkmrk-run-ping-test-ping-%3C\">\n<li>Run ping test\n<code>ping &lt;Game_Server_IPs&gt; -t</code>\nTraceroute\n<code>traceroute &lt;Game_Server_IPs&gt;</code></li>\n</ol>\n','\n\nUpdate your dist repository:\napt update && apt upgrade -y\n\n\nInstall Wireguard:\napt install wireguard -y\n\n\nCreate a new Wireguard key:\nwg genkey | tee /etc/wireguard/privatekey | wg pubkey > /etc/wireguard/publickey\nSave the output of these two files:\nPrivate Key: for server configuration.\nPublic Key: for client (your PC/phone).\n\n\nCreate a configuration:\nnano /etc/wireguard/wg0.conf\n\n\nFill conf file with:\n\n\n[Interface]\nPrivateKey = <PRIVATE_KEY_VPS>\nAddress = 10.200.200.1/24\nListenPort = 51820\nPostUp = iptables -A FORWARD -i wg0 -j ACCEPT; iptables -t nat -A POSTROUTING -o eth0 -j MASQUERADE\nPostDown = iptables -D FORWARD -i wg0 -j ACCEPT; iptables -t nat -D POSTROUTING -o eth0 -j MASQUERADE\n\n[Peer]\nPublicKey = <PUBLIC_KEY_CLIENT>\nAllowedIPs = 10.200.200.2/32\n\n\nRun the wireguard\n\nwg-quick up wg0\nsystemctl enable wg-quick@wg0\nIf you using ufw, please open the port:\nufw allow 51820/udp\nufw reload\n\nDownload client app from official website, wireguard.com.\nFill the configuration with:\n\n[Interface]\nPrivateKey = <PRIVATE_KEY_CLIENT>\nAddress = 10.200.200.2/24\nDNS = 8.8.8.8\n\n[Peer]\nPublicKey = <PUBLIC_KEY_VPS>\nEndpoint = <IP_VPS>:51820\nAllowedIPs = 0.0.0.0/0, ::/0\nPersistentKeepalive = 25\n\n\nAdd the new line in config.yaml Hysteria:\n\nmasquerade: 10.200.200.2\n\nOr run this command to route traffic from Hysteria to Wireguard:\niptables -t nat -A PREROUTING -p udp --dport 443 -j DNAT --to-destination 10.200.200.2\n\nRun ping test\nping <Game_Server_IPs> -t\nTraceroute\ntraceroute <Game_Server_IPs>\n\n',1,'2025-02-24 16:24:37','2025-02-24 16:24:37','configure-wireguard-relay-on-vps','how-to-configure-hysteria2-serverwireguard-relay-for-gaming','version','1. Update your dist repository:\r\n   ```apt update && apt upgrade -y```\r\n\r\n2. Install Wireguard:\r\n   ```apt install wireguard -y```\r\n\r\n3. Create a new Wireguard key:\r\n   ```wg genkey | tee /etc/wireguard/privatekey | wg pubkey > /etc/wireguard/publickey```\r\n\r\n   Save the output of these two files:\r\nPrivate Key: for server configuration.\r\nPublic Key: for client (your PC/phone).\r\n\r\n4. Create a configuration:\r\n```nano /etc/wireguard/wg0.conf```\r\n\r\n5. Fill conf file with:\r\n```\r\n[Interface]\r\nPrivateKey = <PRIVATE_KEY_VPS>\r\nAddress = 10.200.200.1/24\r\nListenPort = 51820\r\nPostUp = iptables -A FORWARD -i wg0 -j ACCEPT; iptables -t nat -A POSTROUTING -o eth0 -j MASQUERADE\r\nPostDown = iptables -D FORWARD -i wg0 -j ACCEPT; iptables -t nat -D POSTROUTING -o eth0 -j MASQUERADE\r\n\r\n[Peer]\r\nPublicKey = <PUBLIC_KEY_CLIENT>\r\nAllowedIPs = 10.200.200.2/32\r\n```\r\n\r\n6. Run the wireguard\r\n\r\n```wg-quick up wg0```\r\n```systemctl enable wg-quick@wg0```\r\n\r\nIf you using ufw, please open the port:\r\n```ufw allow 51820/udp```\r\n```ufw reload```\r\n\r\n7. Download client app from official website, [wireguard.com](https://www.wireguard.com/).\r\nFill the configuration with:\r\n```\r\n[Interface]\r\nPrivateKey = <PRIVATE_KEY_CLIENT>\r\nAddress = 10.200.200.2/24\r\nDNS = 8.8.8.8\r\n\r\n[Peer]\r\nPublicKey = <PUBLIC_KEY_VPS>\r\nEndpoint = <IP_VPS>:51820\r\nAllowedIPs = 0.0.0.0/0, ::/0\r\nPersistentKeepalive = 25\r\n```\r\n\r\n8. Add the new line in config.yaml Hysteria:\r\n```\r\nmasquerade: 10.200.200.2\r\n```\r\nOr run this command to route traffic from Hysteria to Wireguard:\r\n```iptables -t nat -A PREROUTING -p udp --dport 443 -j DNAT --to-destination 10.200.200.2```\r\n\r\n9. Run ping test\r\n```ping <Game_Server_IPs> -t```\r\nTraceroute\r\n```traceroute <Game_Server_IPs>```','',10),
(59,6,'Configure Wireguard Relay on VPS','<ol id=\"bkmrk-update-your-dist-rep\">\n<li>\n<p>Update your dist repository:\n<code>apt update &amp;&amp; apt upgrade -y</code></p>\n</li>\n<li>\n<p>Install Wireguard:\n<code>apt install wireguard -y</code></p>\n</li>\n<li>\n<p>Create a new Wireguard key:\n<code>wg genkey | tee /etc/wireguard/privatekey | wg pubkey &gt; /etc/wireguard/publickey</code></p>\n<p>Save the output of these two files:\nPrivate Key: for server configuration.\nPublic Key: for client (your PC/phone).</p>\n</li>\n<li>\n<p>Create a configuration:\n<code>nano /etc/wireguard/wg0.conf</code></p>\n</li>\n<li>\n<p>Fill conf file with:</p>\n</li>\n</ol>\n<pre id=\"bkmrk-%5Binterface%5D-privatek\"><code>[Interface]\nPrivateKey = &lt;PRIVATE_KEY_VPS&gt;\nAddress = 10.200.200.1/24\nListenPort = 51820\nPostUp = iptables -A FORWARD -i wg0 -j ACCEPT; iptables -t nat -A POSTROUTING -o eth0 -j MASQUERADE\nPostDown = iptables -D FORWARD -i wg0 -j ACCEPT; iptables -t nat -D POSTROUTING -o eth0 -j MASQUERADE\n\n[Peer]\nPublicKey = &lt;PUBLIC_KEY_CLIENT&gt;\nAllowedIPs = 10.200.200.2/32\n</code></pre>\n<ol start=\"6\" id=\"bkmrk-run-the-wireguard\">\n<li>Run the wireguard</li>\n</ol>\n<p id=\"bkmrk-wg-quick-up-wg0-syst\"><code>wg-quick up wg0</code>\n<code>systemctl enable wg-quick@wg0</code></p>\n<p id=\"bkmrk-if-you-using-ufw%2C-pl\">If you using ufw, please open the port:\n<code>ufw allow 51820/udp</code>\n<code>ufw reload</code></p>\n<ol start=\"7\" id=\"bkmrk-download-client-app-\">\n<li>Download client app from official website, <a href=\"https://www.wireguard.com/\">wireguard.com</a>.\nFill the configuration with:</li>\n</ol>\n<pre id=\"bkmrk-%5Binterface%5D-privatek-1\"><code>[Interface]\nPrivateKey = &lt;PRIVATE_KEY_CLIENT&gt;\nAddress = 10.200.200.2/24\nDNS = 8.8.8.8\n\n[Peer]\nPublicKey = &lt;PUBLIC_KEY_VPS&gt;\nEndpoint = &lt;IP_VPS&gt;:51820\nAllowedIPs = 0.0.0.0/0, ::/0\nPersistentKeepalive = 25\n</code></pre>\n<ol start=\"8\" id=\"bkmrk-add-the-new-line-in-\">\n<li>Add the new line in config.yaml Hysteria:</li>\n</ol>\n<pre id=\"bkmrk-forward%3A---local_add\"><code>forward:\n  - local_addr: 127.0.0.1:51820  # WireGuard port lokal\n    remote_addr: 10.200.200.1:51820\n</code></pre>\n<p id=\"bkmrk-or-run-this-command-\">Or run this command to route traffic from Hysteria to Wireguard:\n<code>iptables -t nat -A PREROUTING -p udp --dport 443 -j DNAT --to-destination 10.200.200.2</code></p>\n<ol start=\"9\" id=\"bkmrk-run-ping-test-ping-%3C\">\n<li>Run ping test\n<code>ping &lt;Game_Server_IPs&gt; -t</code>\nTraceroute\n<code>traceroute &lt;Game_Server_IPs&gt;</code></li>\n</ol>\n','\n\nUpdate your dist repository:\napt update && apt upgrade -y\n\n\nInstall Wireguard:\napt install wireguard -y\n\n\nCreate a new Wireguard key:\nwg genkey | tee /etc/wireguard/privatekey | wg pubkey > /etc/wireguard/publickey\nSave the output of these two files:\nPrivate Key: for server configuration.\nPublic Key: for client (your PC/phone).\n\n\nCreate a configuration:\nnano /etc/wireguard/wg0.conf\n\n\nFill conf file with:\n\n\n[Interface]\nPrivateKey = <PRIVATE_KEY_VPS>\nAddress = 10.200.200.1/24\nListenPort = 51820\nPostUp = iptables -A FORWARD -i wg0 -j ACCEPT; iptables -t nat -A POSTROUTING -o eth0 -j MASQUERADE\nPostDown = iptables -D FORWARD -i wg0 -j ACCEPT; iptables -t nat -D POSTROUTING -o eth0 -j MASQUERADE\n\n[Peer]\nPublicKey = <PUBLIC_KEY_CLIENT>\nAllowedIPs = 10.200.200.2/32\n\n\nRun the wireguard\n\nwg-quick up wg0\nsystemctl enable wg-quick@wg0\nIf you using ufw, please open the port:\nufw allow 51820/udp\nufw reload\n\nDownload client app from official website, wireguard.com.\nFill the configuration with:\n\n[Interface]\nPrivateKey = <PRIVATE_KEY_CLIENT>\nAddress = 10.200.200.2/24\nDNS = 8.8.8.8\n\n[Peer]\nPublicKey = <PUBLIC_KEY_VPS>\nEndpoint = <IP_VPS>:51820\nAllowedIPs = 0.0.0.0/0, ::/0\nPersistentKeepalive = 25\n\n\nAdd the new line in config.yaml Hysteria:\n\nforward:\n  - local_addr: 127.0.0.1:51820  # WireGuard port lokal\n    remote_addr: 10.200.200.1:51820\n\nOr run this command to route traffic from Hysteria to Wireguard:\niptables -t nat -A PREROUTING -p udp --dport 443 -j DNAT --to-destination 10.200.200.2\n\nRun ping test\nping <Game_Server_IPs> -t\nTraceroute\ntraceroute <Game_Server_IPs>\n\n',1,'2025-02-24 16:37:25','2025-02-24 16:37:25','configure-wireguard-relay-on-vps','how-to-configure-hysteria2-serverwireguard-relay-for-gaming','version','1. Update your dist repository:\r\n   ```apt update && apt upgrade -y```\r\n\r\n2. Install Wireguard:\r\n   ```apt install wireguard -y```\r\n\r\n3. Create a new Wireguard key:\r\n   ```wg genkey | tee /etc/wireguard/privatekey | wg pubkey > /etc/wireguard/publickey```\r\n\r\n   Save the output of these two files:\r\nPrivate Key: for server configuration.\r\nPublic Key: for client (your PC/phone).\r\n\r\n4. Create a configuration:\r\n```nano /etc/wireguard/wg0.conf```\r\n\r\n5. Fill conf file with:\r\n```\r\n[Interface]\r\nPrivateKey = <PRIVATE_KEY_VPS>\r\nAddress = 10.200.200.1/24\r\nListenPort = 51820\r\nPostUp = iptables -A FORWARD -i wg0 -j ACCEPT; iptables -t nat -A POSTROUTING -o eth0 -j MASQUERADE\r\nPostDown = iptables -D FORWARD -i wg0 -j ACCEPT; iptables -t nat -D POSTROUTING -o eth0 -j MASQUERADE\r\n\r\n[Peer]\r\nPublicKey = <PUBLIC_KEY_CLIENT>\r\nAllowedIPs = 10.200.200.2/32\r\n```\r\n\r\n6. Run the wireguard\r\n\r\n```wg-quick up wg0```\r\n```systemctl enable wg-quick@wg0```\r\n\r\nIf you using ufw, please open the port:\r\n```ufw allow 51820/udp```\r\n```ufw reload```\r\n\r\n7. Download client app from official website, [wireguard.com](https://www.wireguard.com/).\r\nFill the configuration with:\r\n```\r\n[Interface]\r\nPrivateKey = <PRIVATE_KEY_CLIENT>\r\nAddress = 10.200.200.2/24\r\nDNS = 8.8.8.8\r\n\r\n[Peer]\r\nPublicKey = <PUBLIC_KEY_VPS>\r\nEndpoint = <IP_VPS>:51820\r\nAllowedIPs = 0.0.0.0/0, ::/0\r\nPersistentKeepalive = 25\r\n```\r\n\r\n8. Add the new line in config.yaml Hysteria:\r\n```\r\nforward:\r\n  - local_addr: 127.0.0.1:51820  # WireGuard port lokal\r\n    remote_addr: 10.200.200.1:51820\r\n```\r\nOr run this command to route traffic from Hysteria to Wireguard:\r\n```iptables -t nat -A PREROUTING -p udp --dport 443 -j DNAT --to-destination 10.200.200.2```\r\n\r\n9. Run ping test\r\n```ping <Game_Server_IPs> -t```\r\nTraceroute\r\n```traceroute <Game_Server_IPs>```','',11),
(61,6,'Configure Wireguard Relay on VPS','<ol id=\"bkmrk-update-your-dist-rep\">\n<li>\n<p>Update your dist repository:\n<code>apt update &amp;&amp; apt upgrade -y</code></p>\n</li>\n<li>\n<p>Install Wireguard:\n<code>apt install wireguard -y</code></p>\n</li>\n<li>\n<p>Create a new Wireguard key:\n<code>wg genkey | tee /etc/wireguard/privatekey | wg pubkey &gt; /etc/wireguard/publickey</code></p>\n<p>Save the output of these two files:\nPrivate Key: for server configuration.\nPublic Key: for client (your PC/phone).</p>\n</li>\n<li>\n<p>Create a configuration:\n<code>nano /etc/wireguard/wg0.conf</code></p>\n</li>\n<li>\n<p>Fill conf file with:</p>\n</li>\n</ol>\n<pre id=\"bkmrk-%5Binterface%5D-privatek\"><code>[Interface]\nPrivateKey = &lt;PRIVATE_KEY_VPS&gt;\nAddress = 10.200.200.1/24\nListenPort = 51820\nPostUp = iptables -A FORWARD -i wg0 -j ACCEPT; iptables -t nat -A POSTROUTING -o eth0 -j MASQUERADE\nPostDown = iptables -D FORWARD -i wg0 -j ACCEPT; iptables -t nat -D POSTROUTING -o eth0 -j MASQUERADE\n\n[Peer]\nPublicKey = &lt;PUBLIC_KEY_CLIENT&gt;\nAllowedIPs = 10.200.200.2/32\n</code></pre>\n<ol start=\"6\" id=\"bkmrk-run-the-wireguard\">\n<li>Run the wireguard</li>\n</ol>\n<p id=\"bkmrk-wg-quick-up-wg0-syst\"><code>wg-quick up wg0</code>\n<code>systemctl enable wg-quick@wg0</code></p>\n<p id=\"bkmrk-if-you-using-ufw%2C-pl\">If you using ufw, please open the port:\n<code>ufw allow 51820/udp</code>\n<code>ufw reload</code></p>\n<ol start=\"7\" id=\"bkmrk-download-client-app-\">\n<li>Download client app from official website, <a href=\"https://www.wireguard.com/\">wireguard.com</a>.\nFill the configuration with:</li>\n</ol>\n<pre id=\"bkmrk-%5Binterface%5D-privatek-1\"><code>[Interface]\nPrivateKey = &lt;PRIVATE_KEY_CLIENT&gt;\nAddress = 10.200.200.2/24\nDNS = 8.8.8.8\n\n[Peer]\nPublicKey = &lt;PUBLIC_KEY_VPS&gt;\nEndpoint = &lt;IP_VPS&gt;:51820\nAllowedIPs = 0.0.0.0/0, ::/0\nPersistentKeepalive = 25\n</code></pre>\n<ol start=\"8\" id=\"bkmrk-add-the-new-line-in-\">\n<li>Add the new line in config.yaml Hysteria:</li>\n</ol>\n<pre id=\"bkmrk-forward%3A---local_add\"><code>forward:\n  - local_addr: 127.0.0.1:51820  # WireGuard port lokal\n    remote_addr: 10.200.200.1:51820\n</code></pre>\n<p id=\"bkmrk-or-run-this-command-\">Or run this command to route traffic from Hysteria to Wireguard:\n<code>iptables -t nat -A PREROUTING -p udp --dport 443 -j DNAT --to-destination 10.200.200.2</code></p>\n<ol start=\"9\" id=\"bkmrk-start-your-client-ap\">\n<li>Start your client app. Run ping test\n<code>ping &lt;Game_Server_IPs&gt; -t</code>\nTraceroute\n<code>traceroute &lt;Game_Server_IPs&gt;</code></li>\n</ol>\n','\n\nUpdate your dist repository:\napt update && apt upgrade -y\n\n\nInstall Wireguard:\napt install wireguard -y\n\n\nCreate a new Wireguard key:\nwg genkey | tee /etc/wireguard/privatekey | wg pubkey > /etc/wireguard/publickey\nSave the output of these two files:\nPrivate Key: for server configuration.\nPublic Key: for client (your PC/phone).\n\n\nCreate a configuration:\nnano /etc/wireguard/wg0.conf\n\n\nFill conf file with:\n\n\n[Interface]\nPrivateKey = <PRIVATE_KEY_VPS>\nAddress = 10.200.200.1/24\nListenPort = 51820\nPostUp = iptables -A FORWARD -i wg0 -j ACCEPT; iptables -t nat -A POSTROUTING -o eth0 -j MASQUERADE\nPostDown = iptables -D FORWARD -i wg0 -j ACCEPT; iptables -t nat -D POSTROUTING -o eth0 -j MASQUERADE\n\n[Peer]\nPublicKey = <PUBLIC_KEY_CLIENT>\nAllowedIPs = 10.200.200.2/32\n\n\nRun the wireguard\n\nwg-quick up wg0\nsystemctl enable wg-quick@wg0\nIf you using ufw, please open the port:\nufw allow 51820/udp\nufw reload\n\nDownload client app from official website, wireguard.com.\nFill the configuration with:\n\n[Interface]\nPrivateKey = <PRIVATE_KEY_CLIENT>\nAddress = 10.200.200.2/24\nDNS = 8.8.8.8\n\n[Peer]\nPublicKey = <PUBLIC_KEY_VPS>\nEndpoint = <IP_VPS>:51820\nAllowedIPs = 0.0.0.0/0, ::/0\nPersistentKeepalive = 25\n\n\nAdd the new line in config.yaml Hysteria:\n\nforward:\n  - local_addr: 127.0.0.1:51820  # WireGuard port lokal\n    remote_addr: 10.200.200.1:51820\n\nOr run this command to route traffic from Hysteria to Wireguard:\niptables -t nat -A PREROUTING -p udp --dport 443 -j DNAT --to-destination 10.200.200.2\n\nStart your client app. Run ping test\nping <Game_Server_IPs> -t\nTraceroute\ntraceroute <Game_Server_IPs>\n\n',1,'2025-02-24 16:38:24','2025-02-24 16:38:24','configure-wireguard-relay-on-vps','how-to-configure-hysteria2-serverwireguard-relay-for-gaming','version','1. Update your dist repository:\r\n   ```apt update && apt upgrade -y```\r\n\r\n2. Install Wireguard:\r\n   ```apt install wireguard -y```\r\n\r\n3. Create a new Wireguard key:\r\n   ```wg genkey | tee /etc/wireguard/privatekey | wg pubkey > /etc/wireguard/publickey```\r\n\r\n   Save the output of these two files:\r\nPrivate Key: for server configuration.\r\nPublic Key: for client (your PC/phone).\r\n\r\n4. Create a configuration:\r\n```nano /etc/wireguard/wg0.conf```\r\n\r\n5. Fill conf file with:\r\n```\r\n[Interface]\r\nPrivateKey = <PRIVATE_KEY_VPS>\r\nAddress = 10.200.200.1/24\r\nListenPort = 51820\r\nPostUp = iptables -A FORWARD -i wg0 -j ACCEPT; iptables -t nat -A POSTROUTING -o eth0 -j MASQUERADE\r\nPostDown = iptables -D FORWARD -i wg0 -j ACCEPT; iptables -t nat -D POSTROUTING -o eth0 -j MASQUERADE\r\n\r\n[Peer]\r\nPublicKey = <PUBLIC_KEY_CLIENT>\r\nAllowedIPs = 10.200.200.2/32\r\n```\r\n\r\n6. Run the wireguard\r\n\r\n```wg-quick up wg0```\r\n```systemctl enable wg-quick@wg0```\r\n\r\nIf you using ufw, please open the port:\r\n```ufw allow 51820/udp```\r\n```ufw reload```\r\n\r\n7. Download client app from official website, [wireguard.com](https://www.wireguard.com/).\r\nFill the configuration with:\r\n```\r\n[Interface]\r\nPrivateKey = <PRIVATE_KEY_CLIENT>\r\nAddress = 10.200.200.2/24\r\nDNS = 8.8.8.8\r\n\r\n[Peer]\r\nPublicKey = <PUBLIC_KEY_VPS>\r\nEndpoint = <IP_VPS>:51820\r\nAllowedIPs = 0.0.0.0/0, ::/0\r\nPersistentKeepalive = 25\r\n```\r\n\r\n8. Add the new line in config.yaml Hysteria:\r\n```\r\nforward:\r\n  - local_addr: 127.0.0.1:51820  # WireGuard port lokal\r\n    remote_addr: 10.200.200.1:51820\r\n```\r\nOr run this command to route traffic from Hysteria to Wireguard:\r\n```iptables -t nat -A PREROUTING -p udp --dport 443 -j DNAT --to-destination 10.200.200.2```\r\n\r\n9. Start your client app. Run ping test\r\n```ping <Game_Server_IPs> -t```\r\nTraceroute\r\n```traceroute <Game_Server_IPs>```','',12),
(62,2,'Configure the Server','<ol id=\"bkmrk-install-to-latest-ve\">\n<li>Install to latest version:</li>\n</ol>\n<p id=\"bkmrk-bash-%3C%28curl--fssl-ht\"><code>bash &lt;(curl -fsSL https://get.hy2.sh/)</code></p>\n<p id=\"bkmrk-remove-and-uninstall\">Remove and uninstall:</p>\n<p id=\"bkmrk-bash-%3C%28curl--fssl-ht-1\"><code>bash &lt;(curl -fsSL https://get.hy2.sh/) --remove</code></p>\n<ol start=\"2\" id=\"bkmrk-in-home-directory%2C\">\n<li>In home directory,</li>\n</ol>\n<p id=\"bkmrk-mkdir-hysteria-cd-hy\"><code>mkdir hysteria</code>\n<code>cd hysteria</code>\n<code>nano config.yaml</code></p>\n<ol start=\"3\" id=\"bkmrk-fill-the-blank-yaml-\">\n<li>Fill the blank yaml file with:</li>\n</ol>\n<pre id=\"bkmrk-listen%3A-%3A443-protoco\"><code>listen: :443  \nprotocol: udp\n\nauth:\n  type: password\n  password: passwordtest\n\nobfs:\n  type: salamander \n  salamander:\n    password: cry_me_a_r1ver  \n\nacme:\n  domains:\n    - yourdomain.net\n  email: yourname@yourdomain.net\n\nmasquerade:\n  type: proxy\n  proxy:\n    url: https://www.cloudflare.com \n\nquic:\n  congestionControl: bbr   \n  idleTimeout: 60s         \n  maxIdleTimeout: 60s     \n  keepAlivePeriod: 10s     \n\nudp:\n  idleTimeout: 60s\n</code></pre>\n<p id=\"bkmrk-dont-forget-to-edit-\">Dont forget to edit the email, domain and password.</p>\n<ol start=\"4\" id=\"bkmrk-download-the-executa\">\n<li>\n<p>Download the executable file from this <a href=\"https://github.com/apernet/hysteria/releases\">link</a>.</p>\n<div drawio-diagram=\"4\"><img src=\"https://x2.znand.my.id/uploads/images/drawio/2025-02/3od1B7vKW08kPez3-drawing-1-1740234277.png\"></div>\n</li>\n</ol>\n<p id=\"bkmrk-in-this-example-i-us\">In this example i use hysteria-linux-amd64-avx\n<code>wget https://github.com/apernet/hysteria/releases/download/app%2Fv2.6.1/hysteria-linux-amd64-avx</code></p>\n<ol start=\"5\" id=\"bkmrk-run-the-server-sudo-\">\n<li>Run the server\n<code>sudo setcap cap_net_bind_service=+ep ./hysteria-linux-amd64-avx</code>\n<code>./hysteria-linux-amd64-avx server</code></li>\n</ol>\n<p id=\"bkmrk-if-you-got-this-erro\">If you got this error:</p>\n<div drawio-diagram=\"9\" id=\"bkmrk-\"><img src=\"https://x2.znand.my.id/uploads/images/drawio/2025-02/0w9r75mt6SG673Ac-drawing-1-1740236467.png\"></div>\n<p id=\"bkmrk-give-the-permission%3A\">Give the permission:\n<code>sudo chmod +x hysteria-linux-amd64-avx</code></p>\n<p id=\"bkmrk-and-you-should-get-t\">And you should get the problem solved and server is ready to be running.</p>\n<div drawio-diagram=\"10\" id=\"bkmrk--1\"><img src=\"https://x2.znand.my.id/uploads/images/drawio/2025-02/iafnjWw8NndOjO35-drawing-1-1740236636.png\"></div>\n<p id=\"bkmrk-also-you-will-got-th\">Also you will got the SSL Certificate from Acme and server is already running (listening on port 443):</p>\n<div drawio-diagram=\"11\" id=\"bkmrk--2\"><img src=\"https://x2.znand.my.id/uploads/images/drawio/2025-02/tGOhBjZBg7rqXkru-drawing-1-1740236802.png\"></div>\n<p id=\"bkmrk-if-you-want-to-run-t\">If you want to run the server from systemd, you can read the next page :).</p>\n','\nInstall to latest version:\n\nbash <(curl -fsSL https://get.hy2.sh/)\nRemove and uninstall:\nbash <(curl -fsSL https://get.hy2.sh/) --remove\n\nIn home directory,\n\nmkdir hysteria\ncd hysteria\nnano config.yaml\n\nFill the blank yaml file with:\n\nlisten: :443  \nprotocol: udp\n\nauth:\n  type: password\n  password: passwordtest\n\nobfs:\n  type: salamander \n  salamander:\n    password: cry_me_a_r1ver  \n\nacme:\n  domains:\n    - yourdomain.net\n  email: yourname@yourdomain.net\n\nmasquerade:\n  type: proxy\n  proxy:\n    url: https://www.cloudflare.com \n\nquic:\n  congestionControl: bbr   \n  idleTimeout: 60s         \n  maxIdleTimeout: 60s     \n  keepAlivePeriod: 10s     \n\nudp:\n  idleTimeout: 60s\n\nDont forget to edit the email, domain and password.\n\n\nDownload the executable file from this link.\n\n\n\nIn this example i use hysteria-linux-amd64-avx\nwget https://github.com/apernet/hysteria/releases/download/app%2Fv2.6.1/hysteria-linux-amd64-avx\n\nRun the server\nsudo setcap cap_net_bind_service=+ep ./hysteria-linux-amd64-avx\n./hysteria-linux-amd64-avx server\n\nIf you got this error:\n\nGive the permission:\nsudo chmod +x hysteria-linux-amd64-avx\nAnd you should get the problem solved and server is ready to be running.\n\nAlso you will got the SSL Certificate from Acme and server is already running (listening on port 443):\n\nIf you want to run the server from systemd, you can read the next page :).\n',1,'2025-03-01 09:36:18','2025-03-01 09:36:18','configure-the-server','how-to-configure-hysteria2-server-udp-forwarding','version','1. Install to latest version:\r\n\r\n```bash <(curl -fsSL https://get.hy2.sh/)```\r\n\r\n Remove and uninstall:\r\n\r\n```bash <(curl -fsSL https://get.hy2.sh/) --remove```\r\n\r\n2. In home directory, \r\n\r\n```mkdir hysteria```\r\n```cd hysteria```\r\n```nano config.yaml```\r\n\r\n3. Fill the blank yaml file with:\r\n\r\n```\r\nlisten: :443  \r\nprotocol: udp\r\n\r\nauth:\r\n  type: password\r\n  password: passwordtest\r\n\r\nobfs:\r\n  type: salamander \r\n  salamander:\r\n    password: cry_me_a_r1ver  \r\n\r\nacme:\r\n  domains:\r\n    - yourdomain.net\r\n  email: yourname@yourdomain.net\r\n\r\nmasquerade:\r\n  type: proxy\r\n  proxy:\r\n    url: https://www.cloudflare.com \r\n\r\nquic:\r\n  congestionControl: bbr   \r\n  idleTimeout: 60s         \r\n  maxIdleTimeout: 60s     \r\n  keepAlivePeriod: 10s     \r\n\r\nudp:\r\n  idleTimeout: 60s\r\n```\r\nDont forget to edit the email, domain and password.\r\n\r\n4. Download the executable file from this [link](https://github.com/apernet/hysteria/releases).\r\n\r\n   <div drawio-diagram=\"4\"><img src=\"https://x2.znand.my.id/uploads/images/drawio/2025-02/3od1B7vKW08kPez3-drawing-1-1740234277.png\"></div>\r\n\r\nIn this example i use hysteria-linux-amd64-avx\r\n```wget https://github.com/apernet/hysteria/releases/download/app%2Fv2.6.1/hysteria-linux-amd64-avx```\r\n\r\n5. Run the server\r\n```sudo setcap cap_net_bind_service=+ep ./hysteria-linux-amd64-avx```\r\n```./hysteria-linux-amd64-avx server```\r\n\r\nIf you got this error:\r\n<div drawio-diagram=\"9\"><img src=\"https://x2.znand.my.id/uploads/images/drawio/2025-02/0w9r75mt6SG673Ac-drawing-1-1740236467.png\"></div>\r\n\r\nGive the permission:\r\n```sudo chmod +x hysteria-linux-amd64-avx```\r\n\r\nAnd you should get the problem solved and server is ready to be running.\r\n<div drawio-diagram=\"10\"><img src=\"https://x2.znand.my.id/uploads/images/drawio/2025-02/iafnjWw8NndOjO35-drawing-1-1740236636.png\"></div>\r\n\r\nAlso you will got the SSL Certificate from Acme and server is already running (listening on port 443):\r\n<div drawio-diagram=\"11\"><img src=\"https://x2.znand.my.id/uploads/images/drawio/2025-02/tGOhBjZBg7rqXkru-drawing-1-1740236802.png\"></div>\r\n\r\nIf you want to run the server from systemd, you can read the next page :).','',13),
(63,7,'New Page','<ol id=\"bkmrk-clone-repository-nex\">\n<li>Clone repository Nextcloud:</li>\n</ol>\n<pre id=\"bkmrk-cd-%2Fvar%2Fwww%2Fnextclou\"><code class=\"language-git\">cd /var/www/nextcloud\n</code></pre>\n','\nClone repository Nextcloud:\n\ncd /var/www/nextcloud\n\n',1,'2025-03-02 01:07:42','2025-03-02 01:07:42','new-page','deploy-nextcloud-in-ubuntu-server-manually','version','1. Clone repository Nextcloud:\r\n```git clone https://github.com/nextcloud/server.git /var/www/nextcloud\r\ncd /var/www/nextcloud\r\n```','Initial publish',1),
(64,7,'New Page','<ol id=\"bkmrk-clone-repository-nex\">\n<li>Clone repository Nextcloud:</li>\n</ol>\n<pre id=\"bkmrk-git-clone-https%3A%2F%2Fgi\"><code>git clone https://github.com/nextcloud/server.git /var/www/nextcloud\ncd /var/www/nextcloud\n</code></pre>\n','\nClone repository Nextcloud:\n\ngit clone https://github.com/nextcloud/server.git /var/www/nextcloud\ncd /var/www/nextcloud\n\n',1,'2025-03-02 01:08:00','2025-03-02 01:08:00','new-page','deploy-nextcloud-in-ubuntu-server-manually','version','1. Clone repository Nextcloud:\r\n```\r\ngit clone https://github.com/nextcloud/server.git /var/www/nextcloud\r\ncd /var/www/nextcloud\r\n```','',2),
(66,7,'New Page','<ol id=\"bkmrk-clone-repository-nex\">\n<li>Clone repository Nextcloud:</li>\n</ol>\n<p id=\"bkmrk-git-clone-https%3A%2F%2Fgi\"><code>git clone https://github.com/nextcloud/server.git /var/www/nextcloud</code>\n<code>cd /var/www/nextcloud</code></p>\n<ol start=\"2\" id=\"bkmrk-give-the-permission-\">\n<li>Give the permission to folders:</li>\n</ol>\n<pre id=\"bkmrk-chmod--r-755-%2Fvar%2Fww\"><code class=\"language-chown\">chmod -R 755 /var/www/nextcloud```\n</code></pre>\n','\nClone repository Nextcloud:\n\ngit clone https://github.com/nextcloud/server.git /var/www/nextcloud\ncd /var/www/nextcloud\n\nGive the permission to folders:\n\nchmod -R 755 /var/www/nextcloud```\n\n',1,'2025-03-02 01:09:07','2025-03-02 01:09:07','new-page','deploy-nextcloud-in-ubuntu-server-manually','version','1. Clone repository Nextcloud:\r\n\r\n```git clone https://github.com/nextcloud/server.git /var/www/nextcloud```\r\n```cd /var/www/nextcloud```\r\n\r\n2. Give the permission to folders:\r\n\r\n```chown -R www-data:www-data /var/www/nextcloud\r\nchmod -R 755 /var/www/nextcloud```','',3),
(67,7,'New Page','<ol id=\"bkmrk-clone-repository-nex\">\n<li>Clone repository Nextcloud:</li>\n</ol>\n<p id=\"bkmrk-git-clone-https%3A%2F%2Fgi\"><code>git clone https://github.com/nextcloud/server.git /var/www/nextcloud</code>\n<code>cd /var/www/nextcloud</code></p>\n<ol start=\"2\" id=\"bkmrk-give-the-permission-\">\n<li>Give the permission to folders:</li>\n</ol>\n<pre id=\"bkmrk-chmod--r-755-%2Fvar%2Fww\"><code class=\"language-chown\">chmod -R 755 /var/www/nextcloud\n</code></pre>\n','\nClone repository Nextcloud:\n\ngit clone https://github.com/nextcloud/server.git /var/www/nextcloud\ncd /var/www/nextcloud\n\nGive the permission to folders:\n\nchmod -R 755 /var/www/nextcloud\n\n',1,'2025-03-02 01:09:19','2025-03-02 01:09:19','new-page','deploy-nextcloud-in-ubuntu-server-manually','version','1. Clone repository Nextcloud:\r\n\r\n```git clone https://github.com/nextcloud/server.git /var/www/nextcloud```\r\n```cd /var/www/nextcloud```\r\n\r\n2. Give the permission to folders:\r\n\r\n```chown -R www-data:www-data /var/www/nextcloud\r\nchmod -R 755 /var/www/nextcloud\r\n```','',4),
(68,7,'New Page','<ol id=\"bkmrk-clone-repository-nex\">\n<li>Clone repository Nextcloud:</li>\n</ol>\n<p id=\"bkmrk-git-clone-https%3A%2F%2Fgi\"><code>git clone https://github.com/nextcloud/server.git /var/www/nextcloud</code>\n<code>cd /var/www/nextcloud</code></p>\n<ol start=\"2\" id=\"bkmrk-give-the-permission-\">\n<li>Give the permission to folders:</li>\n</ol>\n<pre id=\"bkmrk-chmod--r-755-%2Fvar%2Fww\"><code class=\"language-chown\">chmod -R 755 /var/www/nextcloud ```\n</code></pre>\n','\nClone repository Nextcloud:\n\ngit clone https://github.com/nextcloud/server.git /var/www/nextcloud\ncd /var/www/nextcloud\n\nGive the permission to folders:\n\nchmod -R 755 /var/www/nextcloud ```\n\n',1,'2025-03-02 01:09:40','2025-03-02 01:09:40','new-page','deploy-nextcloud-in-ubuntu-server-manually','version','1. Clone repository Nextcloud:\r\n\r\n```git clone https://github.com/nextcloud/server.git /var/www/nextcloud```\r\n```cd /var/www/nextcloud```\r\n\r\n2. Give the permission to folders:\r\n\r\n``` chown -R www-data:www-data /var/www/nextcloud\r\nchmod -R 755 /var/www/nextcloud ```','',5),
(69,7,'New Page','<ol id=\"bkmrk-clone-repository-nex\">\n<li>Clone repository Nextcloud:</li>\n</ol>\n<p id=\"bkmrk-git-clone-https%3A%2F%2Fgi\"><code>git clone https://github.com/nextcloud/server.git /var/www/nextcloud</code>\n<code>cd /var/www/nextcloud</code></p>\n<ol start=\"2\" id=\"bkmrk-give-the-permission-\">\n<li>Give the permission to folders:</li>\n</ol>\n<pre id=\"bkmrk-chmod--r-755-%2Fvar%2Fww\"><code class=\"language-chown\">chmod -R 755 /var/www/nextcloud```\n</code></pre>\n','\nClone repository Nextcloud:\n\ngit clone https://github.com/nextcloud/server.git /var/www/nextcloud\ncd /var/www/nextcloud\n\nGive the permission to folders:\n\nchmod -R 755 /var/www/nextcloud```\n\n',1,'2025-03-02 01:10:09','2025-03-02 01:10:09','new-page','deploy-nextcloud-in-ubuntu-server-manually','version','1. Clone repository Nextcloud:\r\n\r\n```git clone https://github.com/nextcloud/server.git /var/www/nextcloud```\r\n```cd /var/www/nextcloud```\r\n\r\n2. Give the permission to folders:\r\n\r\n```chown -R www-data:www-data /var/www/nextcloud \r\nchmod -R 755 /var/www/nextcloud```','',6),
(71,7,'New Page','<ol id=\"bkmrk-clone-repository-nex\">\n<li>Clone repository Nextcloud:</li>\n</ol>\n<p id=\"bkmrk-git-clone-https%3A%2F%2Fgi\"><code>git clone https://github.com/nextcloud/server.git /var/www/nextcloud</code>\n<code>cd /var/www/nextcloud</code></p>\n<ol start=\"2\" id=\"bkmrk-give-the-permission-\">\n<li>Give the permission to folders:</li>\n</ol>\n<pre id=\"bkmrk-%60chown--r-www-data%3Aw\">\n`chown -R www-data:www-data /var/www/nextcloud`\n`chmod -R 755 /var/www/nextcloud`\n</pre>\n','\nClone repository Nextcloud:\n\ngit clone https://github.com/nextcloud/server.git /var/www/nextcloud\ncd /var/www/nextcloud\n\nGive the permission to folders:\n\n\n`chown -R www-data:www-data /var/www/nextcloud`\n`chmod -R 755 /var/www/nextcloud`\n\n',1,'2025-03-02 01:14:03','2025-03-02 01:14:03','new-page','deploy-nextcloud-in-ubuntu-server-manually','version','1. Clone repository Nextcloud:\r\n\r\n```git clone https://github.com/nextcloud/server.git /var/www/nextcloud```\r\n```cd /var/www/nextcloud```\r\n\r\n2. Give the permission to folders:\r\n\r\n<pre>\r\n`chown -R www-data:www-data /var/www/nextcloud`\r\n`chmod -R 755 /var/www/nextcloud`\r\n</pre>','',7),
(72,7,'New Page','<ol id=\"bkmrk-clone-repository-nex\">\n<li>Clone repository Nextcloud:</li>\n</ol>\n<p id=\"bkmrk-git-clone-https%3A%2F%2Fgi\"><code>git clone https://github.com/nextcloud/server.git /var/www/nextcloud</code>\n<code>cd /var/www/nextcloud</code></p>\n<ol start=\"2\" id=\"bkmrk-give-the-permission-\">\n<li>Give the permission to folders:</li>\n</ol>\n<pre id=\"bkmrk-chown--r-www-data%3Aww\">\nchown -R www-data:www-data /var/www/nextcloud\nchmod -R 755 /var/www/nextcloud\n</pre>\n','\nClone repository Nextcloud:\n\ngit clone https://github.com/nextcloud/server.git /var/www/nextcloud\ncd /var/www/nextcloud\n\nGive the permission to folders:\n\n\nchown -R www-data:www-data /var/www/nextcloud\nchmod -R 755 /var/www/nextcloud\n\n',1,'2025-03-02 01:14:17','2025-03-02 01:14:17','new-page','deploy-nextcloud-in-ubuntu-server-manually','version','1. Clone repository Nextcloud:\r\n\r\n```git clone https://github.com/nextcloud/server.git /var/www/nextcloud```\r\n```cd /var/www/nextcloud```\r\n\r\n2. Give the permission to folders:\r\n\r\n<pre>\r\nchown -R www-data:www-data /var/www/nextcloud\r\nchmod -R 755 /var/www/nextcloud\r\n</pre>','',8),
(73,7,'New Page','<ol id=\"bkmrk-clone-repository-nex\">\n<li>Clone repository Nextcloud:</li>\n</ol>\n<p id=\"bkmrk-git-clone-https%3A%2F%2Fgi\"><code>git clone https://github.com/nextcloud/server.git /var/www/nextcloud</code>\n<code>cd /var/www/nextcloud</code></p>\n<ol start=\"2\" id=\"bkmrk-give-the-permission-\">\n<li>Give the permission to folders:</li>\n</ol>\n<pre id=\"bkmrk-chown--r-www-data%3Aww\"><code>\nchown -R www-data:www-data /var/www/nextcloud\nchmod -R 755 /var/www/nextcloud\n</code></pre>\n','\nClone repository Nextcloud:\n\ngit clone https://github.com/nextcloud/server.git /var/www/nextcloud\ncd /var/www/nextcloud\n\nGive the permission to folders:\n\n\nchown -R www-data:www-data /var/www/nextcloud\nchmod -R 755 /var/www/nextcloud\n\n',1,'2025-03-02 01:14:44','2025-03-02 01:14:44','new-page','deploy-nextcloud-in-ubuntu-server-manually','version','1. Clone repository Nextcloud:\r\n\r\n```git clone https://github.com/nextcloud/server.git /var/www/nextcloud```\r\n```cd /var/www/nextcloud```\r\n\r\n2. Give the permission to folders:\r\n\r\n<pre><code>\r\nchown -R www-data:www-data /var/www/nextcloud\r\nchmod -R 755 /var/www/nextcloud\r\n</code></pre>','',9),
(75,7,'New Page','<ol id=\"bkmrk-clone-repository-nex\">\n<li>Clone repository Nextcloud:</li>\n</ol>\n<p id=\"bkmrk-git-clone-https%3A%2F%2Fgi\"><code>git clone https://github.com/nextcloud/server.git /var/www/nextcloud</code>\n<code>cd /var/www/nextcloud</code></p>\n<ol start=\"2\" id=\"bkmrk-give-the-permission-\">\n<li>Give the permission to folders:</li>\n</ol>\n<pre id=\"bkmrk-chown--r-www-data%3Aww\"><code class=\"language-sh\">chown -R www-data:www-data /var/www/nextcloud\nchmod -R 755 /var/www/nextcloud\n</code></pre>\n','\nClone repository Nextcloud:\n\ngit clone https://github.com/nextcloud/server.git /var/www/nextcloud\ncd /var/www/nextcloud\n\nGive the permission to folders:\n\nchown -R www-data:www-data /var/www/nextcloud\nchmod -R 755 /var/www/nextcloud\n\n',1,'2025-03-02 01:15:43','2025-03-02 01:15:43','new-page','deploy-nextcloud-in-ubuntu-server-manually','version','1. Clone repository Nextcloud:\r\n\r\n```git clone https://github.com/nextcloud/server.git /var/www/nextcloud```\r\n```cd /var/www/nextcloud```\r\n\r\n2. Give the permission to folders:\r\n\r\n```sh\r\nchown -R www-data:www-data /var/www/nextcloud\r\nchmod -R 755 /var/www/nextcloud\r\n```','',10),
(76,7,'New Page','<ol id=\"bkmrk-clone-repository-nex\">\n<li>Clone repository Nextcloud:</li>\n</ol>\n<p id=\"bkmrk-git-clone-https%3A%2F%2Fgi\"><code>git clone https://github.com/nextcloud/server.git /var/www/nextcloud</code>\n<code>cd /var/www/nextcloud</code></p>\n<ol start=\"2\" id=\"bkmrk-give-the-permission-\">\n<li>Give the permission to folders:</li>\n</ol>\n<pre id=\"bkmrk-chown--r-www-data%3Aww\"><code class=\"language-sh\">chown -R www-data:www-data /var/www/nextcloud\nchmod -R 755 /var/www/nextcloud\n</code></pre>\n','\nClone repository Nextcloud:\n\ngit clone https://github.com/nextcloud/server.git /var/www/nextcloud\ncd /var/www/nextcloud\n\nGive the permission to folders:\n\nchown -R www-data:www-data /var/www/nextcloud\nchmod -R 755 /var/www/nextcloud\n\n',1,'2025-03-02 01:16:09','2025-03-02 01:16:09','new-page','deploy-nextcloud-in-ubuntu-server-manually','version','1. Clone repository Nextcloud:\r\n\r\n```git clone https://github.com/nextcloud/server.git /var/www/nextcloud```\r\n```cd /var/www/nextcloud```\r\n\r\n2. Give the permission to folders:\r\n\r\n```sh\r\nchown -R www-data:www-data /var/www/nextcloud\r\nchmod -R 755 /var/www/nextcloud','',11),
(78,7,'New Page','<ol id=\"bkmrk-clone-repository-nex\">\n<li>Clone repository Nextcloud:</li>\n</ol>\n<p id=\"bkmrk-git-clone-https%3A%2F%2Fgi\"><code>git clone https://github.com/nextcloud/server.git /var/www/nextcloud```\ncd /var/www/nextcloud</code></p>\n<ol start=\"2\" id=\"bkmrk-give-the-permission-\">\n<li>Give the permission to folders:</li>\n</ol>\n<p id=\"bkmrk-chown--r-www-data%3Aww\"><code>chown -R www-data:www-data /var/www/nextcloud\nchmod -R 755 /var/www/nextcloud</code></p>\n','\nClone repository Nextcloud:\n\ngit clone https://github.com/nextcloud/server.git /var/www/nextcloud```\ncd /var/www/nextcloud\n\nGive the permission to folders:\n\nchown -R www-data:www-data /var/www/nextcloud\nchmod -R 755 /var/www/nextcloud\n',1,'2025-03-02 01:17:01','2025-03-02 01:17:01','new-page','deploy-nextcloud-in-ubuntu-server-manually','version','1. Clone repository Nextcloud:\r\n\r\n<code>git clone https://github.com/nextcloud/server.git /var/www/nextcloud```\r\ncd /var/www/nextcloud</code>\r\n\r\n2. Give the permission to folders:\r\n\r\n<code>chown -R www-data:www-data /var/www/nextcloud\r\nchmod -R 755 /var/www/nextcloud</code>','',12),
(80,7,'New Page','<ol id=\"bkmrk-clone-repository-nex\">\n<li>Clone repository Nextcloud:</li>\n</ol>\n<p id=\"bkmrk-git-clone-https%3A%2F%2Fgi\"><code>git clone https://github.com/nextcloud/server.git /var/www/nextcloud```\ncd /var/www/nextcloud</code></p>\n<ol start=\"2\" id=\"bkmrk-give-the-permission-\">\n<li>Give the permission to folders:</li>\n</ol>\n<p id=\"bkmrk-chown--r-www-data%3Aww\"><code>chown -R www-data:www-data /var/www/nextcloud\nchmod -R 755 /var/www/nextcloud</code></p>\n<ol start=\"3\" id=\"bkmrk-create-the-database\">\n<li>Create the database</li>\n</ol>\n<p id=\"bkmrk-enter%3A-sudo-mysql--u\">Enter:\n<code>sudo mysql -u root</code></p>\n<p id=\"bkmrk-create%3A-create-datab\">Create:\n<code>CREATE DATABASE nextcloud;\nCREATE USER \'nextcloud\'@\'localhost\' IDENTIFIED BY \'nextcloudpassword\';\nGRANT ALL PRIVILEGES ON nextcloud.* TO \'nextcloud\'@\'localhost\';\nFLUSH PRIVILEGES;\nEXIT;</code></p>\n','\nClone repository Nextcloud:\n\ngit clone https://github.com/nextcloud/server.git /var/www/nextcloud```\ncd /var/www/nextcloud\n\nGive the permission to folders:\n\nchown -R www-data:www-data /var/www/nextcloud\nchmod -R 755 /var/www/nextcloud\n\nCreate the database\n\nEnter:\nsudo mysql -u root\nCreate:\nCREATE DATABASE nextcloud;\nCREATE USER \'nextcloud\'@\'localhost\' IDENTIFIED BY \'nextcloudpassword\';\nGRANT ALL PRIVILEGES ON nextcloud.* TO \'nextcloud\'@\'localhost\';\nFLUSH PRIVILEGES;\nEXIT;\n',1,'2025-03-02 01:19:27','2025-03-02 01:19:27','new-page','deploy-nextcloud-in-ubuntu-server-manually','version','1. Clone repository Nextcloud:\r\n\r\n<code>git clone https://github.com/nextcloud/server.git /var/www/nextcloud```\r\ncd /var/www/nextcloud</code>\r\n\r\n2. Give the permission to folders:\r\n\r\n<code>chown -R www-data:www-data /var/www/nextcloud\r\nchmod -R 755 /var/www/nextcloud</code>\r\n\r\n3. Create the database\r\n\r\nEnter:\r\n```sudo mysql -u root```\r\n\r\nCreate:\r\n<code>CREATE DATABASE nextcloud;\r\nCREATE USER \'nextcloud\'@\'localhost\' IDENTIFIED BY \'nextcloudpassword\';\r\nGRANT ALL PRIVILEGES ON nextcloud.* TO \'nextcloud\'@\'localhost\';\r\nFLUSH PRIVILEGES;\r\nEXIT;</code>','',13),
(82,7,'New Page','<ol id=\"bkmrk-clone-repository-nex\">\n<li>Clone repository Nextcloud:</li>\n</ol>\n<p id=\"bkmrk-git-clone-https%3A%2F%2Fgi\"><code>git clone https://github.com/nextcloud/server.git /var/www/nextcloud```\ncd /var/www/nextcloud</code></p>\n<ol start=\"2\" id=\"bkmrk-give-the-permission-\">\n<li>Give the permission to folders:</li>\n</ol>\n<p id=\"bkmrk-chown--r-www-data%3Aww\"><code>chown -R www-data:www-data /var/www/nextcloud\nchmod -R 755 /var/www/nextcloud</code></p>\n<ol start=\"3\" id=\"bkmrk-create-the-database\">\n<li>Create the database</li>\n</ol>\n<p id=\"bkmrk-enter%3A-sudo-mysql--u\">Enter:\n<code>sudo mysql -u root</code></p>\n<p id=\"bkmrk-create%3A-create-datab\">Create:\n<code>CREATE DATABASE nextcloud;\nCREATE USER \'nextcloud\'@\'localhost\' IDENTIFIED BY \'nextcloudpassword\';\nGRANT ALL PRIVILEGES ON nextcloud.* TO \'nextcloud\'@\'localhost\';\nFLUSH PRIVILEGES;\nEXIT;</code></p>\n<ol start=\"4\" id=\"bkmrk-create-nginx-configu\">\n<li>Create Nginx Configuration:</li>\n</ol>\n<pre id=\"bkmrk-server-%7B-server_name\"><code>server {\n    server_name x5.znand.my.id;\n    root /var/www/nextcloud;\n\n    index index.php index.html;\n\n    location / {\n        try_files $uri $uri/ /index.php$is_args$args;\n    }\n        # Tambahkan batasan upload &amp; buffer\n    client_max_body_size 20G;\n    fastcgi_buffers 64 4K;\n\n    location ~ ^/(?:build|tests|config|lib|3rdparty|templates|data)/ {\n        deny all;\n    }\n\n    location ~ \\.php(?:$|/) {\n        include fastcgi_params;\n        fastcgi_split_path_info ^(.+\\.php)(/.+)$;\n        fastcgi_pass unix:/run/php/php8.2-fpm.sock;\n        fastcgi_index index.php;\n        fastcgi_param SCRIPT_FILENAME $document_root$fastcgi_script_name;\n        fastcgi_param PATH_INFO $fastcgi_path_info;\n    }\n\n}\n</code></pre>\n','\nClone repository Nextcloud:\n\ngit clone https://github.com/nextcloud/server.git /var/www/nextcloud```\ncd /var/www/nextcloud\n\nGive the permission to folders:\n\nchown -R www-data:www-data /var/www/nextcloud\nchmod -R 755 /var/www/nextcloud\n\nCreate the database\n\nEnter:\nsudo mysql -u root\nCreate:\nCREATE DATABASE nextcloud;\nCREATE USER \'nextcloud\'@\'localhost\' IDENTIFIED BY \'nextcloudpassword\';\nGRANT ALL PRIVILEGES ON nextcloud.* TO \'nextcloud\'@\'localhost\';\nFLUSH PRIVILEGES;\nEXIT;\n\nCreate Nginx Configuration:\n\nserver {\n    server_name x5.znand.my.id;\n    root /var/www/nextcloud;\n\n    index index.php index.html;\n\n    location / {\n        try_files $uri $uri/ /index.php$is_args$args;\n    }\n        # Tambahkan batasan upload & buffer\n    client_max_body_size 20G;\n    fastcgi_buffers 64 4K;\n\n    location ~ ^/(?:build|tests|config|lib|3rdparty|templates|data)/ {\n        deny all;\n    }\n\n    location ~ \\.php(?:$|/) {\n        include fastcgi_params;\n        fastcgi_split_path_info ^(.+\\.php)(/.+)$;\n        fastcgi_pass unix:/run/php/php8.2-fpm.sock;\n        fastcgi_index index.php;\n        fastcgi_param SCRIPT_FILENAME $document_root$fastcgi_script_name;\n        fastcgi_param PATH_INFO $fastcgi_path_info;\n    }\n\n}\n\n',1,'2025-03-02 01:21:24','2025-03-02 01:21:24','new-page','deploy-nextcloud-in-ubuntu-server-manually','version','1. Clone repository Nextcloud:\r\n\r\n<code>git clone https://github.com/nextcloud/server.git /var/www/nextcloud```\r\ncd /var/www/nextcloud</code>\r\n\r\n2. Give the permission to folders:\r\n\r\n<code>chown -R www-data:www-data /var/www/nextcloud\r\nchmod -R 755 /var/www/nextcloud</code>\r\n\r\n3. Create the database\r\n\r\nEnter:\r\n```sudo mysql -u root```\r\n\r\nCreate:\r\n<code>CREATE DATABASE nextcloud;\r\nCREATE USER \'nextcloud\'@\'localhost\' IDENTIFIED BY \'nextcloudpassword\';\r\nGRANT ALL PRIVILEGES ON nextcloud.* TO \'nextcloud\'@\'localhost\';\r\nFLUSH PRIVILEGES;\r\nEXIT;</code>\r\n\r\n4. Create Nginx Configuration:\r\n\r\n```\r\nserver {\r\n    server_name x5.znand.my.id;\r\n    root /var/www/nextcloud;\r\n\r\n    index index.php index.html;\r\n\r\n    location / {\r\n        try_files $uri $uri/ /index.php$is_args$args;\r\n    }\r\n        # Tambahkan batasan upload & buffer\r\n    client_max_body_size 20G;\r\n    fastcgi_buffers 64 4K;\r\n\r\n    location ~ ^/(?:build|tests|config|lib|3rdparty|templates|data)/ {\r\n        deny all;\r\n    }\r\n\r\n    location ~ \\.php(?:$|/) {\r\n        include fastcgi_params;\r\n        fastcgi_split_path_info ^(.+\\.php)(/.+)$;\r\n        fastcgi_pass unix:/run/php/php8.2-fpm.sock;\r\n        fastcgi_index index.php;\r\n        fastcgi_param SCRIPT_FILENAME $document_root$fastcgi_script_name;\r\n        fastcgi_param PATH_INFO $fastcgi_path_info;\r\n    }\r\n\r\n}\r\n```','',14),
(83,8,'New Page','<ol id=\"bkmrk-clone-repository-nex\">\n<li>Clone repository Nextcloud:</li>\n</ol>\n<p id=\"bkmrk-git-clone-https%3A%2F%2Fgi\"><code>git clone https://github.com/nextcloud/server.git /var/www/nextcloud```\ncd /var/www/nextcloud</code></p>\n<ol start=\"2\" id=\"bkmrk-give-the-permission-\">\n<li>Give the permission to folders:</li>\n</ol>\n<p id=\"bkmrk-chown--r-www-data%3Aww\"><code>chown -R www-data:www-data /var/www/nextcloud\nchmod -R 755 /var/www/nextcloud</code></p>\n<ol start=\"3\" id=\"bkmrk-create-the-database\">\n<li>Create the database</li>\n</ol>\n<p id=\"bkmrk-enter%3A-sudo-mysql--u\">Enter:\n<code>sudo mysql -u root</code></p>\n<p id=\"bkmrk-create%3A-create-datab\">Create:\n<code>CREATE DATABASE nextcloud;\nCREATE USER \'nextcloud\'@\'localhost\' IDENTIFIED BY \'nextcloudpassword\';\nGRANT ALL PRIVILEGES ON nextcloud.* TO \'nextcloud\'@\'localhost\';\nFLUSH PRIVILEGES;\nEXIT;</code></p>\n<ol start=\"4\" id=\"bkmrk-create-nginx-configu\">\n<li>Create Nginx Configuration:</li>\n</ol>\n<pre id=\"bkmrk-server-%7B-server_name\"><code>server {\n    server_name x5.znand.my.id;\n    root /var/www/nextcloud;\n\n    index index.php index.html;\n\n    location / {\n        try_files $uri $uri/ /index.php$is_args$args;\n    }\n        # Tambahkan batasan upload &amp; buffer\n    client_max_body_size 20G;\n    fastcgi_buffers 64 4K;\n\n    location ~ ^/(?:build|tests|config|lib|3rdparty|templates|data)/ {\n        deny all;\n    }\n\n    location ~ \\.php(?:$|/) {\n        include fastcgi_params;\n        fastcgi_split_path_info ^(.+\\.php)(/.+)$;\n        fastcgi_pass unix:/run/php/php8.2-fpm.sock;\n        fastcgi_index index.php;\n        fastcgi_param SCRIPT_FILENAME $document_root$fastcgi_script_name;\n        fastcgi_param PATH_INFO $fastcgi_path_info;\n    }\n\n}\n</code></pre>\n','\nClone repository Nextcloud:\n\ngit clone https://github.com/nextcloud/server.git /var/www/nextcloud```\ncd /var/www/nextcloud\n\nGive the permission to folders:\n\nchown -R www-data:www-data /var/www/nextcloud\nchmod -R 755 /var/www/nextcloud\n\nCreate the database\n\nEnter:\nsudo mysql -u root\nCreate:\nCREATE DATABASE nextcloud;\nCREATE USER \'nextcloud\'@\'localhost\' IDENTIFIED BY \'nextcloudpassword\';\nGRANT ALL PRIVILEGES ON nextcloud.* TO \'nextcloud\'@\'localhost\';\nFLUSH PRIVILEGES;\nEXIT;\n\nCreate Nginx Configuration:\n\nserver {\n    server_name x5.znand.my.id;\n    root /var/www/nextcloud;\n\n    index index.php index.html;\n\n    location / {\n        try_files $uri $uri/ /index.php$is_args$args;\n    }\n        # Tambahkan batasan upload & buffer\n    client_max_body_size 20G;\n    fastcgi_buffers 64 4K;\n\n    location ~ ^/(?:build|tests|config|lib|3rdparty|templates|data)/ {\n        deny all;\n    }\n\n    location ~ \\.php(?:$|/) {\n        include fastcgi_params;\n        fastcgi_split_path_info ^(.+\\.php)(/.+)$;\n        fastcgi_pass unix:/run/php/php8.2-fpm.sock;\n        fastcgi_index index.php;\n        fastcgi_param SCRIPT_FILENAME $document_root$fastcgi_script_name;\n        fastcgi_param PATH_INFO $fastcgi_path_info;\n    }\n\n}\n\n',1,'2025-03-02 01:23:04','2025-03-02 01:23:04','new-page-M8a','deploy-nextcloud-in-ubuntu-server-manually','version','1. Clone repository Nextcloud:\r\n\r\n<code>git clone https://github.com/nextcloud/server.git /var/www/nextcloud```\r\ncd /var/www/nextcloud</code>\r\n\r\n2. Give the permission to folders:\r\n\r\n<code>chown -R www-data:www-data /var/www/nextcloud\r\nchmod -R 755 /var/www/nextcloud</code>\r\n\r\n3. Create the database\r\n\r\nEnter:\r\n```sudo mysql -u root```\r\n\r\nCreate:\r\n<code>CREATE DATABASE nextcloud;\r\nCREATE USER \'nextcloud\'@\'localhost\' IDENTIFIED BY \'nextcloudpassword\';\r\nGRANT ALL PRIVILEGES ON nextcloud.* TO \'nextcloud\'@\'localhost\';\r\nFLUSH PRIVILEGES;\r\nEXIT;</code>\r\n\r\n4. Create Nginx Configuration:\r\n\r\n```\r\nserver {\r\n    server_name x5.znand.my.id;\r\n    root /var/www/nextcloud;\r\n\r\n    index index.php index.html;\r\n\r\n    location / {\r\n        try_files $uri $uri/ /index.php$is_args$args;\r\n    }\r\n        # Tambahkan batasan upload & buffer\r\n    client_max_body_size 20G;\r\n    fastcgi_buffers 64 4K;\r\n\r\n    location ~ ^/(?:build|tests|config|lib|3rdparty|templates|data)/ {\r\n        deny all;\r\n    }\r\n\r\n    location ~ \\.php(?:$|/) {\r\n        include fastcgi_params;\r\n        fastcgi_split_path_info ^(.+\\.php)(/.+)$;\r\n        fastcgi_pass unix:/run/php/php8.2-fpm.sock;\r\n        fastcgi_index index.php;\r\n        fastcgi_param SCRIPT_FILENAME $document_root$fastcgi_script_name;\r\n        fastcgi_param PATH_INFO $fastcgi_path_info;\r\n    }\r\n\r\n}\r\n```','Initial publish',1),
(85,7,'Installing Requirements','<ol id=\"bkmrk-installing-php\">\n<li>Installing PHP</li>\n</ol>\n<pre id=\"bkmrk-%3Ccode%3E-sudo-apt-upda\"><code>&lt;code&gt;\nsudo apt update\nsudo apt install -y software-properties-common\nsudo add-apt-repository ppa:ondrej/php -y\nsudo apt update\n&lt;/code&gt;\n\n2.\n</code></pre>\n','\nInstalling PHP\n\n<code>\nsudo apt update\nsudo apt install -y software-properties-common\nsudo add-apt-repository ppa:ondrej/php -y\nsudo apt update\n</code>\n\n2.\n\n',1,'2025-03-02 01:25:24','2025-03-02 01:25:24','installing-requirements','deploy-nextcloud-in-ubuntu-server-manually','version','1. Installing PHP\r\n```\r\n<code>\r\nsudo apt update\r\nsudo apt install -y software-properties-common\r\nsudo add-apt-repository ppa:ondrej/php -y\r\nsudo apt update\r\n</code>\r\n\r\n2.','',18),
(87,7,'Installing Requirements','<ol id=\"bkmrk-installing-php-sudo-\">\n<li>\n<p>Installing PHP\n<code>sudo apt update\nsudo apt install -y software-properties-common\nsudo add-apt-repository ppa:ondrej/php -y\nsudo apt update</code></p>\n<p><code>sudo apt install -y php8.2 php8.2-{fpm,gd,curl,zip,mbstring,intl,bcmath,gmp,xml,json,apcu}</code>\nCheck the version\n<code>php -v</code>\nIf you are using Debian, please refer to this command:\n<code>sudo apt install ca-certificates apt-transport-https\nsudo wget -qO /etc/apt/trusted.gpg.d/php.gpg https://packages.sury.org/php/apt.gpg\necho \"deb https://packages.sury.org/php/ $(lsb_release -sc) main\" | sudo tee /etc/apt/sources.list.d/php.list\nsudo apt update</code>\nEnsure the extensions:\n<code>php -m | grep -E \"gd|curl|zip|mbstring|intl|bcmath|gmp|xml|apcu|imagick|exif|ldap\"</code>\nRestart services\n<code>sudo systemctl restart php8.2-fpm\nsudo systemctl restart apache2  # If using Apache\nsudo systemctl restart nginx    # If using Nginx</code></p>\n</li>\n<li>\n<p>Installing MySQL Database</p>\n</li>\n</ol>\n','\n\nInstalling PHP\nsudo apt update\nsudo apt install -y software-properties-common\nsudo add-apt-repository ppa:ondrej/php -y\nsudo apt update\nsudo apt install -y php8.2 php8.2-{fpm,gd,curl,zip,mbstring,intl,bcmath,gmp,xml,json,apcu}\nCheck the version\nphp -v\nIf you are using Debian, please refer to this command:\nsudo apt install ca-certificates apt-transport-https\nsudo wget -qO /etc/apt/trusted.gpg.d/php.gpg https://packages.sury.org/php/apt.gpg\necho \"deb https://packages.sury.org/php/ $(lsb_release -sc) main\" | sudo tee /etc/apt/sources.list.d/php.list\nsudo apt update\nEnsure the extensions:\nphp -m | grep -E \"gd|curl|zip|mbstring|intl|bcmath|gmp|xml|apcu|imagick|exif|ldap\"\nRestart services\nsudo systemctl restart php8.2-fpm\nsudo systemctl restart apache2  # If using Apache\nsudo systemctl restart nginx    # If using Nginx\n\n\nInstalling MySQL Database\n\n\n',1,'2025-03-02 01:32:27','2025-03-02 01:32:27','installing-requirements','deploy-nextcloud-in-ubuntu-server-manually','version','1. Installing PHP\r\n<code>sudo apt update\r\nsudo apt install -y software-properties-common\r\nsudo add-apt-repository ppa:ondrej/php -y\r\nsudo apt update</code>\r\n\r\n   ```sudo apt install -y php8.2 php8.2-{fpm,gd,curl,zip,mbstring,intl,bcmath,gmp,xml,json,apcu}```\r\nCheck the version\r\n```php -v```\r\nIf you are using Debian, please refer to this command:\r\n<code>sudo apt install ca-certificates apt-transport-https\r\nsudo wget -qO /etc/apt/trusted.gpg.d/php.gpg https://packages.sury.org/php/apt.gpg\r\necho \"deb https://packages.sury.org/php/ $(lsb_release -sc) main\" | sudo tee /etc/apt/sources.list.d/php.list\r\nsudo apt update</code>\r\nEnsure the extensions:\r\n```php -m | grep -E \"gd|curl|zip|mbstring|intl|bcmath|gmp|xml|apcu|imagick|exif|ldap\"```\r\nRestart services\r\n<code>sudo systemctl restart php8.2-fpm\r\nsudo systemctl restart apache2  # If using Apache\r\nsudo systemctl restart nginx    # If using Nginx</code>\r\n3. Installing MySQL Database','',19),
(89,7,'Installing Requirements','<ol id=\"bkmrk-installing-php-sudo-\">\n<li>\n<p>Installing PHP\n<code>sudo apt update\nsudo apt install -y software-properties-common\nsudo add-apt-repository ppa:ondrej/php -y\nsudo apt update</code></p>\n<p><code>sudo apt install -y php8.2 php8.2-{fpm,gd,curl,zip,mbstring,intl,bcmath,gmp,xml,json,apcu}</code>\nCheck the version\n<code>php -v</code>\nIf you are using Debian, please refer to this command:\n<code>sudo apt install ca-certificates apt-transport-https\nsudo wget -qO /etc/apt/trusted.gpg.d/php.gpg https://packages.sury.org/php/apt.gpg\necho \"deb https://packages.sury.org/php/ $(lsb_release -sc) main\" | sudo tee /etc/apt/sources.list.d/php.list\nsudo apt update</code>\nEnsure the extensions:\n<code>php -m | grep -E \"gd|curl|zip|mbstring|intl|bcmath|gmp|xml|apcu|imagick|exif|ldap\"</code>\nInstalling PHP-FPM\n<code>sudo apt install php8.2-fpm\nsudo systemctl enable --now php8.2-fpm\nsudo systemct status php8.2-fpm\n</code>\nRestart services\n<code>sudo systemctl restart php8.2-fpm\nsudo systemctl restart apache2  # If using Apache\nsudo systemctl restart nginx    # If using Nginx</code></p>\n</li>\n<li>\n<p>Installing MySQL Database</p>\n</li>\n</ol>\n','\n\nInstalling PHP\nsudo apt update\nsudo apt install -y software-properties-common\nsudo add-apt-repository ppa:ondrej/php -y\nsudo apt update\nsudo apt install -y php8.2 php8.2-{fpm,gd,curl,zip,mbstring,intl,bcmath,gmp,xml,json,apcu}\nCheck the version\nphp -v\nIf you are using Debian, please refer to this command:\nsudo apt install ca-certificates apt-transport-https\nsudo wget -qO /etc/apt/trusted.gpg.d/php.gpg https://packages.sury.org/php/apt.gpg\necho \"deb https://packages.sury.org/php/ $(lsb_release -sc) main\" | sudo tee /etc/apt/sources.list.d/php.list\nsudo apt update\nEnsure the extensions:\nphp -m | grep -E \"gd|curl|zip|mbstring|intl|bcmath|gmp|xml|apcu|imagick|exif|ldap\"\nInstalling PHP-FPM\nsudo apt install php8.2-fpm\nsudo systemctl enable --now php8.2-fpm\nsudo systemct status php8.2-fpm\n\nRestart services\nsudo systemctl restart php8.2-fpm\nsudo systemctl restart apache2  # If using Apache\nsudo systemctl restart nginx    # If using Nginx\n\n\nInstalling MySQL Database\n\n\n',1,'2025-03-02 01:34:54','2025-03-02 01:34:54','installing-requirements','deploy-nextcloud-in-ubuntu-server-manually','version','1. Installing PHP\r\n<code>sudo apt update\r\nsudo apt install -y software-properties-common\r\nsudo add-apt-repository ppa:ondrej/php -y\r\nsudo apt update</code>\r\n\r\n   ```sudo apt install -y php8.2 php8.2-{fpm,gd,curl,zip,mbstring,intl,bcmath,gmp,xml,json,apcu}```\r\nCheck the version\r\n```php -v```\r\nIf you are using Debian, please refer to this command:\r\n<code>sudo apt install ca-certificates apt-transport-https\r\nsudo wget -qO /etc/apt/trusted.gpg.d/php.gpg https://packages.sury.org/php/apt.gpg\r\necho \"deb https://packages.sury.org/php/ $(lsb_release -sc) main\" | sudo tee /etc/apt/sources.list.d/php.list\r\nsudo apt update</code>\r\nEnsure the extensions:\r\n```php -m | grep -E \"gd|curl|zip|mbstring|intl|bcmath|gmp|xml|apcu|imagick|exif|ldap\"```\r\nInstalling PHP-FPM\r\n<code>sudo apt install php8.2-fpm\r\nsudo systemctl enable --now php8.2-fpm\r\nsudo systemct status php8.2-fpm\r\n</code>\r\nRestart services\r\n<code>sudo systemctl restart php8.2-fpm\r\nsudo systemctl restart apache2  # If using Apache\r\nsudo systemctl restart nginx    # If using Nginx</code>\r\n3. Installing MySQL Database','',20),
(90,7,'Installing Requirements','<ol id=\"bkmrk-installing-php-sudo-\">\n<li>\n<p>Installing PHP\n<code>sudo apt update\nsudo apt install -y software-properties-common\nsudo add-apt-repository ppa:ondrej/php -y\nsudo apt update</code></p>\n<p><code>sudo apt install -y php8.2 php8.2-{fpm,gd,curl,zip,mbstring,intl,bcmath,gmp,xml,json,apcu}</code>\nCheck the version\n<code>php -v</code>\nIf you are using Debian, please refer to this command:\n<code>sudo apt install ca-certificates apt-transport-https\nsudo wget -qO /etc/apt/trusted.gpg.d/php.gpg https://packages.sury.org/php/apt.gpg\necho \"deb https://packages.sury.org/php/ $(lsb_release -sc) main\" | sudo tee /etc/apt/sources.list.d/php.list\nsudo apt update</code>\nEnsure the extensions:\n<code>php -m | grep -E \"gd|curl|zip|mbstring|intl|bcmath|gmp|xml|apcu|imagick|exif|ldap\"</code>\nInstalling PHP-FPM (Mandatory if using Nginx)\n<code>sudo apt install php8.2-fpm\nsudo systemctl enable --now php8.2-fpm\nsudo systemct status php8.2-fpm\n</code>\nRestart services\n<code>sudo systemctl restart php8.2-fpm\nsudo systemctl restart apache2  # If using Apache\nsudo systemctl restart nginx    # If using Nginx</code></p>\n</li>\n<li>\n<p>Installing MySQL Database</p>\n</li>\n</ol>\n','\n\nInstalling PHP\nsudo apt update\nsudo apt install -y software-properties-common\nsudo add-apt-repository ppa:ondrej/php -y\nsudo apt update\nsudo apt install -y php8.2 php8.2-{fpm,gd,curl,zip,mbstring,intl,bcmath,gmp,xml,json,apcu}\nCheck the version\nphp -v\nIf you are using Debian, please refer to this command:\nsudo apt install ca-certificates apt-transport-https\nsudo wget -qO /etc/apt/trusted.gpg.d/php.gpg https://packages.sury.org/php/apt.gpg\necho \"deb https://packages.sury.org/php/ $(lsb_release -sc) main\" | sudo tee /etc/apt/sources.list.d/php.list\nsudo apt update\nEnsure the extensions:\nphp -m | grep -E \"gd|curl|zip|mbstring|intl|bcmath|gmp|xml|apcu|imagick|exif|ldap\"\nInstalling PHP-FPM (Mandatory if using Nginx)\nsudo apt install php8.2-fpm\nsudo systemctl enable --now php8.2-fpm\nsudo systemct status php8.2-fpm\n\nRestart services\nsudo systemctl restart php8.2-fpm\nsudo systemctl restart apache2  # If using Apache\nsudo systemctl restart nginx    # If using Nginx\n\n\nInstalling MySQL Database\n\n\n',1,'2025-03-02 01:35:38','2025-03-02 01:35:38','installing-requirements','deploy-nextcloud-in-ubuntu-server-manually','version','1. Installing PHP\r\n<code>sudo apt update\r\nsudo apt install -y software-properties-common\r\nsudo add-apt-repository ppa:ondrej/php -y\r\nsudo apt update</code>\r\n\r\n   ```sudo apt install -y php8.2 php8.2-{fpm,gd,curl,zip,mbstring,intl,bcmath,gmp,xml,json,apcu}```\r\nCheck the version\r\n```php -v```\r\nIf you are using Debian, please refer to this command:\r\n<code>sudo apt install ca-certificates apt-transport-https\r\nsudo wget -qO /etc/apt/trusted.gpg.d/php.gpg https://packages.sury.org/php/apt.gpg\r\necho \"deb https://packages.sury.org/php/ $(lsb_release -sc) main\" | sudo tee /etc/apt/sources.list.d/php.list\r\nsudo apt update</code>\r\nEnsure the extensions:\r\n```php -m | grep -E \"gd|curl|zip|mbstring|intl|bcmath|gmp|xml|apcu|imagick|exif|ldap\"```\r\nInstalling PHP-FPM (Mandatory if using Nginx)\r\n<code>sudo apt install php8.2-fpm\r\nsudo systemctl enable --now php8.2-fpm\r\nsudo systemct status php8.2-fpm\r\n</code>\r\nRestart services\r\n<code>sudo systemctl restart php8.2-fpm\r\nsudo systemctl restart apache2  # If using Apache\r\nsudo systemctl restart nginx    # If using Nginx</code>\r\n3. Installing MySQL Database','',21),
(92,7,'Installing Requirements','<ol id=\"bkmrk-installing-php-sudo-\">\n<li>\n<p>Installing PHP\n<code>sudo apt update\nsudo apt install -y software-properties-common\nsudo add-apt-repository ppa:ondrej/php -y\nsudo apt update</code></p>\n<p><code>sudo apt install -y php8.2 php8.2-{fpm,gd,curl,zip,mbstring,intl,bcmath,gmp,xml,json,apcu}</code>\nCheck the version\n<code>php -v</code>\nIf you are using Debian, please refer to this command:\n<code>sudo apt install ca-certificates apt-transport-https\nsudo wget -qO /etc/apt/trusted.gpg.d/php.gpg https://packages.sury.org/php/apt.gpg\necho \"deb https://packages.sury.org/php/ $(lsb_release -sc) main\" | sudo tee /etc/apt/sources.list.d/php.list\nsudo apt update</code>\nEnsure the extensions:\n<code>php -m | grep -E \"gd|curl|zip|mbstring|intl|bcmath|gmp|xml|apcu|imagick|exif|ldap\"</code>\nInstalling PHP-FPM (Mandatory if using Nginx)\n<code>sudo apt install php8.2-fpm\nsudo systemctl enable --now php8.2-fpm\nsudo systemct status php8.2-fpm\n</code>\nRestart services\n<code>sudo systemctl restart php8.2-fpm\nsudo systemctl restart apache2  # If using Apache\nsudo systemctl restart nginx    # If using Nginx</code></p>\n</li>\n<li>\n<p>Installing MySQL Database\n<code>sudo apt-get install mysql-server</code></p>\n</li>\n</ol>\n','\n\nInstalling PHP\nsudo apt update\nsudo apt install -y software-properties-common\nsudo add-apt-repository ppa:ondrej/php -y\nsudo apt update\nsudo apt install -y php8.2 php8.2-{fpm,gd,curl,zip,mbstring,intl,bcmath,gmp,xml,json,apcu}\nCheck the version\nphp -v\nIf you are using Debian, please refer to this command:\nsudo apt install ca-certificates apt-transport-https\nsudo wget -qO /etc/apt/trusted.gpg.d/php.gpg https://packages.sury.org/php/apt.gpg\necho \"deb https://packages.sury.org/php/ $(lsb_release -sc) main\" | sudo tee /etc/apt/sources.list.d/php.list\nsudo apt update\nEnsure the extensions:\nphp -m | grep -E \"gd|curl|zip|mbstring|intl|bcmath|gmp|xml|apcu|imagick|exif|ldap\"\nInstalling PHP-FPM (Mandatory if using Nginx)\nsudo apt install php8.2-fpm\nsudo systemctl enable --now php8.2-fpm\nsudo systemct status php8.2-fpm\n\nRestart services\nsudo systemctl restart php8.2-fpm\nsudo systemctl restart apache2  # If using Apache\nsudo systemctl restart nginx    # If using Nginx\n\n\nInstalling MySQL Database\nsudo apt-get install mysql-server\n\n\n',1,'2025-03-02 01:36:55','2025-03-02 01:36:55','installing-requirements','deploy-nextcloud-in-ubuntu-server-manually','version','1. Installing PHP\r\n<code>sudo apt update\r\nsudo apt install -y software-properties-common\r\nsudo add-apt-repository ppa:ondrej/php -y\r\nsudo apt update</code>\r\n\r\n   ```sudo apt install -y php8.2 php8.2-{fpm,gd,curl,zip,mbstring,intl,bcmath,gmp,xml,json,apcu}```\r\nCheck the version\r\n```php -v```\r\nIf you are using Debian, please refer to this command:\r\n<code>sudo apt install ca-certificates apt-transport-https\r\nsudo wget -qO /etc/apt/trusted.gpg.d/php.gpg https://packages.sury.org/php/apt.gpg\r\necho \"deb https://packages.sury.org/php/ $(lsb_release -sc) main\" | sudo tee /etc/apt/sources.list.d/php.list\r\nsudo apt update</code>\r\nEnsure the extensions:\r\n```php -m | grep -E \"gd|curl|zip|mbstring|intl|bcmath|gmp|xml|apcu|imagick|exif|ldap\"```\r\nInstalling PHP-FPM (Mandatory if using Nginx)\r\n<code>sudo apt install php8.2-fpm\r\nsudo systemctl enable --now php8.2-fpm\r\nsudo systemct status php8.2-fpm\r\n</code>\r\nRestart services\r\n<code>sudo systemctl restart php8.2-fpm\r\nsudo systemctl restart apache2  # If using Apache\r\nsudo systemctl restart nginx    # If using Nginx</code>\r\n3. Installing MySQL Database\r\n<code>sudo apt-get install mysql-server','',22),
(94,7,'Installing Requirements','<ol id=\"bkmrk-installing-php-sudo-\">\n<li>\n<p>Installing PHP\n<code>sudo apt update\nsudo apt install -y software-properties-common\nsudo add-apt-repository ppa:ondrej/php -y\nsudo apt update</code></p>\n<p><code>sudo apt install -y php8.2 php8.2-{fpm,gd,curl,zip,mbstring,intl,bcmath,gmp,xml,json,apcu}</code>\nCheck the version\n<code>php -v</code>\nIf you are using Debian, please refer to this command:\n<code>sudo apt install ca-certificates apt-transport-https\nsudo wget -qO /etc/apt/trusted.gpg.d/php.gpg https://packages.sury.org/php/apt.gpg\necho \"deb https://packages.sury.org/php/ $(lsb_release -sc) main\" | sudo tee /etc/apt/sources.list.d/php.list\nsudo apt update</code>\nEnsure the extensions:\n<code>php -m | grep -E \"gd|curl|zip|mbstring|intl|bcmath|gmp|xml|apcu|imagick|exif|ldap\"</code>\nInstalling PHP-FPM (Mandatory if using Nginx)\n<code>sudo apt install php8.2-fpm\nsudo systemctl enable --now php8.2-fpm\nsudo systemct status php8.2-fpm</code></p><div drawio-diagram=\"26\"><img src=\"https://x2.znand.my.id/uploads/images/drawio/2025-03/drawing-1-1740879617.png\"></div>\n</li>\n<li>\n<p>Installing Web Server\n<code>sudo apt-get install nginx</code>\n<code>sudo systemctl status nginx</code>\nEnsure Nginx is running</p><div drawio-diagram=\"27\"><img src=\"https://x2.znand.my.id/uploads/images/drawio/2025-03/drawing-1-1740879790.png\"></div>\n</li>\n<li>\n<p>Installing MySQL Database\n<code>sudo apt-get install mysql-server\nsudo systemctl status mysql</code></p><div drawio-diagram=\"28\"><img src=\"https://x2.znand.my.id/uploads/images/drawio/2025-03/drawing-1-1740879954.png\"></div>\n</li>\n</ol>\n','\n\nInstalling PHP\nsudo apt update\nsudo apt install -y software-properties-common\nsudo add-apt-repository ppa:ondrej/php -y\nsudo apt update\nsudo apt install -y php8.2 php8.2-{fpm,gd,curl,zip,mbstring,intl,bcmath,gmp,xml,json,apcu}\nCheck the version\nphp -v\nIf you are using Debian, please refer to this command:\nsudo apt install ca-certificates apt-transport-https\nsudo wget -qO /etc/apt/trusted.gpg.d/php.gpg https://packages.sury.org/php/apt.gpg\necho \"deb https://packages.sury.org/php/ $(lsb_release -sc) main\" | sudo tee /etc/apt/sources.list.d/php.list\nsudo apt update\nEnsure the extensions:\nphp -m | grep -E \"gd|curl|zip|mbstring|intl|bcmath|gmp|xml|apcu|imagick|exif|ldap\"\nInstalling PHP-FPM (Mandatory if using Nginx)\nsudo apt install php8.2-fpm\nsudo systemctl enable --now php8.2-fpm\nsudo systemct status php8.2-fpm\n\n\nInstalling Web Server\nsudo apt-get install nginx\nsudo systemctl status nginx\nEnsure Nginx is running\n\n\nInstalling MySQL Database\nsudo apt-get install mysql-server\nsudo systemctl status mysql\n\n\n',1,'2025-03-02 01:47:14','2025-03-02 01:47:14','installing-requirements','deploy-nextcloud-in-ubuntu-server-manually','version','1. Installing PHP\r\n<code>sudo apt update\r\nsudo apt install -y software-properties-common\r\nsudo add-apt-repository ppa:ondrej/php -y\r\nsudo apt update</code>\r\n\r\n   ```sudo apt install -y php8.2 php8.2-{fpm,gd,curl,zip,mbstring,intl,bcmath,gmp,xml,json,apcu}```\r\nCheck the version\r\n```php -v```\r\nIf you are using Debian, please refer to this command:\r\n<code>sudo apt install ca-certificates apt-transport-https\r\nsudo wget -qO /etc/apt/trusted.gpg.d/php.gpg https://packages.sury.org/php/apt.gpg\r\necho \"deb https://packages.sury.org/php/ $(lsb_release -sc) main\" | sudo tee /etc/apt/sources.list.d/php.list\r\nsudo apt update</code>\r\nEnsure the extensions:\r\n```php -m | grep -E \"gd|curl|zip|mbstring|intl|bcmath|gmp|xml|apcu|imagick|exif|ldap\"```\r\nInstalling PHP-FPM (Mandatory if using Nginx)\r\n<code>sudo apt install php8.2-fpm\r\nsudo systemctl enable --now php8.2-fpm\r\nsudo systemct status php8.2-fpm</code><div drawio-diagram=\"26\"><img src=\"https://x2.znand.my.id/uploads/images/drawio/2025-03/drawing-1-1740879617.png\"></div>\r\n\r\n2. Installing Web Server\r\n```sudo apt-get install nginx```\r\n```sudo systemctl status nginx```\r\nEnsure Nginx is running<div drawio-diagram=\"27\"><img src=\"https://x2.znand.my.id/uploads/images/drawio/2025-03/drawing-1-1740879790.png\"></div>\r\n\r\n4. Installing MySQL Database\r\n<code>sudo apt-get install mysql-server\r\nsudo systemctl status mysql</code><div drawio-diagram=\"28\"><img src=\"https://x2.znand.my.id/uploads/images/drawio/2025-03/drawing-1-1740879954.png\"></div>','',23),
(95,8,'Configuring Nextcloud','<ol id=\"bkmrk-clone-repository-nex\">\n<li>Clone repository Nextcloud:</li>\n</ol>\n<p id=\"bkmrk-git-clone-https%3A%2F%2Fgi\"><code>git clone https://github.com/nextcloud/server.git /var/www/nextcloud```\ncd /var/www/nextcloud</code></p>\n<ol start=\"2\" id=\"bkmrk-give-the-permission-\">\n<li>Give the permission to folders:</li>\n</ol>\n<p id=\"bkmrk-chown--r-www-data%3Aww\"><code>chown -R www-data:www-data /var/www/nextcloud\nchmod -R 755 /var/www/nextcloud</code></p>\n<ol start=\"3\" id=\"bkmrk-create-the-database\">\n<li>Create the database</li>\n</ol>\n<p id=\"bkmrk-enter%3A-sudo-mysql--u\">Enter:\n<code>sudo mysql -u root</code></p>\n<p id=\"bkmrk-create%3A-create-datab\">Create:\n<code>CREATE DATABASE nextcloud;\nCREATE USER \'nextcloud\'@\'localhost\' IDENTIFIED BY \'nextcloudpassword\';\nGRANT ALL PRIVILEGES ON nextcloud.* TO \'nextcloud\'@\'localhost\';\nFLUSH PRIVILEGES;\nEXIT;</code></p>\n<ol start=\"4\" id=\"bkmrk-create-nginx-configu\">\n<li>Create Nginx Configuration:</li>\n</ol>\n<pre id=\"bkmrk-server-%7B-server_name\"><code>server {\n    server_name x5.znand.my.id;\n    root /var/www/nextcloud;\n\n    index index.php index.html;\n\n    location / {\n        try_files $uri $uri/ /index.php$is_args$args;\n    }\n        # Tambahkan batasan upload &amp; buffer\n    client_max_body_size 20G;\n    fastcgi_buffers 64 4K;\n\n    location ~ ^/(?:build|tests|config|lib|3rdparty|templates|data)/ {\n        deny all;\n    }\n\n    location ~ \\.php(?:$|/) {\n        include fastcgi_params;\n        fastcgi_split_path_info ^(.+\\.php)(/.+)$;\n        fastcgi_pass unix:/run/php/php8.2-fpm.sock;\n        fastcgi_index index.php;\n        fastcgi_param SCRIPT_FILENAME $document_root$fastcgi_script_name;\n        fastcgi_param PATH_INFO $fastcgi_path_info;\n    }\n\n}\n</code></pre>\n','\nClone repository Nextcloud:\n\ngit clone https://github.com/nextcloud/server.git /var/www/nextcloud```\ncd /var/www/nextcloud\n\nGive the permission to folders:\n\nchown -R www-data:www-data /var/www/nextcloud\nchmod -R 755 /var/www/nextcloud\n\nCreate the database\n\nEnter:\nsudo mysql -u root\nCreate:\nCREATE DATABASE nextcloud;\nCREATE USER \'nextcloud\'@\'localhost\' IDENTIFIED BY \'nextcloudpassword\';\nGRANT ALL PRIVILEGES ON nextcloud.* TO \'nextcloud\'@\'localhost\';\nFLUSH PRIVILEGES;\nEXIT;\n\nCreate Nginx Configuration:\n\nserver {\n    server_name x5.znand.my.id;\n    root /var/www/nextcloud;\n\n    index index.php index.html;\n\n    location / {\n        try_files $uri $uri/ /index.php$is_args$args;\n    }\n        # Tambahkan batasan upload & buffer\n    client_max_body_size 20G;\n    fastcgi_buffers 64 4K;\n\n    location ~ ^/(?:build|tests|config|lib|3rdparty|templates|data)/ {\n        deny all;\n    }\n\n    location ~ \\.php(?:$|/) {\n        include fastcgi_params;\n        fastcgi_split_path_info ^(.+\\.php)(/.+)$;\n        fastcgi_pass unix:/run/php/php8.2-fpm.sock;\n        fastcgi_index index.php;\n        fastcgi_param SCRIPT_FILENAME $document_root$fastcgi_script_name;\n        fastcgi_param PATH_INFO $fastcgi_path_info;\n    }\n\n}\n\n',1,'2025-03-02 01:47:59','2025-03-02 01:47:59','configuring-nextcloud','deploy-nextcloud-in-ubuntu-server-manually','version','1. Clone repository Nextcloud:\r\n\r\n<code>git clone https://github.com/nextcloud/server.git /var/www/nextcloud```\r\ncd /var/www/nextcloud</code>\r\n\r\n2. Give the permission to folders:\r\n\r\n<code>chown -R www-data:www-data /var/www/nextcloud\r\nchmod -R 755 /var/www/nextcloud</code>\r\n\r\n3. Create the database\r\n\r\nEnter:\r\n```sudo mysql -u root```\r\n\r\nCreate:\r\n<code>CREATE DATABASE nextcloud;\r\nCREATE USER \'nextcloud\'@\'localhost\' IDENTIFIED BY \'nextcloudpassword\';\r\nGRANT ALL PRIVILEGES ON nextcloud.* TO \'nextcloud\'@\'localhost\';\r\nFLUSH PRIVILEGES;\r\nEXIT;</code>\r\n\r\n4. Create Nginx Configuration:\r\n\r\n```\r\nserver {\r\n    server_name x5.znand.my.id;\r\n    root /var/www/nextcloud;\r\n\r\n    index index.php index.html;\r\n\r\n    location / {\r\n        try_files $uri $uri/ /index.php$is_args$args;\r\n    }\r\n        # Tambahkan batasan upload & buffer\r\n    client_max_body_size 20G;\r\n    fastcgi_buffers 64 4K;\r\n\r\n    location ~ ^/(?:build|tests|config|lib|3rdparty|templates|data)/ {\r\n        deny all;\r\n    }\r\n\r\n    location ~ \\.php(?:$|/) {\r\n        include fastcgi_params;\r\n        fastcgi_split_path_info ^(.+\\.php)(/.+)$;\r\n        fastcgi_pass unix:/run/php/php8.2-fpm.sock;\r\n        fastcgi_index index.php;\r\n        fastcgi_param SCRIPT_FILENAME $document_root$fastcgi_script_name;\r\n        fastcgi_param PATH_INFO $fastcgi_path_info;\r\n    }\r\n\r\n}\r\n```','',3),
(97,8,'Configuring Nextcloud','<ol id=\"bkmrk-clone-repository-nex\">\n<li>Clone repository Nextcloud:</li>\n</ol>\n<p id=\"bkmrk-git-clone-https%3A%2F%2Fgi\"><code>git clone https://github.com/nextcloud/server.git /var/www/nextcloud```\ncd /var/www/nextcloud</code></p>\n<ol start=\"2\" id=\"bkmrk-give-the-permission-\">\n<li>Give the permission to folders:</li>\n</ol>\n<p id=\"bkmrk-chown--r-www-data%3Aww\"><code>chown -R www-data:www-data /var/www/nextcloud\nchmod -R 755 /var/www/nextcloud</code></p>\n<ol start=\"3\" id=\"bkmrk-create-the-database\">\n<li>Create the database</li>\n</ol>\n<p id=\"bkmrk-enter%3A-sudo-mysql--u\">Enter:\n<code>sudo mysql -u root</code></p>\n<p id=\"bkmrk-create%3A-create-datab\">Create:\n<code>CREATE DATABASE nextcloud;\nCREATE USER \'nextcloud\'@\'localhost\' IDENTIFIED BY \'nextcloudpassword\';\nGRANT ALL PRIVILEGES ON nextcloud.* TO \'nextcloud\'@\'localhost\';\nFLUSH PRIVILEGES;\nEXIT;</code></p>\n<ol start=\"4\" id=\"bkmrk-create-nginx-configu\">\n<li>Create Nginx Configuration:</li>\n</ol>\n<p id=\"bkmrk-cd-%2Fetc%2Fnginx%2Fsites-\"><code>cd /etc/nginx/sites-available</code>\n<code>sudo nano nextcloud</code></p>\n<p id=\"bkmrk-fill-with%3A\">Fill with:</p>\n<pre id=\"bkmrk-server-%7B-server_name\"><code>server {\n    server_name x5.znand.my.id;\n    root /var/www/nextcloud;\n\n    index index.php index.html;\n\n    location / {\n        try_files $uri $uri/ /index.php$is_args$args;\n    }\n        # Tambahkan batasan upload &amp; buffer\n    client_max_body_size 20G;\n    fastcgi_buffers 64 4K;\n\n    location ~ ^/(?:build|tests|config|lib|3rdparty|templates|data)/ {\n        deny all;\n    }\n\n    location ~ \\.php(?:$|/) {\n        include fastcgi_params;\n        fastcgi_split_path_info ^(.+\\.php)(/.+)$;\n        fastcgi_pass unix:/run/php/php8.2-fpm.sock;\n        fastcgi_index index.php;\n        fastcgi_param SCRIPT_FILENAME $document_root$fastcgi_script_name;\n        fastcgi_param PATH_INFO $fastcgi_path_info;\n    }\n\n}\n</code></pre>\n','\nClone repository Nextcloud:\n\ngit clone https://github.com/nextcloud/server.git /var/www/nextcloud```\ncd /var/www/nextcloud\n\nGive the permission to folders:\n\nchown -R www-data:www-data /var/www/nextcloud\nchmod -R 755 /var/www/nextcloud\n\nCreate the database\n\nEnter:\nsudo mysql -u root\nCreate:\nCREATE DATABASE nextcloud;\nCREATE USER \'nextcloud\'@\'localhost\' IDENTIFIED BY \'nextcloudpassword\';\nGRANT ALL PRIVILEGES ON nextcloud.* TO \'nextcloud\'@\'localhost\';\nFLUSH PRIVILEGES;\nEXIT;\n\nCreate Nginx Configuration:\n\ncd /etc/nginx/sites-available\nsudo nano nextcloud\nFill with:\nserver {\n    server_name x5.znand.my.id;\n    root /var/www/nextcloud;\n\n    index index.php index.html;\n\n    location / {\n        try_files $uri $uri/ /index.php$is_args$args;\n    }\n        # Tambahkan batasan upload & buffer\n    client_max_body_size 20G;\n    fastcgi_buffers 64 4K;\n\n    location ~ ^/(?:build|tests|config|lib|3rdparty|templates|data)/ {\n        deny all;\n    }\n\n    location ~ \\.php(?:$|/) {\n        include fastcgi_params;\n        fastcgi_split_path_info ^(.+\\.php)(/.+)$;\n        fastcgi_pass unix:/run/php/php8.2-fpm.sock;\n        fastcgi_index index.php;\n        fastcgi_param SCRIPT_FILENAME $document_root$fastcgi_script_name;\n        fastcgi_param PATH_INFO $fastcgi_path_info;\n    }\n\n}\n\n',1,'2025-03-02 01:51:36','2025-03-02 01:51:36','configuring-nextcloud','deploy-nextcloud-in-ubuntu-server-manually','version','1. Clone repository Nextcloud:\r\n\r\n<code>git clone https://github.com/nextcloud/server.git /var/www/nextcloud```\r\ncd /var/www/nextcloud</code>\r\n\r\n2. Give the permission to folders:\r\n\r\n<code>chown -R www-data:www-data /var/www/nextcloud\r\nchmod -R 755 /var/www/nextcloud</code>\r\n\r\n3. Create the database\r\n\r\nEnter:\r\n```sudo mysql -u root```\r\n\r\nCreate:\r\n<code>CREATE DATABASE nextcloud;\r\nCREATE USER \'nextcloud\'@\'localhost\' IDENTIFIED BY \'nextcloudpassword\';\r\nGRANT ALL PRIVILEGES ON nextcloud.* TO \'nextcloud\'@\'localhost\';\r\nFLUSH PRIVILEGES;\r\nEXIT;</code>\r\n\r\n4. Create Nginx Configuration:\r\n\r\n```cd /etc/nginx/sites-available```\r\n```sudo nano nextcloud```\r\n\r\nFill with:\r\n```\r\nserver {\r\n    server_name x5.znand.my.id;\r\n    root /var/www/nextcloud;\r\n\r\n    index index.php index.html;\r\n\r\n    location / {\r\n        try_files $uri $uri/ /index.php$is_args$args;\r\n    }\r\n        # Tambahkan batasan upload & buffer\r\n    client_max_body_size 20G;\r\n    fastcgi_buffers 64 4K;\r\n\r\n    location ~ ^/(?:build|tests|config|lib|3rdparty|templates|data)/ {\r\n        deny all;\r\n    }\r\n\r\n    location ~ \\.php(?:$|/) {\r\n        include fastcgi_params;\r\n        fastcgi_split_path_info ^(.+\\.php)(/.+)$;\r\n        fastcgi_pass unix:/run/php/php8.2-fpm.sock;\r\n        fastcgi_index index.php;\r\n        fastcgi_param SCRIPT_FILENAME $document_root$fastcgi_script_name;\r\n        fastcgi_param PATH_INFO $fastcgi_path_info;\r\n    }\r\n\r\n}\r\n```','',4),
(99,8,'Configuring Nextcloud','<ol id=\"bkmrk-clone-repository-nex\">\n<li>Clone repository Nextcloud:</li>\n</ol>\n<p id=\"bkmrk-git-clone-https%3A%2F%2Fgi\"><code>git clone https://github.com/nextcloud/server.git /var/www/nextcloud```\ncd /var/www/nextcloud</code></p>\n<ol start=\"2\" id=\"bkmrk-give-the-permission-\">\n<li>Give the permission to folders:</li>\n</ol>\n<p id=\"bkmrk-chown--r-www-data%3Aww\"><code>chown -R www-data:www-data /var/www/nextcloud\nchmod -R 755 /var/www/nextcloud</code></p>\n<ol start=\"3\" id=\"bkmrk-create-the-database\">\n<li>Create the database</li>\n</ol>\n<p id=\"bkmrk-enter%3A-sudo-mysql--u\">Enter:\n<code>sudo mysql -u root</code></p>\n<p id=\"bkmrk-create%3A-create-datab\">Create:\n<code>CREATE DATABASE nextcloud;\nCREATE USER \'nextcloud\'@\'localhost\' IDENTIFIED BY \'nextcloudpassword\';\nGRANT ALL PRIVILEGES ON nextcloud.* TO \'nextcloud\'@\'localhost\';\nFLUSH PRIVILEGES;\nEXIT;</code></p>\n<ol start=\"4\" id=\"bkmrk-create-nginx-configu\">\n<li>Create Nginx Configuration:</li>\n</ol>\n<p id=\"bkmrk-cd-%2Fetc%2Fnginx%2Fsites-\"><code>cd /etc/nginx/sites-available</code>\n<code>sudo nano nextcloud</code></p>\n<p id=\"bkmrk-fill-with%3A\">Fill with:</p>\n<pre id=\"bkmrk-server-%7B-server_name\"><code>server {\n    server_name x5.znand.my.id;\n    root /var/www/nextcloud;\n\n    index index.php index.html;\n\n    location / {\n        try_files $uri $uri/ /index.php$is_args$args;\n    }\n        # Tambahkan batasan upload &amp; buffer\n    client_max_body_size 20G;\n    fastcgi_buffers 64 4K;\n\n    location ~ ^/(?:build|tests|config|lib|3rdparty|templates|data)/ {\n        deny all;\n    }\n\n    location ~ \\.php(?:$|/) {\n        include fastcgi_params;\n        fastcgi_split_path_info ^(.+\\.php)(/.+)$;\n        fastcgi_pass unix:/run/php/php8.2-fpm.sock;\n        fastcgi_index index.php;\n        fastcgi_param SCRIPT_FILENAME $document_root$fastcgi_script_name;\n        fastcgi_param PATH_INFO $fastcgi_path_info;\n    }\n\n}\n</code></pre>\n<p id=\"bkmrk-sudo-rm-default-sudo\"><code>sudo rm default</code>\n<code>sudo systemctl restart nginx</code>\n<code>sudo systemctl restart php8.2-fpm</code></p>\n','\nClone repository Nextcloud:\n\ngit clone https://github.com/nextcloud/server.git /var/www/nextcloud```\ncd /var/www/nextcloud\n\nGive the permission to folders:\n\nchown -R www-data:www-data /var/www/nextcloud\nchmod -R 755 /var/www/nextcloud\n\nCreate the database\n\nEnter:\nsudo mysql -u root\nCreate:\nCREATE DATABASE nextcloud;\nCREATE USER \'nextcloud\'@\'localhost\' IDENTIFIED BY \'nextcloudpassword\';\nGRANT ALL PRIVILEGES ON nextcloud.* TO \'nextcloud\'@\'localhost\';\nFLUSH PRIVILEGES;\nEXIT;\n\nCreate Nginx Configuration:\n\ncd /etc/nginx/sites-available\nsudo nano nextcloud\nFill with:\nserver {\n    server_name x5.znand.my.id;\n    root /var/www/nextcloud;\n\n    index index.php index.html;\n\n    location / {\n        try_files $uri $uri/ /index.php$is_args$args;\n    }\n        # Tambahkan batasan upload & buffer\n    client_max_body_size 20G;\n    fastcgi_buffers 64 4K;\n\n    location ~ ^/(?:build|tests|config|lib|3rdparty|templates|data)/ {\n        deny all;\n    }\n\n    location ~ \\.php(?:$|/) {\n        include fastcgi_params;\n        fastcgi_split_path_info ^(.+\\.php)(/.+)$;\n        fastcgi_pass unix:/run/php/php8.2-fpm.sock;\n        fastcgi_index index.php;\n        fastcgi_param SCRIPT_FILENAME $document_root$fastcgi_script_name;\n        fastcgi_param PATH_INFO $fastcgi_path_info;\n    }\n\n}\n\nsudo rm default\nsudo systemctl restart nginx\nsudo systemctl restart php8.2-fpm\n',1,'2025-03-02 01:52:46','2025-03-02 01:52:46','configuring-nextcloud','deploy-nextcloud-in-ubuntu-server-manually','version','1. Clone repository Nextcloud:\r\n\r\n<code>git clone https://github.com/nextcloud/server.git /var/www/nextcloud```\r\ncd /var/www/nextcloud</code>\r\n\r\n2. Give the permission to folders:\r\n\r\n<code>chown -R www-data:www-data /var/www/nextcloud\r\nchmod -R 755 /var/www/nextcloud</code>\r\n\r\n3. Create the database\r\n\r\nEnter:\r\n```sudo mysql -u root```\r\n\r\nCreate:\r\n<code>CREATE DATABASE nextcloud;\r\nCREATE USER \'nextcloud\'@\'localhost\' IDENTIFIED BY \'nextcloudpassword\';\r\nGRANT ALL PRIVILEGES ON nextcloud.* TO \'nextcloud\'@\'localhost\';\r\nFLUSH PRIVILEGES;\r\nEXIT;</code>\r\n\r\n4. Create Nginx Configuration:\r\n\r\n```cd /etc/nginx/sites-available```\r\n```sudo nano nextcloud```\r\n\r\nFill with:\r\n```\r\nserver {\r\n    server_name x5.znand.my.id;\r\n    root /var/www/nextcloud;\r\n\r\n    index index.php index.html;\r\n\r\n    location / {\r\n        try_files $uri $uri/ /index.php$is_args$args;\r\n    }\r\n        # Tambahkan batasan upload & buffer\r\n    client_max_body_size 20G;\r\n    fastcgi_buffers 64 4K;\r\n\r\n    location ~ ^/(?:build|tests|config|lib|3rdparty|templates|data)/ {\r\n        deny all;\r\n    }\r\n\r\n    location ~ \\.php(?:$|/) {\r\n        include fastcgi_params;\r\n        fastcgi_split_path_info ^(.+\\.php)(/.+)$;\r\n        fastcgi_pass unix:/run/php/php8.2-fpm.sock;\r\n        fastcgi_index index.php;\r\n        fastcgi_param SCRIPT_FILENAME $document_root$fastcgi_script_name;\r\n        fastcgi_param PATH_INFO $fastcgi_path_info;\r\n    }\r\n\r\n}\r\n```\r\n\r\n```sudo rm default```\r\n```sudo systemctl restart nginx```\r\n```sudo systemctl restart php8.2-fpm```','',5),
(101,8,'Configuring Nextcloud','<ol id=\"bkmrk-clone-repository-nex\">\n<li>Clone repository Nextcloud:</li>\n</ol>\n<p id=\"bkmrk-git-clone-https%3A%2F%2Fgi\"><code>git clone https://github.com/nextcloud/server.git /var/www/nextcloud```\ncd /var/www/nextcloud</code></p>\n<ol start=\"2\" id=\"bkmrk-give-the-permission-\">\n<li>Give the permission to folders:</li>\n</ol>\n<p id=\"bkmrk-chown--r-www-data%3Aww\"><code>chown -R www-data:www-data /var/www/nextcloud\nchmod -R 755 /var/www/nextcloud</code></p>\n<ol start=\"3\" id=\"bkmrk-create-the-database\">\n<li>Create the database</li>\n</ol>\n<p id=\"bkmrk-enter%3A-sudo-mysql--u\">Enter:\n<code>sudo mysql -u root</code></p>\n<p id=\"bkmrk-create%3A-create-datab\">Create:\n<code>CREATE DATABASE nextcloud;\nCREATE USER \'nextcloud\'@\'localhost\' IDENTIFIED BY \'nextcloudpassword\';\nGRANT ALL PRIVILEGES ON nextcloud.* TO \'nextcloud\'@\'localhost\';\nFLUSH PRIVILEGES;\nEXIT;</code></p>\n<ol start=\"4\" id=\"bkmrk-create-nginx-configu\">\n<li>Create Nginx Configuration:</li>\n</ol>\n<p id=\"bkmrk-cd-%2Fetc%2Fnginx%2Fsites-\"><code>cd /etc/nginx/sites-available</code>\n<code>sudo nano nextcloud</code></p>\n<p id=\"bkmrk-fill-with%3A\">Fill with:</p>\n<pre id=\"bkmrk-server-%7B-server_name\"><code>server {\n    server_name x5.znand.my.id;\n    root /var/www/nextcloud;\n\n    index index.php index.html;\n\n    location / {\n        try_files $uri $uri/ /index.php$is_args$args;\n    }\n        # Tambahkan batasan upload &amp; buffer\n    client_max_body_size 20G;\n    fastcgi_buffers 64 4K;\n\n    location ~ ^/(?:build|tests|config|lib|3rdparty|templates|data)/ {\n        deny all;\n    }\n\n    location ~ \\.php(?:$|/) {\n        include fastcgi_params;\n        fastcgi_split_path_info ^(.+\\.php)(/.+)$;\n        fastcgi_pass unix:/run/php/php8.2-fpm.sock;\n        fastcgi_index index.php;\n        fastcgi_param SCRIPT_FILENAME $document_root$fastcgi_script_name;\n        fastcgi_param PATH_INFO $fastcgi_path_info;\n    }\n\n}\n</code></pre>\n<p id=\"bkmrk-sudo-rm-default-make\"><code>sudo rm default</code>\nMake symlink to sites-enabled\n<code>sudo ln -s /etc/nginx/sites-available/nextcloud /etc/nginx/sites-enabled/</code>\nRestart again\n<code>sudo systemctl restart nginx\nsudo systemctl restart php8.2-fpm</code></p>\n','\nClone repository Nextcloud:\n\ngit clone https://github.com/nextcloud/server.git /var/www/nextcloud```\ncd /var/www/nextcloud\n\nGive the permission to folders:\n\nchown -R www-data:www-data /var/www/nextcloud\nchmod -R 755 /var/www/nextcloud\n\nCreate the database\n\nEnter:\nsudo mysql -u root\nCreate:\nCREATE DATABASE nextcloud;\nCREATE USER \'nextcloud\'@\'localhost\' IDENTIFIED BY \'nextcloudpassword\';\nGRANT ALL PRIVILEGES ON nextcloud.* TO \'nextcloud\'@\'localhost\';\nFLUSH PRIVILEGES;\nEXIT;\n\nCreate Nginx Configuration:\n\ncd /etc/nginx/sites-available\nsudo nano nextcloud\nFill with:\nserver {\n    server_name x5.znand.my.id;\n    root /var/www/nextcloud;\n\n    index index.php index.html;\n\n    location / {\n        try_files $uri $uri/ /index.php$is_args$args;\n    }\n        # Tambahkan batasan upload & buffer\n    client_max_body_size 20G;\n    fastcgi_buffers 64 4K;\n\n    location ~ ^/(?:build|tests|config|lib|3rdparty|templates|data)/ {\n        deny all;\n    }\n\n    location ~ \\.php(?:$|/) {\n        include fastcgi_params;\n        fastcgi_split_path_info ^(.+\\.php)(/.+)$;\n        fastcgi_pass unix:/run/php/php8.2-fpm.sock;\n        fastcgi_index index.php;\n        fastcgi_param SCRIPT_FILENAME $document_root$fastcgi_script_name;\n        fastcgi_param PATH_INFO $fastcgi_path_info;\n    }\n\n}\n\nsudo rm default\nMake symlink to sites-enabled\nsudo ln -s /etc/nginx/sites-available/nextcloud /etc/nginx/sites-enabled/\nRestart again\nsudo systemctl restart nginx\nsudo systemctl restart php8.2-fpm\n',1,'2025-03-02 01:54:38','2025-03-02 01:54:38','configuring-nextcloud','deploy-nextcloud-in-ubuntu-server-manually','version','1. Clone repository Nextcloud:\r\n\r\n<code>git clone https://github.com/nextcloud/server.git /var/www/nextcloud```\r\ncd /var/www/nextcloud</code>\r\n\r\n2. Give the permission to folders:\r\n\r\n<code>chown -R www-data:www-data /var/www/nextcloud\r\nchmod -R 755 /var/www/nextcloud</code>\r\n\r\n3. Create the database\r\n\r\nEnter:\r\n```sudo mysql -u root```\r\n\r\nCreate:\r\n<code>CREATE DATABASE nextcloud;\r\nCREATE USER \'nextcloud\'@\'localhost\' IDENTIFIED BY \'nextcloudpassword\';\r\nGRANT ALL PRIVILEGES ON nextcloud.* TO \'nextcloud\'@\'localhost\';\r\nFLUSH PRIVILEGES;\r\nEXIT;</code>\r\n\r\n4. Create Nginx Configuration:\r\n\r\n```cd /etc/nginx/sites-available```\r\n```sudo nano nextcloud```\r\n\r\nFill with:\r\n```\r\nserver {\r\n    server_name x5.znand.my.id;\r\n    root /var/www/nextcloud;\r\n\r\n    index index.php index.html;\r\n\r\n    location / {\r\n        try_files $uri $uri/ /index.php$is_args$args;\r\n    }\r\n        # Tambahkan batasan upload & buffer\r\n    client_max_body_size 20G;\r\n    fastcgi_buffers 64 4K;\r\n\r\n    location ~ ^/(?:build|tests|config|lib|3rdparty|templates|data)/ {\r\n        deny all;\r\n    }\r\n\r\n    location ~ \\.php(?:$|/) {\r\n        include fastcgi_params;\r\n        fastcgi_split_path_info ^(.+\\.php)(/.+)$;\r\n        fastcgi_pass unix:/run/php/php8.2-fpm.sock;\r\n        fastcgi_index index.php;\r\n        fastcgi_param SCRIPT_FILENAME $document_root$fastcgi_script_name;\r\n        fastcgi_param PATH_INFO $fastcgi_path_info;\r\n    }\r\n\r\n}\r\n```\r\n\r\n```sudo rm default```\r\nMake symlink to sites-enabled\r\n```sudo ln -s /etc/nginx/sites-available/nextcloud /etc/nginx/sites-enabled/```\r\nRestart again\r\n<code>sudo systemctl restart nginx\r\nsudo systemctl restart php8.2-fpm</code>','',6),
(103,8,'Configuring Nextcloud','<ol id=\"bkmrk-clone-repository-nex\">\n<li>Clone repository Nextcloud:</li>\n</ol>\n<p id=\"bkmrk-git-clone-https%3A%2F%2Fgi\"><code>git clone https://github.com/nextcloud/server.git /var/www/nextcloud```\ncd /var/www/nextcloud</code></p>\n<ol start=\"2\" id=\"bkmrk-give-the-permission-\">\n<li>Give the permission to folders:</li>\n</ol>\n<p id=\"bkmrk-chown--r-www-data%3Aww\"><code>chown -R www-data:www-data /var/www/nextcloud\nchmod -R 755 /var/www/nextcloud</code></p>\n<ol start=\"3\" id=\"bkmrk-create-the-database\">\n<li>Create the database</li>\n</ol>\n<p id=\"bkmrk-enter%3A-sudo-mysql--u\">Enter:\n<code>sudo mysql -u root</code></p>\n<p id=\"bkmrk-create%3A-create-datab\">Create:\n<code>CREATE DATABASE nextcloud;\nCREATE USER \'nextcloud\'@\'localhost\' IDENTIFIED BY \'nextcloudpassword\';\nGRANT ALL PRIVILEGES ON nextcloud.* TO \'nextcloud\'@\'localhost\';\nFLUSH PRIVILEGES;\nEXIT;</code></p>\n<ol start=\"4\" id=\"bkmrk-create-nginx-configu\">\n<li>Create Nginx Configuration:</li>\n</ol>\n<p id=\"bkmrk-cd-%2Fetc%2Fnginx%2Fsites-\"><code>cd /etc/nginx/sites-available</code>\n<code>sudo nano nextcloud</code></p>\n<p id=\"bkmrk-fill-with%3A\">Fill with:</p>\n<pre id=\"bkmrk-server-%7B-server_name\"><code>server {\n    server_name x5.znand.my.id;\n    root /var/www/nextcloud;\n\n    index index.php index.html;\n\n    location / {\n        try_files $uri $uri/ /index.php$is_args$args;\n    }\n        # Tambahkan batasan upload &amp; buffer\n    client_max_body_size 20G;\n    fastcgi_buffers 64 4K;\n\n    location ~ ^/(?:build|tests|config|lib|3rdparty|templates|data)/ {\n        deny all;\n    }\n\n    location ~ \\.php(?:$|/) {\n        include fastcgi_params;\n        fastcgi_split_path_info ^(.+\\.php)(/.+)$;\n        fastcgi_pass unix:/run/php/php8.2-fpm.sock;\n        fastcgi_index index.php;\n        fastcgi_param SCRIPT_FILENAME $document_root$fastcgi_script_name;\n        fastcgi_param PATH_INFO $fastcgi_path_info;\n    }\n\n}\n</code></pre>\n<p id=\"bkmrk-sudo-rm-default-make\"><code>sudo rm default</code>\nMake symlink to sites-enabled\n<code>sudo ln -s /etc/nginx/sites-available/nextcloud /etc/nginx/sites-enabled/</code>\nMake sure the conf file is ok and successful\n<code>sudo nginx -t</code>\nRestart again\n<code>sudo systemctl restart nginx\nsudo systemctl restart php8.2-fpm</code></p>\n','\nClone repository Nextcloud:\n\ngit clone https://github.com/nextcloud/server.git /var/www/nextcloud```\ncd /var/www/nextcloud\n\nGive the permission to folders:\n\nchown -R www-data:www-data /var/www/nextcloud\nchmod -R 755 /var/www/nextcloud\n\nCreate the database\n\nEnter:\nsudo mysql -u root\nCreate:\nCREATE DATABASE nextcloud;\nCREATE USER \'nextcloud\'@\'localhost\' IDENTIFIED BY \'nextcloudpassword\';\nGRANT ALL PRIVILEGES ON nextcloud.* TO \'nextcloud\'@\'localhost\';\nFLUSH PRIVILEGES;\nEXIT;\n\nCreate Nginx Configuration:\n\ncd /etc/nginx/sites-available\nsudo nano nextcloud\nFill with:\nserver {\n    server_name x5.znand.my.id;\n    root /var/www/nextcloud;\n\n    index index.php index.html;\n\n    location / {\n        try_files $uri $uri/ /index.php$is_args$args;\n    }\n        # Tambahkan batasan upload & buffer\n    client_max_body_size 20G;\n    fastcgi_buffers 64 4K;\n\n    location ~ ^/(?:build|tests|config|lib|3rdparty|templates|data)/ {\n        deny all;\n    }\n\n    location ~ \\.php(?:$|/) {\n        include fastcgi_params;\n        fastcgi_split_path_info ^(.+\\.php)(/.+)$;\n        fastcgi_pass unix:/run/php/php8.2-fpm.sock;\n        fastcgi_index index.php;\n        fastcgi_param SCRIPT_FILENAME $document_root$fastcgi_script_name;\n        fastcgi_param PATH_INFO $fastcgi_path_info;\n    }\n\n}\n\nsudo rm default\nMake symlink to sites-enabled\nsudo ln -s /etc/nginx/sites-available/nextcloud /etc/nginx/sites-enabled/\nMake sure the conf file is ok and successful\nsudo nginx -t\nRestart again\nsudo systemctl restart nginx\nsudo systemctl restart php8.2-fpm\n',1,'2025-03-02 01:57:08','2025-03-02 01:57:08','configuring-nextcloud','deploy-nextcloud-in-ubuntu-server-manually','version','1. Clone repository Nextcloud:\r\n\r\n<code>git clone https://github.com/nextcloud/server.git /var/www/nextcloud```\r\ncd /var/www/nextcloud</code>\r\n\r\n2. Give the permission to folders:\r\n\r\n<code>chown -R www-data:www-data /var/www/nextcloud\r\nchmod -R 755 /var/www/nextcloud</code>\r\n\r\n3. Create the database\r\n\r\nEnter:\r\n```sudo mysql -u root```\r\n\r\nCreate:\r\n<code>CREATE DATABASE nextcloud;\r\nCREATE USER \'nextcloud\'@\'localhost\' IDENTIFIED BY \'nextcloudpassword\';\r\nGRANT ALL PRIVILEGES ON nextcloud.* TO \'nextcloud\'@\'localhost\';\r\nFLUSH PRIVILEGES;\r\nEXIT;</code>\r\n\r\n4. Create Nginx Configuration:\r\n\r\n```cd /etc/nginx/sites-available```\r\n```sudo nano nextcloud```\r\n\r\nFill with:\r\n```\r\nserver {\r\n    server_name x5.znand.my.id;\r\n    root /var/www/nextcloud;\r\n\r\n    index index.php index.html;\r\n\r\n    location / {\r\n        try_files $uri $uri/ /index.php$is_args$args;\r\n    }\r\n        # Tambahkan batasan upload & buffer\r\n    client_max_body_size 20G;\r\n    fastcgi_buffers 64 4K;\r\n\r\n    location ~ ^/(?:build|tests|config|lib|3rdparty|templates|data)/ {\r\n        deny all;\r\n    }\r\n\r\n    location ~ \\.php(?:$|/) {\r\n        include fastcgi_params;\r\n        fastcgi_split_path_info ^(.+\\.php)(/.+)$;\r\n        fastcgi_pass unix:/run/php/php8.2-fpm.sock;\r\n        fastcgi_index index.php;\r\n        fastcgi_param SCRIPT_FILENAME $document_root$fastcgi_script_name;\r\n        fastcgi_param PATH_INFO $fastcgi_path_info;\r\n    }\r\n\r\n}\r\n```\r\n\r\n```sudo rm default```\r\nMake symlink to sites-enabled\r\n```sudo ln -s /etc/nginx/sites-available/nextcloud /etc/nginx/sites-enabled/```\r\nMake sure the conf file is ok and successful\r\n```sudo nginx -t```\r\nRestart again\r\n<code>sudo systemctl restart nginx\r\nsudo systemctl restart php8.2-fpm</code>','',7),
(105,8,'Configuring Nextcloud','<ol id=\"bkmrk-clone-repository-nex\">\n<li>Clone repository Nextcloud:</li>\n</ol>\n<p id=\"bkmrk-git-clone-https%3A%2F%2Fgi\"><code>git clone https://github.com/nextcloud/server.git /var/www/nextcloud```\ncd /var/www/nextcloud</code></p>\n<ol start=\"2\" id=\"bkmrk-give-the-permission-\">\n<li>Give the permission to folders:</li>\n</ol>\n<p id=\"bkmrk-chown--r-www-data%3Aww\"><code>chown -R www-data:www-data /var/www/nextcloud\nchmod -R 755 /var/www/nextcloud</code></p>\n<ol start=\"3\" id=\"bkmrk-create-the-database\">\n<li>Create the database</li>\n</ol>\n<p id=\"bkmrk-enter%3A-sudo-mysql--u\">Enter:\n<code>sudo mysql -u root</code></p>\n<p id=\"bkmrk-create%3A-create-datab\">Create:\n<code>CREATE DATABASE nextcloud;\nCREATE USER \'nextcloud\'@\'localhost\' IDENTIFIED BY \'nextcloudpassword\';\nGRANT ALL PRIVILEGES ON nextcloud.* TO \'nextcloud\'@\'localhost\';\nFLUSH PRIVILEGES;\nEXIT;</code></p>\n<ol start=\"4\" id=\"bkmrk-create-nginx-configu\">\n<li>Create Nginx Configuration:</li>\n</ol>\n<p id=\"bkmrk-cd-%2Fetc%2Fnginx%2Fsites-\"><code>cd /etc/nginx/sites-available</code>\n<code>sudo nano nextcloud</code></p>\n<p id=\"bkmrk-fill-with%3A\">Fill with:</p>\n<pre id=\"bkmrk-server-%7B-server_name\"><code>server {\n    server_name x5.znand.my.id;\n    root /var/www/nextcloud;\n\n    index index.php index.html;\n\n    location / {\n        try_files $uri $uri/ /index.php$is_args$args;\n    }\n        # Tambahkan batasan upload &amp; buffer\n    client_max_body_size 20G;\n    fastcgi_buffers 64 4K;\n\n    location ~ ^/(?:build|tests|config|lib|3rdparty|templates|data)/ {\n        deny all;\n    }\n\n    location ~ \\.php(?:$|/) {\n        include fastcgi_params;\n        fastcgi_split_path_info ^(.+\\.php)(/.+)$;\n        fastcgi_pass unix:/run/php/php8.2-fpm.sock;\n        fastcgi_index index.php;\n        fastcgi_param SCRIPT_FILENAME $document_root$fastcgi_script_name;\n        fastcgi_param PATH_INFO $fastcgi_path_info;\n    }\n\n}\n</code></pre>\n<p id=\"bkmrk-sudo-rm-default-make\"><code>sudo rm default</code>\nMake symlink to sites-enabled\n<code>sudo ln -s /etc/nginx/sites-available/nextcloud /etc/nginx/sites-enabled/</code>\nMake sure the conf file is ok and successful\n<code>sudo nginx -t</code>\nRestart again\n<code>sudo systemctl restart nginx\nsudo systemctl restart php8.2-fpm</code></p>\n<p id=\"bkmrk-run-this-if-your-web\">Run this if your website has error; Composer autoloader not found\n<code>cd /var/www/nextcloud\nsudo git submodule update --init</code></p>\n','\nClone repository Nextcloud:\n\ngit clone https://github.com/nextcloud/server.git /var/www/nextcloud```\ncd /var/www/nextcloud\n\nGive the permission to folders:\n\nchown -R www-data:www-data /var/www/nextcloud\nchmod -R 755 /var/www/nextcloud\n\nCreate the database\n\nEnter:\nsudo mysql -u root\nCreate:\nCREATE DATABASE nextcloud;\nCREATE USER \'nextcloud\'@\'localhost\' IDENTIFIED BY \'nextcloudpassword\';\nGRANT ALL PRIVILEGES ON nextcloud.* TO \'nextcloud\'@\'localhost\';\nFLUSH PRIVILEGES;\nEXIT;\n\nCreate Nginx Configuration:\n\ncd /etc/nginx/sites-available\nsudo nano nextcloud\nFill with:\nserver {\n    server_name x5.znand.my.id;\n    root /var/www/nextcloud;\n\n    index index.php index.html;\n\n    location / {\n        try_files $uri $uri/ /index.php$is_args$args;\n    }\n        # Tambahkan batasan upload & buffer\n    client_max_body_size 20G;\n    fastcgi_buffers 64 4K;\n\n    location ~ ^/(?:build|tests|config|lib|3rdparty|templates|data)/ {\n        deny all;\n    }\n\n    location ~ \\.php(?:$|/) {\n        include fastcgi_params;\n        fastcgi_split_path_info ^(.+\\.php)(/.+)$;\n        fastcgi_pass unix:/run/php/php8.2-fpm.sock;\n        fastcgi_index index.php;\n        fastcgi_param SCRIPT_FILENAME $document_root$fastcgi_script_name;\n        fastcgi_param PATH_INFO $fastcgi_path_info;\n    }\n\n}\n\nsudo rm default\nMake symlink to sites-enabled\nsudo ln -s /etc/nginx/sites-available/nextcloud /etc/nginx/sites-enabled/\nMake sure the conf file is ok and successful\nsudo nginx -t\nRestart again\nsudo systemctl restart nginx\nsudo systemctl restart php8.2-fpm\nRun this if your website has error; Composer autoloader not found\ncd /var/www/nextcloud\nsudo git submodule update --init\n',1,'2025-03-02 02:02:42','2025-03-02 02:02:42','configuring-nextcloud','deploy-nextcloud-in-ubuntu-server-manually','version','1. Clone repository Nextcloud:\r\n\r\n<code>git clone https://github.com/nextcloud/server.git /var/www/nextcloud```\r\ncd /var/www/nextcloud</code>\r\n\r\n2. Give the permission to folders:\r\n\r\n<code>chown -R www-data:www-data /var/www/nextcloud\r\nchmod -R 755 /var/www/nextcloud</code>\r\n\r\n3. Create the database\r\n\r\nEnter:\r\n```sudo mysql -u root```\r\n\r\nCreate:\r\n<code>CREATE DATABASE nextcloud;\r\nCREATE USER \'nextcloud\'@\'localhost\' IDENTIFIED BY \'nextcloudpassword\';\r\nGRANT ALL PRIVILEGES ON nextcloud.* TO \'nextcloud\'@\'localhost\';\r\nFLUSH PRIVILEGES;\r\nEXIT;</code>\r\n\r\n4. Create Nginx Configuration:\r\n\r\n```cd /etc/nginx/sites-available```\r\n```sudo nano nextcloud```\r\n\r\nFill with:\r\n```\r\nserver {\r\n    server_name x5.znand.my.id;\r\n    root /var/www/nextcloud;\r\n\r\n    index index.php index.html;\r\n\r\n    location / {\r\n        try_files $uri $uri/ /index.php$is_args$args;\r\n    }\r\n        # Tambahkan batasan upload & buffer\r\n    client_max_body_size 20G;\r\n    fastcgi_buffers 64 4K;\r\n\r\n    location ~ ^/(?:build|tests|config|lib|3rdparty|templates|data)/ {\r\n        deny all;\r\n    }\r\n\r\n    location ~ \\.php(?:$|/) {\r\n        include fastcgi_params;\r\n        fastcgi_split_path_info ^(.+\\.php)(/.+)$;\r\n        fastcgi_pass unix:/run/php/php8.2-fpm.sock;\r\n        fastcgi_index index.php;\r\n        fastcgi_param SCRIPT_FILENAME $document_root$fastcgi_script_name;\r\n        fastcgi_param PATH_INFO $fastcgi_path_info;\r\n    }\r\n\r\n}\r\n```\r\n\r\n```sudo rm default```\r\nMake symlink to sites-enabled\r\n```sudo ln -s /etc/nginx/sites-available/nextcloud /etc/nginx/sites-enabled/```\r\nMake sure the conf file is ok and successful\r\n```sudo nginx -t```\r\nRestart again\r\n<code>sudo systemctl restart nginx\r\nsudo systemctl restart php8.2-fpm</code>\r\n\r\nRun this if your website has error; Composer autoloader not found\r\n<code>cd /var/www/nextcloud\r\nsudo git submodule update --init</code>','',8),
(106,8,'Configuring Nextcloud','<ol id=\"bkmrk-clone-repository-nex\">\n<li>Clone repository Nextcloud:</li>\n</ol>\n<p id=\"bkmrk-git-clone-https%3A%2F%2Fgi\"><code>git clone https://github.com/nextcloud/server.git /var/www/nextcloud```\ncd /var/www/nextcloud</code></p>\n<ol start=\"2\" id=\"bkmrk-give-the-permission-\">\n<li>Give the permission to folders:</li>\n</ol>\n<p id=\"bkmrk-chown--r-www-data%3Aww\"><code>chown -R www-data:www-data /var/www/nextcloud\nchmod -R 755 /var/www/nextcloud</code></p>\n<ol start=\"3\" id=\"bkmrk-create-the-database\">\n<li>Create the database</li>\n</ol>\n<p id=\"bkmrk-enter%3A-sudo-mysql--u\">Enter:\n<code>sudo mysql -u root</code></p>\n<p id=\"bkmrk-create%3A-create-datab\">Create:\n<code>CREATE DATABASE nextcloud;\nCREATE USER \'nextcloud\'@\'localhost\' IDENTIFIED BY \'nextcloudpassword\';\nGRANT ALL PRIVILEGES ON nextcloud.* TO \'nextcloud\'@\'localhost\';\nFLUSH PRIVILEGES;\nEXIT;</code></p>\n<ol start=\"4\" id=\"bkmrk-create-nginx-configu\">\n<li>Create Nginx Configuration:</li>\n</ol>\n<p id=\"bkmrk-cd-%2Fetc%2Fnginx%2Fsites-\"><code>cd /etc/nginx/sites-available</code>\n<code>sudo nano nextcloud</code></p>\n<p id=\"bkmrk-fill-with%3A\">Fill with:</p>\n<pre id=\"bkmrk-server-%7B-server_name\"><code>server {\n    server_name x5.znand.my.id;\n    root /var/www/nextcloud;\n\n    index index.php index.html;\n\n    location / {\n        try_files $uri $uri/ /index.php$is_args$args;\n    }\n        # Tambahkan batasan upload &amp; buffer\n    client_max_body_size 20G;\n    fastcgi_buffers 64 4K;\n\n    location ~ ^/(?:build|tests|config|lib|3rdparty|templates|data)/ {\n        deny all;\n    }\n\n    location ~ \\.php(?:$|/) {\n        include fastcgi_params;\n        fastcgi_split_path_info ^(.+\\.php)(/.+)$;\n        fastcgi_pass unix:/run/php/php8.2-fpm.sock;\n        fastcgi_index index.php;\n        fastcgi_param SCRIPT_FILENAME $document_root$fastcgi_script_name;\n        fastcgi_param PATH_INFO $fastcgi_path_info;\n    }\n\n}\n</code></pre>\n<p id=\"bkmrk-sudo-rm-default-make\"><code>sudo rm default</code>\nMake symlink to sites-enabled\n<code>sudo ln -s /etc/nginx/sites-available/nextcloud /etc/nginx/sites-enabled/</code>\nMake sure the conf file is ok and successful\n<code>sudo nginx -t</code>\nRestart again\n<code>sudo systemctl restart nginx\nsudo systemctl restart php8.2-fpm</code></p>\n<p id=\"bkmrk-run-this-if-your-web\">Run this if your website has error; Composer autoloader not found\n<code>\nsudo git config --global --add safe.directory /var/www/nextcloud\ncd /var/www/nextcloud\nsudo git submodule update --init</code></p>\n','\nClone repository Nextcloud:\n\ngit clone https://github.com/nextcloud/server.git /var/www/nextcloud```\ncd /var/www/nextcloud\n\nGive the permission to folders:\n\nchown -R www-data:www-data /var/www/nextcloud\nchmod -R 755 /var/www/nextcloud\n\nCreate the database\n\nEnter:\nsudo mysql -u root\nCreate:\nCREATE DATABASE nextcloud;\nCREATE USER \'nextcloud\'@\'localhost\' IDENTIFIED BY \'nextcloudpassword\';\nGRANT ALL PRIVILEGES ON nextcloud.* TO \'nextcloud\'@\'localhost\';\nFLUSH PRIVILEGES;\nEXIT;\n\nCreate Nginx Configuration:\n\ncd /etc/nginx/sites-available\nsudo nano nextcloud\nFill with:\nserver {\n    server_name x5.znand.my.id;\n    root /var/www/nextcloud;\n\n    index index.php index.html;\n\n    location / {\n        try_files $uri $uri/ /index.php$is_args$args;\n    }\n        # Tambahkan batasan upload & buffer\n    client_max_body_size 20G;\n    fastcgi_buffers 64 4K;\n\n    location ~ ^/(?:build|tests|config|lib|3rdparty|templates|data)/ {\n        deny all;\n    }\n\n    location ~ \\.php(?:$|/) {\n        include fastcgi_params;\n        fastcgi_split_path_info ^(.+\\.php)(/.+)$;\n        fastcgi_pass unix:/run/php/php8.2-fpm.sock;\n        fastcgi_index index.php;\n        fastcgi_param SCRIPT_FILENAME $document_root$fastcgi_script_name;\n        fastcgi_param PATH_INFO $fastcgi_path_info;\n    }\n\n}\n\nsudo rm default\nMake symlink to sites-enabled\nsudo ln -s /etc/nginx/sites-available/nextcloud /etc/nginx/sites-enabled/\nMake sure the conf file is ok and successful\nsudo nginx -t\nRestart again\nsudo systemctl restart nginx\nsudo systemctl restart php8.2-fpm\nRun this if your website has error; Composer autoloader not found\n\nsudo git config --global --add safe.directory /var/www/nextcloud\ncd /var/www/nextcloud\nsudo git submodule update --init\n',1,'2025-03-02 02:03:36','2025-03-02 02:03:36','configuring-nextcloud','deploy-nextcloud-in-ubuntu-server-manually','version','1. Clone repository Nextcloud:\r\n\r\n<code>git clone https://github.com/nextcloud/server.git /var/www/nextcloud```\r\ncd /var/www/nextcloud</code>\r\n\r\n2. Give the permission to folders:\r\n\r\n<code>chown -R www-data:www-data /var/www/nextcloud\r\nchmod -R 755 /var/www/nextcloud</code>\r\n\r\n3. Create the database\r\n\r\nEnter:\r\n```sudo mysql -u root```\r\n\r\nCreate:\r\n<code>CREATE DATABASE nextcloud;\r\nCREATE USER \'nextcloud\'@\'localhost\' IDENTIFIED BY \'nextcloudpassword\';\r\nGRANT ALL PRIVILEGES ON nextcloud.* TO \'nextcloud\'@\'localhost\';\r\nFLUSH PRIVILEGES;\r\nEXIT;</code>\r\n\r\n4. Create Nginx Configuration:\r\n\r\n```cd /etc/nginx/sites-available```\r\n```sudo nano nextcloud```\r\n\r\nFill with:\r\n```\r\nserver {\r\n    server_name x5.znand.my.id;\r\n    root /var/www/nextcloud;\r\n\r\n    index index.php index.html;\r\n\r\n    location / {\r\n        try_files $uri $uri/ /index.php$is_args$args;\r\n    }\r\n        # Tambahkan batasan upload & buffer\r\n    client_max_body_size 20G;\r\n    fastcgi_buffers 64 4K;\r\n\r\n    location ~ ^/(?:build|tests|config|lib|3rdparty|templates|data)/ {\r\n        deny all;\r\n    }\r\n\r\n    location ~ \\.php(?:$|/) {\r\n        include fastcgi_params;\r\n        fastcgi_split_path_info ^(.+\\.php)(/.+)$;\r\n        fastcgi_pass unix:/run/php/php8.2-fpm.sock;\r\n        fastcgi_index index.php;\r\n        fastcgi_param SCRIPT_FILENAME $document_root$fastcgi_script_name;\r\n        fastcgi_param PATH_INFO $fastcgi_path_info;\r\n    }\r\n\r\n}\r\n```\r\n\r\n```sudo rm default```\r\nMake symlink to sites-enabled\r\n```sudo ln -s /etc/nginx/sites-available/nextcloud /etc/nginx/sites-enabled/```\r\nMake sure the conf file is ok and successful\r\n```sudo nginx -t```\r\nRestart again\r\n<code>sudo systemctl restart nginx\r\nsudo systemctl restart php8.2-fpm</code>\r\n\r\nRun this if your website has error; Composer autoloader not found\r\n<code>\r\nsudo git config --global --add safe.directory /var/www/nextcloud\r\ncd /var/www/nextcloud\r\nsudo git submodule update --init</code>','',9),
(107,8,'Configuring Nextcloud','<ol id=\"bkmrk-clone-repository-nex\">\n<li>Clone repository Nextcloud:</li>\n</ol>\n<p id=\"bkmrk-git-clone-https%3A%2F%2Fgi\"><code>git clone https://github.com/nextcloud/server.git /var/www/nextcloud```\ncd /var/www/nextcloud</code></p>\n<ol start=\"2\" id=\"bkmrk-give-the-permission-\">\n<li>Give the permission to folders:</li>\n</ol>\n<p id=\"bkmrk-chown--r-www-data%3Aww\"><code>chown -R www-data:www-data /var/www/nextcloud\nchmod -R 755 /var/www/nextcloud</code></p>\n<ol start=\"3\" id=\"bkmrk-create-the-database\">\n<li>Create the database</li>\n</ol>\n<p id=\"bkmrk-enter%3A-sudo-mysql--u\">Enter:\n<code>sudo mysql -u root</code></p>\n<p id=\"bkmrk-create%3A-create-datab\">Create:\n<code>CREATE DATABASE nextcloud;\nCREATE USER \'nextcloud\'@\'localhost\' IDENTIFIED BY \'nextcloudpassword\';\nGRANT ALL PRIVILEGES ON nextcloud.* TO \'nextcloud\'@\'localhost\';\nFLUSH PRIVILEGES;\nEXIT;</code></p>\n<ol start=\"4\" id=\"bkmrk-create-nginx-configu\">\n<li>Create Nginx Configuration:</li>\n</ol>\n<p id=\"bkmrk-cd-%2Fetc%2Fnginx%2Fsites-\"><code>cd /etc/nginx/sites-available</code>\n<code>sudo nano nextcloud</code></p>\n<p id=\"bkmrk-fill-with%3A\">Fill with:</p>\n<pre id=\"bkmrk-server-%7B-server_name\"><code>server {\n    server_name x5.znand.my.id;\n    root /var/www/nextcloud;\n\n    index index.php index.html;\n\n    location / {\n        try_files $uri $uri/ /index.php$is_args$args;\n    }\n        # Tambahkan batasan upload &amp; buffer\n    client_max_body_size 20G;\n    fastcgi_buffers 64 4K;\n\n    location ~ ^/(?:build|tests|config|lib|3rdparty|templates|data)/ {\n        deny all;\n    }\n\n    location ~ \\.php(?:$|/) {\n        include fastcgi_params;\n        fastcgi_split_path_info ^(.+\\.php)(/.+)$;\n        fastcgi_pass unix:/run/php/php8.2-fpm.sock;\n        fastcgi_index index.php;\n        fastcgi_param SCRIPT_FILENAME $document_root$fastcgi_script_name;\n        fastcgi_param PATH_INFO $fastcgi_path_info;\n    }\n\n}\n</code></pre>\n<p id=\"bkmrk-sudo-rm-default-make\"><code>sudo rm default</code>\nMake symlink to sites-enabled\n<code>sudo ln -s /etc/nginx/sites-available/nextcloud /etc/nginx/sites-enabled/</code>\nMake sure the conf file is ok and successful\n<code>sudo nginx -t</code>\nRestart again\n<code>sudo systemctl restart nginx\nsudo systemctl restart php8.2-fpm</code></p>\n<p id=\"bkmrk-run-this-if-your-web\">Run this if your website has error; Composer autoloader not found\n<code>sudo git config --global --add safe.directory /var/www/nextcloud\ncd /var/www/nextcloud\nsudo git submodule update --init</code></p>\n','\nClone repository Nextcloud:\n\ngit clone https://github.com/nextcloud/server.git /var/www/nextcloud```\ncd /var/www/nextcloud\n\nGive the permission to folders:\n\nchown -R www-data:www-data /var/www/nextcloud\nchmod -R 755 /var/www/nextcloud\n\nCreate the database\n\nEnter:\nsudo mysql -u root\nCreate:\nCREATE DATABASE nextcloud;\nCREATE USER \'nextcloud\'@\'localhost\' IDENTIFIED BY \'nextcloudpassword\';\nGRANT ALL PRIVILEGES ON nextcloud.* TO \'nextcloud\'@\'localhost\';\nFLUSH PRIVILEGES;\nEXIT;\n\nCreate Nginx Configuration:\n\ncd /etc/nginx/sites-available\nsudo nano nextcloud\nFill with:\nserver {\n    server_name x5.znand.my.id;\n    root /var/www/nextcloud;\n\n    index index.php index.html;\n\n    location / {\n        try_files $uri $uri/ /index.php$is_args$args;\n    }\n        # Tambahkan batasan upload & buffer\n    client_max_body_size 20G;\n    fastcgi_buffers 64 4K;\n\n    location ~ ^/(?:build|tests|config|lib|3rdparty|templates|data)/ {\n        deny all;\n    }\n\n    location ~ \\.php(?:$|/) {\n        include fastcgi_params;\n        fastcgi_split_path_info ^(.+\\.php)(/.+)$;\n        fastcgi_pass unix:/run/php/php8.2-fpm.sock;\n        fastcgi_index index.php;\n        fastcgi_param SCRIPT_FILENAME $document_root$fastcgi_script_name;\n        fastcgi_param PATH_INFO $fastcgi_path_info;\n    }\n\n}\n\nsudo rm default\nMake symlink to sites-enabled\nsudo ln -s /etc/nginx/sites-available/nextcloud /etc/nginx/sites-enabled/\nMake sure the conf file is ok and successful\nsudo nginx -t\nRestart again\nsudo systemctl restart nginx\nsudo systemctl restart php8.2-fpm\nRun this if your website has error; Composer autoloader not found\nsudo git config --global --add safe.directory /var/www/nextcloud\ncd /var/www/nextcloud\nsudo git submodule update --init\n',1,'2025-03-02 02:03:50','2025-03-02 02:03:50','configuring-nextcloud','deploy-nextcloud-in-ubuntu-server-manually','version','1. Clone repository Nextcloud:\r\n\r\n<code>git clone https://github.com/nextcloud/server.git /var/www/nextcloud```\r\ncd /var/www/nextcloud</code>\r\n\r\n2. Give the permission to folders:\r\n\r\n<code>chown -R www-data:www-data /var/www/nextcloud\r\nchmod -R 755 /var/www/nextcloud</code>\r\n\r\n3. Create the database\r\n\r\nEnter:\r\n```sudo mysql -u root```\r\n\r\nCreate:\r\n<code>CREATE DATABASE nextcloud;\r\nCREATE USER \'nextcloud\'@\'localhost\' IDENTIFIED BY \'nextcloudpassword\';\r\nGRANT ALL PRIVILEGES ON nextcloud.* TO \'nextcloud\'@\'localhost\';\r\nFLUSH PRIVILEGES;\r\nEXIT;</code>\r\n\r\n4. Create Nginx Configuration:\r\n\r\n```cd /etc/nginx/sites-available```\r\n```sudo nano nextcloud```\r\n\r\nFill with:\r\n```\r\nserver {\r\n    server_name x5.znand.my.id;\r\n    root /var/www/nextcloud;\r\n\r\n    index index.php index.html;\r\n\r\n    location / {\r\n        try_files $uri $uri/ /index.php$is_args$args;\r\n    }\r\n        # Tambahkan batasan upload & buffer\r\n    client_max_body_size 20G;\r\n    fastcgi_buffers 64 4K;\r\n\r\n    location ~ ^/(?:build|tests|config|lib|3rdparty|templates|data)/ {\r\n        deny all;\r\n    }\r\n\r\n    location ~ \\.php(?:$|/) {\r\n        include fastcgi_params;\r\n        fastcgi_split_path_info ^(.+\\.php)(/.+)$;\r\n        fastcgi_pass unix:/run/php/php8.2-fpm.sock;\r\n        fastcgi_index index.php;\r\n        fastcgi_param SCRIPT_FILENAME $document_root$fastcgi_script_name;\r\n        fastcgi_param PATH_INFO $fastcgi_path_info;\r\n    }\r\n\r\n}\r\n```\r\n\r\n```sudo rm default```\r\nMake symlink to sites-enabled\r\n```sudo ln -s /etc/nginx/sites-available/nextcloud /etc/nginx/sites-enabled/```\r\nMake sure the conf file is ok and successful\r\n```sudo nginx -t```\r\nRestart again\r\n<code>sudo systemctl restart nginx\r\nsudo systemctl restart php8.2-fpm</code>\r\n\r\nRun this if your website has error; Composer autoloader not found\r\n<code>sudo git config --global --add safe.directory /var/www/nextcloud\r\ncd /var/www/nextcloud\r\nsudo git submodule update --init</code>','',10),
(108,9,'Adding HTTPS/SSL Certificate to website with Let\'s Encrypt + Certbot','<ol id=\"bkmrk-update-the-packets-a\">\n<li>\n<p>Update the packets and install Certbot + plugin Nginx\n<code>sudo apt update &amp;&amp; sudo apt install certbot python3-certbot-nginx -y</code></p>\n</li>\n<li>\n<p>Start:\n<code>sudo certbot --nginx</code>\nEnter your email, website etc.</p>\n</li>\n<li>\n<p>Verify the SSL is activated\n<code>sudo certbot certificates</code></p>\n</li>\n</ol>\n<div drawio-diagram=\"29\" id=\"bkmrk-\"><img src=\"https://x2.znand.my.id/uploads/images/drawio/2025-03/drawing-1-1740881352.png\"></div>\n','\n\nUpdate the packets and install Certbot + plugin Nginx\nsudo apt update && sudo apt install certbot python3-certbot-nginx -y\n\n\nStart:\nsudo certbot --nginx\nEnter your email, website etc.\n\n\nVerify the SSL is activated\nsudo certbot certificates\n\n\n\n',1,'2025-03-02 02:10:03','2025-03-02 02:10:03','adding-httpsssl-certificate-to-website-with-lets-encrypt-certbot','deploy-nextcloud-in-ubuntu-server-manually','version','1. Update the packets and install Certbot + plugin Nginx\r\n```sudo apt update && sudo apt install certbot python3-certbot-nginx -y```\r\n\r\n2. Start:\r\n```sudo certbot --nginx```\r\nEnter your email, website etc.\r\n\r\n3. Verify the SSL is activated\r\n```sudo certbot certificates```\r\n<div drawio-diagram=\"29\"><img src=\"https://x2.znand.my.id/uploads/images/drawio/2025-03/drawing-1-1740881352.png\"></div>','Initial publish',1),
(110,9,'Adding HTTPS/SSL Certificate to website with Let\'s Encrypt + Certbot','<ol id=\"bkmrk-update-the-packets-a\">\n<li>\n<p>Update the packets and install Certbot + plugin Nginx\n<code>sudo apt update &amp;&amp; sudo apt install certbot python3-certbot-nginx -y</code></p>\n</li>\n<li>\n<p>Start:\n<code>sudo certbot --nginx</code>\nEnter your email, website etc.</p>\n</li>\n<li>\n<p>Verify the SSL is activated\n<code>sudo certbot certificates</code></p>\n</li>\n</ol>\n<div drawio-diagram=\"29\" id=\"bkmrk-\"><img src=\"https://x2.znand.my.id/uploads/images/drawio/2025-03/drawing-1-1740881352.png\"></div>\n<ol start=\"4\" id=\"bkmrk-set-auto-renew-ssl-s\">\n<li>Set Auto-Renew SSL\n<code>sudo systemctl status certbot.timer\nsudo systemctl enable --now certbot.timer</code></li>\n</ol>\n<p id=\"bkmrk-done%21-enjoy-your-nex\">DONE! Enjoy your Nextcloud</p>\n','\n\nUpdate the packets and install Certbot + plugin Nginx\nsudo apt update && sudo apt install certbot python3-certbot-nginx -y\n\n\nStart:\nsudo certbot --nginx\nEnter your email, website etc.\n\n\nVerify the SSL is activated\nsudo certbot certificates\n\n\n\n\nSet Auto-Renew SSL\nsudo systemctl status certbot.timer\nsudo systemctl enable --now certbot.timer\n\nDONE! Enjoy your Nextcloud\n',1,'2025-03-02 02:11:42','2025-03-02 02:11:42','adding-httpsssl-certificate-to-website-with-lets-encrypt-certbot','deploy-nextcloud-in-ubuntu-server-manually','version','1. Update the packets and install Certbot + plugin Nginx\r\n```sudo apt update && sudo apt install certbot python3-certbot-nginx -y```\r\n\r\n2. Start:\r\n```sudo certbot --nginx```\r\nEnter your email, website etc.\r\n\r\n3. Verify the SSL is activated\r\n```sudo certbot certificates```\r\n<div drawio-diagram=\"29\"><img src=\"https://x2.znand.my.id/uploads/images/drawio/2025-03/drawing-1-1740881352.png\"></div>\r\n\r\n4. Set Auto-Renew SSL\r\n<code>sudo systemctl status certbot.timer\r\nsudo systemctl enable --now certbot.timer</code>\r\n\r\nDONE! Enjoy your Nextcloud','',2),
(112,8,'Configuring Nextcloud','<ol id=\"bkmrk-clone-repository-nex\">\n<li>Clone repository Nextcloud:</li>\n</ol>\n<p id=\"bkmrk-git-clone-https%3A%2F%2Fgi\"><code>git clone https://github.com/nextcloud/server.git /var/www/nextcloud```\ncd /var/www/nextcloud</code></p>\n<ol start=\"2\" id=\"bkmrk-give-the-permission-\">\n<li>Give the permission to folders:</li>\n</ol>\n<p id=\"bkmrk-chown--r-www-data%3Aww\"><code>chown -R www-data:www-data /var/www/nextcloud\nchmod -R 755 /var/www/nextcloud</code></p>\n<ol start=\"3\" id=\"bkmrk-create-the-database\">\n<li>Create the database</li>\n</ol>\n<p id=\"bkmrk-enter%3A-sudo-mysql--u\">Enter:\n<code>sudo mysql -u root</code></p>\n<p id=\"bkmrk-create%3A-create-datab\">Create:\n<code>CREATE DATABASE nextcloud;\nCREATE USER \'nextcloud\'@\'localhost\' IDENTIFIED BY \'nextcloudpassword\';\nGRANT ALL PRIVILEGES ON nextcloud.* TO \'nextcloud\'@\'localhost\';\nFLUSH PRIVILEGES;\nEXIT;</code></p>\n<ol start=\"4\" id=\"bkmrk-create-nginx-configu\">\n<li>Create Nginx Configuration:</li>\n</ol>\n<p id=\"bkmrk-cd-%2Fetc%2Fnginx%2Fsites-\"><code>cd /etc/nginx/sites-available</code>\n<code>sudo nano nextcloud</code></p>\n<p id=\"bkmrk-fill-with%3A\">Fill with:</p>\n<pre id=\"bkmrk-server-%7B-server_name\"><code>server {\n    server_name x5.znand.my.id;\n    root /var/www/nextcloud;\n\n    index index.php index.html;\n\n    location / {\n        try_files $uri $uri/ /index.php$is_args$args;\n    }\n        # Tambahkan batasan upload &amp; buffer\n    client_max_body_size 20G;\n    fastcgi_buffers 64 4K;\n\n    location ~ ^/(?:build|tests|config|lib|3rdparty|templates|data)/ {\n        deny all;\n    }\n\n    location ~ \\.php(?:$|/) {\n        include fastcgi_params;\n        fastcgi_split_path_info ^(.+\\.php)(/.+)$;\n        fastcgi_pass unix:/run/php/php8.2-fpm.sock;\n        fastcgi_index index.php;\n        fastcgi_param SCRIPT_FILENAME $document_root$fastcgi_script_name;\n        fastcgi_param PATH_INFO $fastcgi_path_info;\n    }\n\n}\n</code></pre>\n<p id=\"bkmrk-sudo-rm-default-make\"><code>sudo rm default</code>\nMake symlink to sites-enabled\n<code>sudo ln -s /etc/nginx/sites-available/nextcloud /etc/nginx/sites-enabled/</code>\nMake sure the conf file is ok and successful\n<code>sudo nginx -t</code>\nRestart again\n<code>sudo systemctl restart nginx\nsudo systemctl restart php8.2-fpm</code></p>\n<p id=\"bkmrk-run-this-if-your-web\">Run this if your website has error; Composer autoloader not found\n<code>sudo git config --global --add safe.directory /var/www/nextcloud\ncd /var/www/nextcloud\nsudo git submodule update --init</code></p>\n<p id=\"bkmrk-last-but-not-last-yu\">Last but not last yup:\nCheck your Nextcloud version\n<code>sudo -u www-data php /var/www/nextcloud/occ status</code></p>\n<div drawio-diagram=\"31\" id=\"bkmrk-\"><img src=\"https://x2.znand.my.id/uploads/images/drawio/2025-03/drawing-1-1740882115.png\"></div>\n','\nClone repository Nextcloud:\n\ngit clone https://github.com/nextcloud/server.git /var/www/nextcloud```\ncd /var/www/nextcloud\n\nGive the permission to folders:\n\nchown -R www-data:www-data /var/www/nextcloud\nchmod -R 755 /var/www/nextcloud\n\nCreate the database\n\nEnter:\nsudo mysql -u root\nCreate:\nCREATE DATABASE nextcloud;\nCREATE USER \'nextcloud\'@\'localhost\' IDENTIFIED BY \'nextcloudpassword\';\nGRANT ALL PRIVILEGES ON nextcloud.* TO \'nextcloud\'@\'localhost\';\nFLUSH PRIVILEGES;\nEXIT;\n\nCreate Nginx Configuration:\n\ncd /etc/nginx/sites-available\nsudo nano nextcloud\nFill with:\nserver {\n    server_name x5.znand.my.id;\n    root /var/www/nextcloud;\n\n    index index.php index.html;\n\n    location / {\n        try_files $uri $uri/ /index.php$is_args$args;\n    }\n        # Tambahkan batasan upload & buffer\n    client_max_body_size 20G;\n    fastcgi_buffers 64 4K;\n\n    location ~ ^/(?:build|tests|config|lib|3rdparty|templates|data)/ {\n        deny all;\n    }\n\n    location ~ \\.php(?:$|/) {\n        include fastcgi_params;\n        fastcgi_split_path_info ^(.+\\.php)(/.+)$;\n        fastcgi_pass unix:/run/php/php8.2-fpm.sock;\n        fastcgi_index index.php;\n        fastcgi_param SCRIPT_FILENAME $document_root$fastcgi_script_name;\n        fastcgi_param PATH_INFO $fastcgi_path_info;\n    }\n\n}\n\nsudo rm default\nMake symlink to sites-enabled\nsudo ln -s /etc/nginx/sites-available/nextcloud /etc/nginx/sites-enabled/\nMake sure the conf file is ok and successful\nsudo nginx -t\nRestart again\nsudo systemctl restart nginx\nsudo systemctl restart php8.2-fpm\nRun this if your website has error; Composer autoloader not found\nsudo git config --global --add safe.directory /var/www/nextcloud\ncd /var/www/nextcloud\nsudo git submodule update --init\nLast but not last yup:\nCheck your Nextcloud version\nsudo -u www-data php /var/www/nextcloud/occ status\n\n',1,'2025-03-02 02:22:03','2025-03-02 02:22:03','configuring-nextcloud','deploy-nextcloud-in-ubuntu-server-manually','version','1. Clone repository Nextcloud:\r\n\r\n<code>git clone https://github.com/nextcloud/server.git /var/www/nextcloud```\r\ncd /var/www/nextcloud</code>\r\n\r\n2. Give the permission to folders:\r\n\r\n<code>chown -R www-data:www-data /var/www/nextcloud\r\nchmod -R 755 /var/www/nextcloud</code>\r\n\r\n3. Create the database\r\n\r\nEnter:\r\n```sudo mysql -u root```\r\n\r\nCreate:\r\n<code>CREATE DATABASE nextcloud;\r\nCREATE USER \'nextcloud\'@\'localhost\' IDENTIFIED BY \'nextcloudpassword\';\r\nGRANT ALL PRIVILEGES ON nextcloud.* TO \'nextcloud\'@\'localhost\';\r\nFLUSH PRIVILEGES;\r\nEXIT;</code>\r\n\r\n4. Create Nginx Configuration:\r\n\r\n```cd /etc/nginx/sites-available```\r\n```sudo nano nextcloud```\r\n\r\nFill with:\r\n```\r\nserver {\r\n    server_name x5.znand.my.id;\r\n    root /var/www/nextcloud;\r\n\r\n    index index.php index.html;\r\n\r\n    location / {\r\n        try_files $uri $uri/ /index.php$is_args$args;\r\n    }\r\n        # Tambahkan batasan upload & buffer\r\n    client_max_body_size 20G;\r\n    fastcgi_buffers 64 4K;\r\n\r\n    location ~ ^/(?:build|tests|config|lib|3rdparty|templates|data)/ {\r\n        deny all;\r\n    }\r\n\r\n    location ~ \\.php(?:$|/) {\r\n        include fastcgi_params;\r\n        fastcgi_split_path_info ^(.+\\.php)(/.+)$;\r\n        fastcgi_pass unix:/run/php/php8.2-fpm.sock;\r\n        fastcgi_index index.php;\r\n        fastcgi_param SCRIPT_FILENAME $document_root$fastcgi_script_name;\r\n        fastcgi_param PATH_INFO $fastcgi_path_info;\r\n    }\r\n\r\n}\r\n```\r\n\r\n```sudo rm default```\r\nMake symlink to sites-enabled\r\n```sudo ln -s /etc/nginx/sites-available/nextcloud /etc/nginx/sites-enabled/```\r\nMake sure the conf file is ok and successful\r\n```sudo nginx -t```\r\nRestart again\r\n<code>sudo systemctl restart nginx\r\nsudo systemctl restart php8.2-fpm</code>\r\n\r\nRun this if your website has error; Composer autoloader not found\r\n<code>sudo git config --global --add safe.directory /var/www/nextcloud\r\ncd /var/www/nextcloud\r\nsudo git submodule update --init</code>\r\n\r\nLast but not last yup:\r\nCheck your Nextcloud version\r\n```sudo -u www-data php /var/www/nextcloud/occ status```\r\n<div drawio-diagram=\"31\"><img src=\"https://x2.znand.my.id/uploads/images/drawio/2025-03/drawing-1-1740882115.png\"></div>','',11);
/*!40000 ALTER TABLE `page_revisions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `book_id` int(11) NOT NULL,
  `chapter_id` int(11) NOT NULL,
  `name` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `html` longtext NOT NULL,
  `text` longtext NOT NULL,
  `priority` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `draft` tinyint(1) NOT NULL DEFAULT 0,
  `markdown` longtext NOT NULL DEFAULT '',
  `revision_count` int(11) NOT NULL,
  `template` tinyint(1) NOT NULL DEFAULT 0,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `owned_by` int(10) unsigned NOT NULL,
  `editor` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `pages_slug_index` (`slug`),
  KEY `pages_book_id_index` (`book_id`),
  KEY `pages_chapter_id_index` (`chapter_id`),
  KEY `pages_priority_index` (`priority`),
  KEY `pages_created_by_index` (`created_by`),
  KEY `pages_updated_by_index` (`updated_by`),
  KEY `pages_draft_index` (`draft`),
  KEY `pages_template_index` (`template`),
  KEY `pages_owned_by_index` (`owned_by`),
  KEY `pages_updated_at_index` (`updated_at`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES
(1,1,0,'New Page','new-page','<p id=\"bkmrk-test-code-berikut%3A\">Test code berikut:</p>\n<pre id=\"bkmrk-protocol%3A-udp-auth%3A-\"><code class=\"language-listen:\">protocol: udp\n\nauth:\n  type: password\n  password: passwordtest \n\nacme:\n  domains:\n    - hysteria.znand.my.id\n  email: nannozeta@gmail.com\n\nmasquerade:\n  type: proxy\n  proxy:\n    url: https://www.cloudflare.com \n\nquic:\n  congestionControl: bbr   \n  idleTimeout: 60s         \n  maxIdleTimeout: 60s     \n  keepAlivePeriod: 10s     \n\nudp:\n  idleTimeout: 60s\n</code></pre>\n','Test code berikut:\nprotocol: udp\n\nauth:\n  type: password\n  password: passwordtest \n\nacme:\n  domains:\n    - hysteria.znand.my.id\n  email: nannozeta@gmail.com\n\nmasquerade:\n  type: proxy\n  proxy:\n    url: https://www.cloudflare.com \n\nquic:\n  congestionControl: bbr   \n  idleTimeout: 60s         \n  maxIdleTimeout: 60s     \n  keepAlivePeriod: 10s     \n\nudp:\n  idleTimeout: 60s\n\n',2,'2025-02-22 05:13:27','2025-02-22 15:08:38',1,1,0,'Test code berikut:\r\n\r\n\r\n```listen: :443  \r\nprotocol: udp\r\n\r\nauth:\r\n  type: password\r\n  password: passwordtest \r\n\r\nacme:\r\n  domains:\r\n    - hysteria.znand.my.id\r\n  email: nannozeta@gmail.com\r\n\r\nmasquerade:\r\n  type: proxy\r\n  proxy:\r\n    url: https://www.cloudflare.com \r\n\r\nquic:\r\n  congestionControl: bbr   \r\n  idleTimeout: 60s         \r\n  maxIdleTimeout: 60s     \r\n  keepAlivePeriod: 10s     \r\n\r\nudp:\r\n  idleTimeout: 60s\r\n```',2,0,'2025-02-22 15:08:38',1,'markdown'),
(2,1,0,'Configure the Server','configure-the-server','<ol id=\"bkmrk-install-to-latest-ve\">\n<li>Install to latest version:</li>\n</ol>\n<p id=\"bkmrk-bash-%3C%28curl--fssl-ht\"><code>bash &lt;(curl -fsSL https://get.hy2.sh/)</code></p>\n<p id=\"bkmrk-remove-and-uninstall\">Remove and uninstall:</p>\n<p id=\"bkmrk-bash-%3C%28curl--fssl-ht-1\"><code>bash &lt;(curl -fsSL https://get.hy2.sh/) --remove</code></p>\n<ol start=\"2\" id=\"bkmrk-in-home-directory%2C\">\n<li>In home directory,</li>\n</ol>\n<p id=\"bkmrk-mkdir-hysteria-cd-hy\"><code>mkdir hysteria</code>\n<code>cd hysteria</code>\n<code>nano config.yaml</code></p>\n<ol start=\"3\" id=\"bkmrk-fill-the-blank-yaml-\">\n<li>Fill the blank yaml file with:</li>\n</ol>\n<pre id=\"bkmrk-listen%3A-%3A443-protoco\"><code>listen: :443  \nprotocol: udp\n\nauth:\n  type: password\n  password: passwordtest\n\nobfs:\n  type: salamander \n  salamander:\n    password: cry_me_a_r1ver  \n\nacme:\n  domains:\n    - yourdomain.net\n  email: yourname@yourdomain.net\n\nmasquerade:\n  type: proxy\n  proxy:\n    url: https://www.cloudflare.com \n\nquic:\n  congestionControl: bbr   \n  idleTimeout: 60s         \n  maxIdleTimeout: 60s     \n  keepAlivePeriod: 10s     \n\nudp:\n  idleTimeout: 60s\n</code></pre>\n<p id=\"bkmrk-dont-forget-to-edit-\">Dont forget to edit the email, domain and password.</p>\n<ol start=\"4\" id=\"bkmrk-download-the-executa\">\n<li>\n<p>Download the executable file from this <a href=\"https://github.com/apernet/hysteria/releases\">link</a>.</p>\n<div drawio-diagram=\"4\"><img src=\"https://x2.znand.my.id/uploads/images/drawio/2025-02/3od1B7vKW08kPez3-drawing-1-1740234277.png\"></div>\n</li>\n</ol>\n<p id=\"bkmrk-in-this-example-i-us\">In this example i use hysteria-linux-amd64-avx\n<code>wget https://github.com/apernet/hysteria/releases/download/app%2Fv2.6.1/hysteria-linux-amd64-avx</code></p>\n<ol start=\"5\" id=\"bkmrk-run-the-server-sudo-\">\n<li>Run the server\n<code>sudo setcap cap_net_bind_service=+ep ./hysteria-linux-amd64-avx</code>\n<code>./hysteria-linux-amd64-avx server</code></li>\n</ol>\n<p id=\"bkmrk-if-you-got-this-erro\">If you got this error:</p>\n<div drawio-diagram=\"9\" id=\"bkmrk-\"><img src=\"https://x2.znand.my.id/uploads/images/drawio/2025-02/0w9r75mt6SG673Ac-drawing-1-1740236467.png\"></div>\n<p id=\"bkmrk-give-the-permission%3A\">Give the permission:\n<code>sudo chmod +x hysteria-linux-amd64-avx</code></p>\n<p id=\"bkmrk-and-you-should-get-t\">And you should get the problem solved and server is ready to be running.</p>\n<div drawio-diagram=\"10\" id=\"bkmrk--1\"><img src=\"https://x2.znand.my.id/uploads/images/drawio/2025-02/iafnjWw8NndOjO35-drawing-1-1740236636.png\"></div>\n<p id=\"bkmrk-also-you-will-got-th\">Also you will got the SSL Certificate from Acme and server is already running (listening on port 443):</p>\n<div drawio-diagram=\"11\" id=\"bkmrk--2\"><img src=\"https://x2.znand.my.id/uploads/images/drawio/2025-02/tGOhBjZBg7rqXkru-drawing-1-1740236802.png\"></div>\n<p id=\"bkmrk-if-you-want-to-run-t\">If you want to run the server from systemd, you can read the next page :).</p>\n','\nInstall to latest version:\n\nbash <(curl -fsSL https://get.hy2.sh/)\nRemove and uninstall:\nbash <(curl -fsSL https://get.hy2.sh/) --remove\n\nIn home directory,\n\nmkdir hysteria\ncd hysteria\nnano config.yaml\n\nFill the blank yaml file with:\n\nlisten: :443  \nprotocol: udp\n\nauth:\n  type: password\n  password: passwordtest\n\nobfs:\n  type: salamander \n  salamander:\n    password: cry_me_a_r1ver  \n\nacme:\n  domains:\n    - yourdomain.net\n  email: yourname@yourdomain.net\n\nmasquerade:\n  type: proxy\n  proxy:\n    url: https://www.cloudflare.com \n\nquic:\n  congestionControl: bbr   \n  idleTimeout: 60s         \n  maxIdleTimeout: 60s     \n  keepAlivePeriod: 10s     \n\nudp:\n  idleTimeout: 60s\n\nDont forget to edit the email, domain and password.\n\n\nDownload the executable file from this link.\n\n\n\nIn this example i use hysteria-linux-amd64-avx\nwget https://github.com/apernet/hysteria/releases/download/app%2Fv2.6.1/hysteria-linux-amd64-avx\n\nRun the server\nsudo setcap cap_net_bind_service=+ep ./hysteria-linux-amd64-avx\n./hysteria-linux-amd64-avx server\n\nIf you got this error:\n\nGive the permission:\nsudo chmod +x hysteria-linux-amd64-avx\nAnd you should get the problem solved and server is ready to be running.\n\nAlso you will got the SSL Certificate from Acme and server is already running (listening on port 443):\n\nIf you want to run the server from systemd, you can read the next page :).\n',3,'2025-02-22 13:59:20','2025-03-01 09:36:18',1,1,0,'1. Install to latest version:\r\n\r\n```bash <(curl -fsSL https://get.hy2.sh/)```\r\n\r\n Remove and uninstall:\r\n\r\n```bash <(curl -fsSL https://get.hy2.sh/) --remove```\r\n\r\n2. In home directory, \r\n\r\n```mkdir hysteria```\r\n```cd hysteria```\r\n```nano config.yaml```\r\n\r\n3. Fill the blank yaml file with:\r\n\r\n```\r\nlisten: :443  \r\nprotocol: udp\r\n\r\nauth:\r\n  type: password\r\n  password: passwordtest\r\n\r\nobfs:\r\n  type: salamander \r\n  salamander:\r\n    password: cry_me_a_r1ver  \r\n\r\nacme:\r\n  domains:\r\n    - yourdomain.net\r\n  email: yourname@yourdomain.net\r\n\r\nmasquerade:\r\n  type: proxy\r\n  proxy:\r\n    url: https://www.cloudflare.com \r\n\r\nquic:\r\n  congestionControl: bbr   \r\n  idleTimeout: 60s         \r\n  maxIdleTimeout: 60s     \r\n  keepAlivePeriod: 10s     \r\n\r\nudp:\r\n  idleTimeout: 60s\r\n```\r\nDont forget to edit the email, domain and password.\r\n\r\n4. Download the executable file from this [link](https://github.com/apernet/hysteria/releases).\r\n\r\n   <div drawio-diagram=\"4\"><img src=\"https://x2.znand.my.id/uploads/images/drawio/2025-02/3od1B7vKW08kPez3-drawing-1-1740234277.png\"></div>\r\n\r\nIn this example i use hysteria-linux-amd64-avx\r\n```wget https://github.com/apernet/hysteria/releases/download/app%2Fv2.6.1/hysteria-linux-amd64-avx```\r\n\r\n5. Run the server\r\n```sudo setcap cap_net_bind_service=+ep ./hysteria-linux-amd64-avx```\r\n```./hysteria-linux-amd64-avx server```\r\n\r\nIf you got this error:\r\n<div drawio-diagram=\"9\"><img src=\"https://x2.znand.my.id/uploads/images/drawio/2025-02/0w9r75mt6SG673Ac-drawing-1-1740236467.png\"></div>\r\n\r\nGive the permission:\r\n```sudo chmod +x hysteria-linux-amd64-avx```\r\n\r\nAnd you should get the problem solved and server is ready to be running.\r\n<div drawio-diagram=\"10\"><img src=\"https://x2.znand.my.id/uploads/images/drawio/2025-02/iafnjWw8NndOjO35-drawing-1-1740236636.png\"></div>\r\n\r\nAlso you will got the SSL Certificate from Acme and server is already running (listening on port 443):\r\n<div drawio-diagram=\"11\"><img src=\"https://x2.znand.my.id/uploads/images/drawio/2025-02/tGOhBjZBg7rqXkru-drawing-1-1740236802.png\"></div>\r\n\r\nIf you want to run the server from systemd, you can read the next page :).',13,0,NULL,1,'markdown'),
(3,1,0,'Configure the service in systemd','configure-the-service-in-systemd','<ol id=\"bkmrk-edit-hysteria-server\">\n<li>Edit hysteria-server.service in systemd</li>\n</ol>\n<p id=\"bkmrk-nano-%2Fetc%2Fsystemd%2Fsy\"><code>nano /etc/systemd/system/hysteria-server.service</code></p>\n<div drawio-diagram=\"13\" id=\"bkmrk-\"><img src=\"https://x2.znand.my.id/uploads/images/drawio/2025-02/BaylkcsYPHUBgHhz-drawing-1-1740237280.png\"></div>\n<ol start=\"2\" id=\"bkmrk-edit-the-file-into-t\">\n<li>Edit the file into this:</li>\n</ol>\n<pre id=\"bkmrk-description%3Dhysteria\"><code class=\"language-[Unit]\">Description=Hysteria Server Service\nAfter=network.target\n\n[Service]\nType=simple\nExecStart=/root/hysteria/hysteria-linux-amd64-avx server -c /root/hysteria/config.yaml\nWorkingDirectory=/root/hysteria\nUser=root\nGroup=root\nEnvironment=HYSTERIA_LOG_LEVEL=info\nCapabilityBoundingSet=CAP_NET_ADMIN CAP_NET_BIND_SERVICE CAP_NET_RAW\nAmbientCapabilities=CAP_NET_ADMIN CAP_NET_BIND_SERVICE CAP_NET_RAW\nNoNewPrivileges=true\nRestart=on-failure\nLimitNOFILE=4096\n\n[Install]\nWantedBy=multi-user.target\n</code></pre>\n<ol start=\"3\" id=\"bkmrk-save-the-file-and-ru\">\n<li>Save the file and run the service:</li>\n</ol>\n<p id=\"bkmrk-systemctl-daemon-rel\"><code>systemctl daemon-reload</code>\n<code>systemctl enable --now hysteria-server.service</code>\n<code>systemctl start hysteria-server.service</code></p>\n<ol start=\"4\" id=\"bkmrk-check-the-status%2C-ru\">\n<li>Check the status, running or not:</li>\n</ol>\n<p id=\"bkmrk-systemctl-status-hys\"><code>systemctl status hysteria-server.service</code></p>\n<p id=\"bkmrk-your-service-should-\">Your service should be like this:</p>\n<div drawio-diagram=\"15\" id=\"bkmrk--1\"><img src=\"https://x2.znand.my.id/uploads/images/drawio/2025-02/MFIAEcB90gI4eb8W-drawing-1-1740237929.png\">\n</div>','\nEdit hysteria-server.service in systemd\n\nnano /etc/systemd/system/hysteria-server.service\n\n\nEdit the file into this:\n\nDescription=Hysteria Server Service\nAfter=network.target\n\n[Service]\nType=simple\nExecStart=/root/hysteria/hysteria-linux-amd64-avx server -c /root/hysteria/config.yaml\nWorkingDirectory=/root/hysteria\nUser=root\nGroup=root\nEnvironment=HYSTERIA_LOG_LEVEL=info\nCapabilityBoundingSet=CAP_NET_ADMIN CAP_NET_BIND_SERVICE CAP_NET_RAW\nAmbientCapabilities=CAP_NET_ADMIN CAP_NET_BIND_SERVICE CAP_NET_RAW\nNoNewPrivileges=true\nRestart=on-failure\nLimitNOFILE=4096\n\n[Install]\nWantedBy=multi-user.target\n\n\nSave the file and run the service:\n\nsystemctl daemon-reload\nsystemctl enable --now hysteria-server.service\nsystemctl start hysteria-server.service\n\nCheck the status, running or not:\n\nsystemctl status hysteria-server.service\nYour service should be like this:\n\n',4,'2025-02-22 15:13:12','2025-02-22 15:26:28',1,1,0,'1. Edit hysteria-server.service in systemd\r\n\r\n```nano /etc/systemd/system/hysteria-server.service```\r\n\r\n<div drawio-diagram=\"13\"><img src=\"https://x2.znand.my.id/uploads/images/drawio/2025-02/BaylkcsYPHUBgHhz-drawing-1-1740237280.png\"></div>\r\n\r\n2. Edit the file into this:\r\n\r\n```[Unit]\r\nDescription=Hysteria Server Service\r\nAfter=network.target\r\n\r\n[Service]\r\nType=simple\r\nExecStart=/root/hysteria/hysteria-linux-amd64-avx server -c /root/hysteria/config.yaml\r\nWorkingDirectory=/root/hysteria\r\nUser=root\r\nGroup=root\r\nEnvironment=HYSTERIA_LOG_LEVEL=info\r\nCapabilityBoundingSet=CAP_NET_ADMIN CAP_NET_BIND_SERVICE CAP_NET_RAW\r\nAmbientCapabilities=CAP_NET_ADMIN CAP_NET_BIND_SERVICE CAP_NET_RAW\r\nNoNewPrivileges=true\r\nRestart=on-failure\r\nLimitNOFILE=4096\r\n\r\n[Install]\r\nWantedBy=multi-user.target\r\n```\r\n\r\n3. Save the file and run the service:\r\n\r\n```systemctl daemon-reload```\r\n```systemctl enable --now hysteria-server.service```\r\n```systemctl start hysteria-server.service```\r\n\r\n4. Check the status, running or not:\r\n\r\n```systemctl status hysteria-server.service```\r\n\r\nYour service should be like this:\r\n\r\n<div drawio-diagram=\"15\"><img src=\"https://x2.znand.my.id/uploads/images/drawio/2025-02/MFIAEcB90gI4eb8W-drawing-1-1740237929.png\">',3,0,NULL,1,'markdown'),
(4,1,0,'Configure the client side','configure-the-client-side-xUg','<ol id=\"bkmrk-to-use-the-server%2C-y\">\n<li>\n<p>To use the server, you must download the client app. In this example, im using nekobox to use the server. You can download app from this <a href=\"https://github.com/MatsuriDayo/nekoray/releases\">link</a> and download the app according your OS.</p>\n</li>\n<li>\n<p>Open the software and configure the server:</p>\n</li>\n<li>\n</ol>\n','\n\nTo use the server, you must download the client app. In this example, im using nekobox to use the server. You can download app from this link and download the app according your OS.\n\n\nOpen the software and configure the server:\n\n\n\n',6,'2025-02-22 15:27:09','2025-02-22 15:59:18',1,1,0,'1. To use the server, you must download the client app. In this example, im using nekobox to use the server. You can download app from this [link](https://github.com/MatsuriDayo/nekoray/releases) and download the app according your OS.\r\n\r\n2. Open the software and configure the server:\r\n\r\n3.',1,0,'2025-02-22 15:59:18',1,'markdown'),
(5,1,0,'Configure the client side','configure-the-client-side','<ol id=\"bkmrk-firstly%2C-download-th\">\n<li>\n<p>Firstly, download the client app. In this example, im using Nekobox to use the server in my Device. You can download through this <a href=\"https://github.com/MatsuriDayo/nekoray/releases\">link</a> and download the app according your OS.</p>\n</li>\n<li>\n<p>Open the software and add the new profile:</p>\n</li>\n</ol>\n<div drawio-diagram=\"17\" id=\"bkmrk-\"><img src=\"https://x2.znand.my.id/uploads/images/drawio/2025-02/73yP7O1amXBPAb0P-drawing-1-1740238557.png\"></div>\n<ol start=\"3\" id=\"bkmrk-fill-the-configurati\">\n<li>Fill the configuration according the server you configured before:</li>\n</ol>\n<div drawio-diagram=\"17\" id=\"bkmrk--1\"><i drawio-diagram=\"20\"><img src=\"https://x2.znand.my.id/uploads/images/drawio/2025-02/03fk9RwQ6G4Rrt3o-drawing-1-1740238846.png\"></i></div>\n<ol start=\"4\" id=\"bkmrk-start%3A\">\n<li>Start:</li>\n</ol>\n<div drawio-diagram=\"19\" id=\"bkmrk--2\"><img src=\"https://x2.znand.my.id/uploads/images/drawio/2025-02/fLK1oTCfavzPWnX8-drawing-1-1740238845.png\"></div>\n<ol start=\"5\" id=\"bkmrk-check-the-log-and-in\">\n<li>Check the log and inbound-outbound traffic:</li>\n</ol>\n<div drawio-diagram=\"22\" id=\"bkmrk--3\"><img src=\"https://x2.znand.my.id/uploads/images/drawio/2025-02/3xowFeCO1cx3AyI0-drawing-1-1740239476.png\"></div>\n<ol start=\"6\" id=\"bkmrk-access-the-whoer.net\">\n<li>Access the <a href=\"https://whoer.net/\">whoer.net</a> to verify the server is connected.</li>\n</ol>\n<div drawio-diagram=\"25\" id=\"bkmrk--4\"><img src=\"https://x2.znand.my.id/uploads/images/drawio/2025-02/RLhEbEjnWNqrZ7sa-drawing-1-1740239668.png\"></div>\n<ol start=\"7\" id=\"bkmrk-also-you-can-use-my-\">\n<li>Also you can use my server :):</li>\n</ol>\n<p id=\"bkmrk-sn%3A%2F%2Fhysteria%3Fenpjz2\"><code>sn://hysteria?eNpjZ2BgyKgsLkktykzUq8pLzEvRy63Uy3xiwcLAwMQAAQWJxcXl-UUpJanFX0D8RmwaGhlgAMHiAmITk82MIMHGRgBAPhqn</code></p>\n','\n\nFirstly, download the client app. In this example, im using Nekobox to use the server in my Device. You can download through this link and download the app according your OS.\n\n\nOpen the software and add the new profile:\n\n\n\n\nFill the configuration according the server you configured before:\n\n\n\nStart:\n\n\n\nCheck the log and inbound-outbound traffic:\n\n\n\nAccess the whoer.net to verify the server is connected.\n\n\n\nAlso you can use my server :):\n\nsn://hysteria?eNpjZ2BgyKgsLkktykzUq8pLzEvRy63Uy3xiwcLAwMQAAQWJxcXl-UUpJanFX0D8RmwaGhlgAMHiAmITk82MIMHGRgBAPhqn\n',5,'2025-02-22 15:33:29','2025-02-22 17:13:19',1,1,0,'1. Firstly, download the client app. In this example, im using Nekobox to use the server in my Device. You can download through this [link](https://github.com/MatsuriDayo/nekoray/releases) and download the app according your OS.\r\n\r\n\r\n2. Open the software and add the new profile:\r\n<div drawio-diagram=\"17\"><img src=\"https://x2.znand.my.id/uploads/images/drawio/2025-02/73yP7O1amXBPAb0P-drawing-1-1740238557.png\"></div>\r\n\r\n3. Fill the configuration according the server you configured before:\r\n<div drawio-diagram=\"17\"><i<div drawio-diagram=\"20\"><img src=\"https://x2.znand.my.id/uploads/images/drawio/2025-02/03fk9RwQ6G4Rrt3o-drawing-1-1740238846.png\"></div>\r\n\r\n4. Start:\r\n<div drawio-diagram=\"19\"><img src=\"https://x2.znand.my.id/uploads/images/drawio/2025-02/fLK1oTCfavzPWnX8-drawing-1-1740238845.png\"></div>\r\n\r\n5. Check the log and inbound-outbound traffic:\r\n<div drawio-diagram=\"22\"><img src=\"https://x2.znand.my.id/uploads/images/drawio/2025-02/3xowFeCO1cx3AyI0-drawing-1-1740239476.png\"></div>\r\n\r\n6. Access the [whoer.net](https://whoer.net/) to verify the server is connected.\r\n<div drawio-diagram=\"25\"><img src=\"https://x2.znand.my.id/uploads/images/drawio/2025-02/RLhEbEjnWNqrZ7sa-drawing-1-1740239668.png\"></div>\r\n\r\n7. Also you can use my server :):\r\n\r\n```sn://hysteria?eNpjZ2BgyKgsLkktykzUq8pLzEvRy63Uy3xiwcLAwMQAAQWJxcXl-UUpJanFX0D8RmwaGhlgAMHiAmITk82MIMHGRgBAPhqn```',12,0,NULL,1,'markdown'),
(6,2,0,'Configure Wireguard Relay on VPS','configure-wireguard-relay-on-vps','<ol id=\"bkmrk-update-your-dist-rep\">\n<li>\n<p>Update your dist repository:\n<code>apt update &amp;&amp; apt upgrade -y</code></p>\n</li>\n<li>\n<p>Install Wireguard:\n<code>apt install wireguard -y</code></p>\n</li>\n<li>\n<p>Create a new Wireguard key:\n<code>wg genkey | tee /etc/wireguard/privatekey | wg pubkey &gt; /etc/wireguard/publickey</code></p>\n<p>Save the output of these two files:\nPrivate Key: for server configuration.\nPublic Key: for client (your PC/phone).</p>\n</li>\n<li>\n<p>Create a configuration:\n<code>nano /etc/wireguard/wg0.conf</code></p>\n</li>\n<li>\n<p>Fill conf file with:</p>\n</li>\n</ol>\n<pre id=\"bkmrk-%5Binterface%5D-privatek\"><code>[Interface]\nPrivateKey = &lt;PRIVATE_KEY_VPS&gt;\nAddress = 10.200.200.1/24\nListenPort = 51820\nPostUp = iptables -A FORWARD -i wg0 -j ACCEPT; iptables -t nat -A POSTROUTING -o eth0 -j MASQUERADE\nPostDown = iptables -D FORWARD -i wg0 -j ACCEPT; iptables -t nat -D POSTROUTING -o eth0 -j MASQUERADE\n\n[Peer]\nPublicKey = &lt;PUBLIC_KEY_CLIENT&gt;\nAllowedIPs = 10.200.200.2/32\n</code></pre>\n<ol start=\"6\" id=\"bkmrk-run-the-wireguard\">\n<li>Run the wireguard</li>\n</ol>\n<p id=\"bkmrk-wg-quick-up-wg0-syst\"><code>wg-quick up wg0</code>\n<code>systemctl enable wg-quick@wg0</code></p>\n<p id=\"bkmrk-if-you-using-ufw%2C-pl\">If you using ufw, please open the port:\n<code>ufw allow 51820/udp</code>\n<code>ufw reload</code></p>\n<ol start=\"7\" id=\"bkmrk-download-client-app-\">\n<li>Download client app from official website, <a href=\"https://www.wireguard.com/\">wireguard.com</a>.\nFill the configuration with:</li>\n</ol>\n<pre id=\"bkmrk-%5Binterface%5D-privatek-1\"><code>[Interface]\nPrivateKey = &lt;PRIVATE_KEY_CLIENT&gt;\nAddress = 10.200.200.2/24\nDNS = 8.8.8.8\n\n[Peer]\nPublicKey = &lt;PUBLIC_KEY_VPS&gt;\nEndpoint = &lt;IP_VPS&gt;:51820\nAllowedIPs = 0.0.0.0/0, ::/0\nPersistentKeepalive = 25\n</code></pre>\n<ol start=\"8\" id=\"bkmrk-add-the-new-line-in-\">\n<li>Add the new line in config.yaml Hysteria:</li>\n</ol>\n<pre id=\"bkmrk-forward%3A---local_add\"><code>forward:\n  - local_addr: 127.0.0.1:51820  # WireGuard port lokal\n    remote_addr: 10.200.200.1:51820\n</code></pre>\n<p id=\"bkmrk-or-run-this-command-\">Or run this command to route traffic from Hysteria to Wireguard:\n<code>iptables -t nat -A PREROUTING -p udp --dport 443 -j DNAT --to-destination 10.200.200.2</code></p>\n<ol start=\"9\" id=\"bkmrk-start-your-client-ap\">\n<li>Start your client app. Run ping test\n<code>ping &lt;Game_Server_IPs&gt; -t</code>\nTraceroute\n<code>traceroute &lt;Game_Server_IPs&gt;</code></li>\n</ol>\n','\n\nUpdate your dist repository:\napt update && apt upgrade -y\n\n\nInstall Wireguard:\napt install wireguard -y\n\n\nCreate a new Wireguard key:\nwg genkey | tee /etc/wireguard/privatekey | wg pubkey > /etc/wireguard/publickey\nSave the output of these two files:\nPrivate Key: for server configuration.\nPublic Key: for client (your PC/phone).\n\n\nCreate a configuration:\nnano /etc/wireguard/wg0.conf\n\n\nFill conf file with:\n\n\n[Interface]\nPrivateKey = <PRIVATE_KEY_VPS>\nAddress = 10.200.200.1/24\nListenPort = 51820\nPostUp = iptables -A FORWARD -i wg0 -j ACCEPT; iptables -t nat -A POSTROUTING -o eth0 -j MASQUERADE\nPostDown = iptables -D FORWARD -i wg0 -j ACCEPT; iptables -t nat -D POSTROUTING -o eth0 -j MASQUERADE\n\n[Peer]\nPublicKey = <PUBLIC_KEY_CLIENT>\nAllowedIPs = 10.200.200.2/32\n\n\nRun the wireguard\n\nwg-quick up wg0\nsystemctl enable wg-quick@wg0\nIf you using ufw, please open the port:\nufw allow 51820/udp\nufw reload\n\nDownload client app from official website, wireguard.com.\nFill the configuration with:\n\n[Interface]\nPrivateKey = <PRIVATE_KEY_CLIENT>\nAddress = 10.200.200.2/24\nDNS = 8.8.8.8\n\n[Peer]\nPublicKey = <PUBLIC_KEY_VPS>\nEndpoint = <IP_VPS>:51820\nAllowedIPs = 0.0.0.0/0, ::/0\nPersistentKeepalive = 25\n\n\nAdd the new line in config.yaml Hysteria:\n\nforward:\n  - local_addr: 127.0.0.1:51820  # WireGuard port lokal\n    remote_addr: 10.200.200.1:51820\n\nOr run this command to route traffic from Hysteria to Wireguard:\niptables -t nat -A PREROUTING -p udp --dport 443 -j DNAT --to-destination 10.200.200.2\n\nStart your client app. Run ping test\nping <Game_Server_IPs> -t\nTraceroute\ntraceroute <Game_Server_IPs>\n\n',2,'2025-02-24 15:58:39','2025-02-24 16:38:24',1,1,0,'1. Update your dist repository:\r\n   ```apt update && apt upgrade -y```\r\n\r\n2. Install Wireguard:\r\n   ```apt install wireguard -y```\r\n\r\n3. Create a new Wireguard key:\r\n   ```wg genkey | tee /etc/wireguard/privatekey | wg pubkey > /etc/wireguard/publickey```\r\n\r\n   Save the output of these two files:\r\nPrivate Key: for server configuration.\r\nPublic Key: for client (your PC/phone).\r\n\r\n4. Create a configuration:\r\n```nano /etc/wireguard/wg0.conf```\r\n\r\n5. Fill conf file with:\r\n```\r\n[Interface]\r\nPrivateKey = <PRIVATE_KEY_VPS>\r\nAddress = 10.200.200.1/24\r\nListenPort = 51820\r\nPostUp = iptables -A FORWARD -i wg0 -j ACCEPT; iptables -t nat -A POSTROUTING -o eth0 -j MASQUERADE\r\nPostDown = iptables -D FORWARD -i wg0 -j ACCEPT; iptables -t nat -D POSTROUTING -o eth0 -j MASQUERADE\r\n\r\n[Peer]\r\nPublicKey = <PUBLIC_KEY_CLIENT>\r\nAllowedIPs = 10.200.200.2/32\r\n```\r\n\r\n6. Run the wireguard\r\n\r\n```wg-quick up wg0```\r\n```systemctl enable wg-quick@wg0```\r\n\r\nIf you using ufw, please open the port:\r\n```ufw allow 51820/udp```\r\n```ufw reload```\r\n\r\n7. Download client app from official website, [wireguard.com](https://www.wireguard.com/).\r\nFill the configuration with:\r\n```\r\n[Interface]\r\nPrivateKey = <PRIVATE_KEY_CLIENT>\r\nAddress = 10.200.200.2/24\r\nDNS = 8.8.8.8\r\n\r\n[Peer]\r\nPublicKey = <PUBLIC_KEY_VPS>\r\nEndpoint = <IP_VPS>:51820\r\nAllowedIPs = 0.0.0.0/0, ::/0\r\nPersistentKeepalive = 25\r\n```\r\n\r\n8. Add the new line in config.yaml Hysteria:\r\n```\r\nforward:\r\n  - local_addr: 127.0.0.1:51820  # WireGuard port lokal\r\n    remote_addr: 10.200.200.1:51820\r\n```\r\nOr run this command to route traffic from Hysteria to Wireguard:\r\n```iptables -t nat -A PREROUTING -p udp --dport 443 -j DNAT --to-destination 10.200.200.2```\r\n\r\n9. Start your client app. Run ping test\r\n```ping <Game_Server_IPs> -t```\r\nTraceroute\r\n```traceroute <Game_Server_IPs>```',12,0,NULL,1,'markdown'),
(7,3,0,'Installing Requirements','installing-requirements','<ol id=\"bkmrk-installing-php-sudo-\">\n<li>\n<p>Installing PHP\n<code>sudo apt update\nsudo apt install -y software-properties-common\nsudo add-apt-repository ppa:ondrej/php -y\nsudo apt update</code></p>\n<p><code>sudo apt install -y php8.2 php8.2-{fpm,gd,curl,zip,mbstring,intl,bcmath,gmp,xml,json,apcu}</code>\nCheck the version\n<code>php -v</code>\nIf you are using Debian, please refer to this command:\n<code>sudo apt install ca-certificates apt-transport-https\nsudo wget -qO /etc/apt/trusted.gpg.d/php.gpg https://packages.sury.org/php/apt.gpg\necho \"deb https://packages.sury.org/php/ $(lsb_release -sc) main\" | sudo tee /etc/apt/sources.list.d/php.list\nsudo apt update</code>\nEnsure the extensions:\n<code>php -m | grep -E \"gd|curl|zip|mbstring|intl|bcmath|gmp|xml|apcu|imagick|exif|ldap\"</code>\nInstalling PHP-FPM (Mandatory if using Nginx)\n<code>sudo apt install php8.2-fpm\nsudo systemctl enable --now php8.2-fpm\nsudo systemct status php8.2-fpm</code></p><div drawio-diagram=\"26\"><img src=\"https://x2.znand.my.id/uploads/images/drawio/2025-03/drawing-1-1740879617.png\"></div>\n</li>\n<li>\n<p>Installing Web Server\n<code>sudo apt-get install nginx</code>\n<code>sudo systemctl status nginx</code>\nEnsure Nginx is running</p><div drawio-diagram=\"27\"><img src=\"https://x2.znand.my.id/uploads/images/drawio/2025-03/drawing-1-1740879790.png\"></div>\n</li>\n<li>\n<p>Installing MySQL Database\n<code>sudo apt-get install mysql-server\nsudo systemctl status mysql</code></p><div drawio-diagram=\"28\"><img src=\"https://x2.znand.my.id/uploads/images/drawio/2025-03/drawing-1-1740879954.png\"></div>\n</li>\n</ol>\n','\n\nInstalling PHP\nsudo apt update\nsudo apt install -y software-properties-common\nsudo add-apt-repository ppa:ondrej/php -y\nsudo apt update\nsudo apt install -y php8.2 php8.2-{fpm,gd,curl,zip,mbstring,intl,bcmath,gmp,xml,json,apcu}\nCheck the version\nphp -v\nIf you are using Debian, please refer to this command:\nsudo apt install ca-certificates apt-transport-https\nsudo wget -qO /etc/apt/trusted.gpg.d/php.gpg https://packages.sury.org/php/apt.gpg\necho \"deb https://packages.sury.org/php/ $(lsb_release -sc) main\" | sudo tee /etc/apt/sources.list.d/php.list\nsudo apt update\nEnsure the extensions:\nphp -m | grep -E \"gd|curl|zip|mbstring|intl|bcmath|gmp|xml|apcu|imagick|exif|ldap\"\nInstalling PHP-FPM (Mandatory if using Nginx)\nsudo apt install php8.2-fpm\nsudo systemctl enable --now php8.2-fpm\nsudo systemct status php8.2-fpm\n\n\nInstalling Web Server\nsudo apt-get install nginx\nsudo systemctl status nginx\nEnsure Nginx is running\n\n\nInstalling MySQL Database\nsudo apt-get install mysql-server\nsudo systemctl status mysql\n\n\n',2,'2025-03-02 01:06:48','2025-03-02 01:47:14',1,1,0,'1. Installing PHP\r\n<code>sudo apt update\r\nsudo apt install -y software-properties-common\r\nsudo add-apt-repository ppa:ondrej/php -y\r\nsudo apt update</code>\r\n\r\n   ```sudo apt install -y php8.2 php8.2-{fpm,gd,curl,zip,mbstring,intl,bcmath,gmp,xml,json,apcu}```\r\nCheck the version\r\n```php -v```\r\nIf you are using Debian, please refer to this command:\r\n<code>sudo apt install ca-certificates apt-transport-https\r\nsudo wget -qO /etc/apt/trusted.gpg.d/php.gpg https://packages.sury.org/php/apt.gpg\r\necho \"deb https://packages.sury.org/php/ $(lsb_release -sc) main\" | sudo tee /etc/apt/sources.list.d/php.list\r\nsudo apt update</code>\r\nEnsure the extensions:\r\n```php -m | grep -E \"gd|curl|zip|mbstring|intl|bcmath|gmp|xml|apcu|imagick|exif|ldap\"```\r\nInstalling PHP-FPM (Mandatory if using Nginx)\r\n<code>sudo apt install php8.2-fpm\r\nsudo systemctl enable --now php8.2-fpm\r\nsudo systemct status php8.2-fpm</code><div drawio-diagram=\"26\"><img src=\"https://x2.znand.my.id/uploads/images/drawio/2025-03/drawing-1-1740879617.png\"></div>\r\n\r\n2. Installing Web Server\r\n```sudo apt-get install nginx```\r\n```sudo systemctl status nginx```\r\nEnsure Nginx is running<div drawio-diagram=\"27\"><img src=\"https://x2.znand.my.id/uploads/images/drawio/2025-03/drawing-1-1740879790.png\"></div>\r\n\r\n4. Installing MySQL Database\r\n<code>sudo apt-get install mysql-server\r\nsudo systemctl status mysql</code><div drawio-diagram=\"28\"><img src=\"https://x2.znand.my.id/uploads/images/drawio/2025-03/drawing-1-1740879954.png\"></div>',23,0,NULL,1,'markdown'),
(8,3,0,'Configuring Nextcloud','configuring-nextcloud','<ol id=\"bkmrk-clone-repository-nex\">\n<li>Clone repository Nextcloud:</li>\n</ol>\n<p id=\"bkmrk-git-clone-https%3A%2F%2Fgi\"><code>git clone https://github.com/nextcloud/server.git /var/www/nextcloud```\ncd /var/www/nextcloud</code></p>\n<ol start=\"2\" id=\"bkmrk-give-the-permission-\">\n<li>Give the permission to folders:</li>\n</ol>\n<p id=\"bkmrk-chown--r-www-data%3Aww\"><code>chown -R www-data:www-data /var/www/nextcloud\nchmod -R 755 /var/www/nextcloud</code></p>\n<ol start=\"3\" id=\"bkmrk-create-the-database\">\n<li>Create the database</li>\n</ol>\n<p id=\"bkmrk-enter%3A-sudo-mysql--u\">Enter:\n<code>sudo mysql -u root</code></p>\n<p id=\"bkmrk-create%3A-create-datab\">Create:\n<code>CREATE DATABASE nextcloud;\nCREATE USER \'nextcloud\'@\'localhost\' IDENTIFIED BY \'nextcloudpassword\';\nGRANT ALL PRIVILEGES ON nextcloud.* TO \'nextcloud\'@\'localhost\';\nFLUSH PRIVILEGES;\nEXIT;</code></p>\n<ol start=\"4\" id=\"bkmrk-create-nginx-configu\">\n<li>Create Nginx Configuration:</li>\n</ol>\n<p id=\"bkmrk-cd-%2Fetc%2Fnginx%2Fsites-\"><code>cd /etc/nginx/sites-available</code>\n<code>sudo nano nextcloud</code></p>\n<p id=\"bkmrk-fill-with%3A\">Fill with:</p>\n<pre id=\"bkmrk-server-%7B-server_name\"><code>server {\n    server_name x5.znand.my.id;\n    root /var/www/nextcloud;\n\n    index index.php index.html;\n\n    location / {\n        try_files $uri $uri/ /index.php$is_args$args;\n    }\n        # Tambahkan batasan upload &amp; buffer\n    client_max_body_size 20G;\n    fastcgi_buffers 64 4K;\n\n    location ~ ^/(?:build|tests|config|lib|3rdparty|templates|data)/ {\n        deny all;\n    }\n\n    location ~ \\.php(?:$|/) {\n        include fastcgi_params;\n        fastcgi_split_path_info ^(.+\\.php)(/.+)$;\n        fastcgi_pass unix:/run/php/php8.2-fpm.sock;\n        fastcgi_index index.php;\n        fastcgi_param SCRIPT_FILENAME $document_root$fastcgi_script_name;\n        fastcgi_param PATH_INFO $fastcgi_path_info;\n    }\n\n}\n</code></pre>\n<p id=\"bkmrk-sudo-rm-default-make\"><code>sudo rm default</code>\nMake symlink to sites-enabled\n<code>sudo ln -s /etc/nginx/sites-available/nextcloud /etc/nginx/sites-enabled/</code>\nMake sure the conf file is ok and successful\n<code>sudo nginx -t</code>\nRestart again\n<code>sudo systemctl restart nginx\nsudo systemctl restart php8.2-fpm</code></p>\n<p id=\"bkmrk-run-this-if-your-web\">Run this if your website has error; Composer autoloader not found\n<code>sudo git config --global --add safe.directory /var/www/nextcloud\ncd /var/www/nextcloud\nsudo git submodule update --init</code></p>\n<p id=\"bkmrk-last-but-not-last-yu\">Last but not last yup:\nCheck your Nextcloud version\n<code>sudo -u www-data php /var/www/nextcloud/occ status</code></p>\n<div drawio-diagram=\"31\" id=\"bkmrk-\"><img src=\"https://x2.znand.my.id/uploads/images/drawio/2025-03/drawing-1-1740882115.png\"></div>\n','\nClone repository Nextcloud:\n\ngit clone https://github.com/nextcloud/server.git /var/www/nextcloud```\ncd /var/www/nextcloud\n\nGive the permission to folders:\n\nchown -R www-data:www-data /var/www/nextcloud\nchmod -R 755 /var/www/nextcloud\n\nCreate the database\n\nEnter:\nsudo mysql -u root\nCreate:\nCREATE DATABASE nextcloud;\nCREATE USER \'nextcloud\'@\'localhost\' IDENTIFIED BY \'nextcloudpassword\';\nGRANT ALL PRIVILEGES ON nextcloud.* TO \'nextcloud\'@\'localhost\';\nFLUSH PRIVILEGES;\nEXIT;\n\nCreate Nginx Configuration:\n\ncd /etc/nginx/sites-available\nsudo nano nextcloud\nFill with:\nserver {\n    server_name x5.znand.my.id;\n    root /var/www/nextcloud;\n\n    index index.php index.html;\n\n    location / {\n        try_files $uri $uri/ /index.php$is_args$args;\n    }\n        # Tambahkan batasan upload & buffer\n    client_max_body_size 20G;\n    fastcgi_buffers 64 4K;\n\n    location ~ ^/(?:build|tests|config|lib|3rdparty|templates|data)/ {\n        deny all;\n    }\n\n    location ~ \\.php(?:$|/) {\n        include fastcgi_params;\n        fastcgi_split_path_info ^(.+\\.php)(/.+)$;\n        fastcgi_pass unix:/run/php/php8.2-fpm.sock;\n        fastcgi_index index.php;\n        fastcgi_param SCRIPT_FILENAME $document_root$fastcgi_script_name;\n        fastcgi_param PATH_INFO $fastcgi_path_info;\n    }\n\n}\n\nsudo rm default\nMake symlink to sites-enabled\nsudo ln -s /etc/nginx/sites-available/nextcloud /etc/nginx/sites-enabled/\nMake sure the conf file is ok and successful\nsudo nginx -t\nRestart again\nsudo systemctl restart nginx\nsudo systemctl restart php8.2-fpm\nRun this if your website has error; Composer autoloader not found\nsudo git config --global --add safe.directory /var/www/nextcloud\ncd /var/www/nextcloud\nsudo git submodule update --init\nLast but not last yup:\nCheck your Nextcloud version\nsudo -u www-data php /var/www/nextcloud/occ status\n\n',3,'2025-03-02 01:23:00','2025-03-02 02:22:03',1,1,0,'1. Clone repository Nextcloud:\r\n\r\n<code>git clone https://github.com/nextcloud/server.git /var/www/nextcloud```\r\ncd /var/www/nextcloud</code>\r\n\r\n2. Give the permission to folders:\r\n\r\n<code>chown -R www-data:www-data /var/www/nextcloud\r\nchmod -R 755 /var/www/nextcloud</code>\r\n\r\n3. Create the database\r\n\r\nEnter:\r\n```sudo mysql -u root```\r\n\r\nCreate:\r\n<code>CREATE DATABASE nextcloud;\r\nCREATE USER \'nextcloud\'@\'localhost\' IDENTIFIED BY \'nextcloudpassword\';\r\nGRANT ALL PRIVILEGES ON nextcloud.* TO \'nextcloud\'@\'localhost\';\r\nFLUSH PRIVILEGES;\r\nEXIT;</code>\r\n\r\n4. Create Nginx Configuration:\r\n\r\n```cd /etc/nginx/sites-available```\r\n```sudo nano nextcloud```\r\n\r\nFill with:\r\n```\r\nserver {\r\n    server_name x5.znand.my.id;\r\n    root /var/www/nextcloud;\r\n\r\n    index index.php index.html;\r\n\r\n    location / {\r\n        try_files $uri $uri/ /index.php$is_args$args;\r\n    }\r\n        # Tambahkan batasan upload & buffer\r\n    client_max_body_size 20G;\r\n    fastcgi_buffers 64 4K;\r\n\r\n    location ~ ^/(?:build|tests|config|lib|3rdparty|templates|data)/ {\r\n        deny all;\r\n    }\r\n\r\n    location ~ \\.php(?:$|/) {\r\n        include fastcgi_params;\r\n        fastcgi_split_path_info ^(.+\\.php)(/.+)$;\r\n        fastcgi_pass unix:/run/php/php8.2-fpm.sock;\r\n        fastcgi_index index.php;\r\n        fastcgi_param SCRIPT_FILENAME $document_root$fastcgi_script_name;\r\n        fastcgi_param PATH_INFO $fastcgi_path_info;\r\n    }\r\n\r\n}\r\n```\r\n\r\n```sudo rm default```\r\nMake symlink to sites-enabled\r\n```sudo ln -s /etc/nginx/sites-available/nextcloud /etc/nginx/sites-enabled/```\r\nMake sure the conf file is ok and successful\r\n```sudo nginx -t```\r\nRestart again\r\n<code>sudo systemctl restart nginx\r\nsudo systemctl restart php8.2-fpm</code>\r\n\r\nRun this if your website has error; Composer autoloader not found\r\n<code>sudo git config --global --add safe.directory /var/www/nextcloud\r\ncd /var/www/nextcloud\r\nsudo git submodule update --init</code>\r\n\r\nLast but not last yup:\r\nCheck your Nextcloud version\r\n```sudo -u www-data php /var/www/nextcloud/occ status```\r\n<div drawio-diagram=\"31\"><img src=\"https://x2.znand.my.id/uploads/images/drawio/2025-03/drawing-1-1740882115.png\"></div>',11,0,NULL,1,'markdown'),
(9,3,0,'Adding HTTPS/SSL Certificate to website with Let\'s Encrypt + Certbot','adding-httpsssl-certificate-to-website-with-lets-encrypt-certbot','<ol id=\"bkmrk-update-the-packets-a\">\n<li>\n<p>Update the packets and install Certbot + plugin Nginx\n<code>sudo apt update &amp;&amp; sudo apt install certbot python3-certbot-nginx -y</code></p>\n</li>\n<li>\n<p>Start:\n<code>sudo certbot --nginx</code>\nEnter your email, website etc.</p>\n</li>\n<li>\n<p>Verify the SSL is activated\n<code>sudo certbot certificates</code></p>\n</li>\n</ol>\n<div drawio-diagram=\"29\" id=\"bkmrk-\"><img src=\"https://x2.znand.my.id/uploads/images/drawio/2025-03/drawing-1-1740881352.png\"></div>\n<ol start=\"4\" id=\"bkmrk-set-auto-renew-ssl-s\">\n<li>Set Auto-Renew SSL\n<code>sudo systemctl status certbot.timer\nsudo systemctl enable --now certbot.timer</code></li>\n</ol>\n<p id=\"bkmrk-done%21-enjoy-your-nex\">DONE! Enjoy your Nextcloud</p>\n','\n\nUpdate the packets and install Certbot + plugin Nginx\nsudo apt update && sudo apt install certbot python3-certbot-nginx -y\n\n\nStart:\nsudo certbot --nginx\nEnter your email, website etc.\n\n\nVerify the SSL is activated\nsudo certbot certificates\n\n\n\n\nSet Auto-Renew SSL\nsudo systemctl status certbot.timer\nsudo systemctl enable --now certbot.timer\n\nDONE! Enjoy your Nextcloud\n',4,'2025-03-02 02:04:45','2025-03-02 02:11:42',1,1,0,'1. Update the packets and install Certbot + plugin Nginx\r\n```sudo apt update && sudo apt install certbot python3-certbot-nginx -y```\r\n\r\n2. Start:\r\n```sudo certbot --nginx```\r\nEnter your email, website etc.\r\n\r\n3. Verify the SSL is activated\r\n```sudo certbot certificates```\r\n<div drawio-diagram=\"29\"><img src=\"https://x2.znand.my.id/uploads/images/drawio/2025-03/drawing-1-1740881352.png\"></div>\r\n\r\n4. Set Auto-Renew SSL\r\n<code>sudo systemctl status certbot.timer\r\nsudo systemctl enable --now certbot.timer</code>\r\n\r\nDONE! Enjoy your Nextcloud',2,0,NULL,1,'markdown');
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NOT NULL,
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permission_role`
--

DROP TABLE IF EXISTS `permission_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permission_role` (
  `permission_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `permission_role_role_id_foreign` (`role_id`),
  CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `role_permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permission_role`
--

LOCK TABLES `permission_role` WRITE;
/*!40000 ALTER TABLE `permission_role` DISABLE KEYS */;
INSERT INTO `permission_role` VALUES
(19,1),
(20,1),
(21,1),
(22,1),
(23,1),
(24,1),
(24,2),
(25,1),
(25,2),
(26,1),
(26,2),
(27,1),
(27,2),
(28,1),
(28,2),
(29,1),
(29,2),
(30,1),
(30,2),
(31,1),
(31,2),
(32,1),
(32,2),
(33,1),
(33,2),
(34,1),
(34,2),
(35,1),
(35,2),
(36,1),
(36,2),
(37,1),
(37,2),
(38,1),
(38,2),
(39,1),
(39,2),
(40,1),
(40,2),
(41,1),
(41,2),
(42,1),
(42,2),
(43,1),
(43,2),
(44,1),
(44,2),
(45,1),
(45,2),
(46,1),
(46,2),
(47,1),
(47,2),
(48,1),
(48,2),
(48,3),
(48,4),
(49,1),
(49,2),
(49,3),
(49,4),
(50,1),
(50,2),
(50,3),
(50,4),
(51,1),
(51,2),
(51,3),
(51,4),
(52,1),
(52,2),
(52,3),
(52,4),
(53,1),
(53,2),
(53,3),
(53,4),
(54,1),
(55,1),
(56,1),
(57,1),
(58,1),
(59,1),
(60,1),
(61,1),
(62,1),
(63,1),
(64,1),
(65,1),
(66,1),
(66,2),
(66,3),
(66,4),
(67,1),
(67,2),
(67,3),
(67,4),
(68,1),
(68,2),
(69,1),
(69,2),
(70,1),
(70,2),
(71,1),
(71,2),
(72,1),
(72,2),
(73,1),
(73,2),
(74,1),
(75,1),
(76,1),
(76,2),
(76,3),
(76,4),
(77,1),
(78,1),
(79,1);
/*!40000 ALTER TABLE `permission_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `references`
--

DROP TABLE IF EXISTS `references`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `references` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `from_id` int(10) unsigned NOT NULL,
  `from_type` varchar(25) NOT NULL,
  `to_id` int(10) unsigned NOT NULL,
  `to_type` varchar(25) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `references_from_id_index` (`from_id`),
  KEY `references_from_type_index` (`from_type`),
  KEY `references_to_id_index` (`to_id`),
  KEY `references_to_type_index` (`to_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `references`
--

LOCK TABLES `references` WRITE;
/*!40000 ALTER TABLE `references` DISABLE KEYS */;
/*!40000 ALTER TABLE `references` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_permissions`
--

DROP TABLE IF EXISTS `role_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role_permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL,
  `display_name` varchar(191) DEFAULT NULL,
  `description` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permissions_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_permissions`
--

LOCK TABLES `role_permissions` WRITE;
/*!40000 ALTER TABLE `role_permissions` DISABLE KEYS */;
INSERT INTO `role_permissions` VALUES
(19,'settings-manage','Manage Settings',NULL,'2025-02-20 14:01:46','2025-02-20 14:01:46'),
(20,'users-manage','Manage Users',NULL,'2025-02-20 14:01:46','2025-02-20 14:01:46'),
(21,'user-roles-manage','Manage Roles & Permissions',NULL,'2025-02-20 14:01:46','2025-02-20 14:01:46'),
(22,'restrictions-manage-all','Manage All Entity Permissions',NULL,'2025-02-20 14:01:46','2025-02-20 14:01:46'),
(23,'restrictions-manage-own','Manage Entity Permissions On Own Content',NULL,'2025-02-20 14:01:46','2025-02-20 14:01:46'),
(24,'book-create-all','Create All Books',NULL,'2025-02-20 14:01:46','2025-02-20 14:01:46'),
(25,'book-create-own','Create Own Books',NULL,'2025-02-20 14:01:46','2025-02-20 14:01:46'),
(26,'book-update-all','Update All Books',NULL,'2025-02-20 14:01:46','2025-02-20 14:01:46'),
(27,'book-update-own','Update Own Books',NULL,'2025-02-20 14:01:46','2025-02-20 14:01:46'),
(28,'book-delete-all','Delete All Books',NULL,'2025-02-20 14:01:46','2025-02-20 14:01:46'),
(29,'book-delete-own','Delete Own Books',NULL,'2025-02-20 14:01:46','2025-02-20 14:01:46'),
(30,'page-create-all','Create All Pages',NULL,'2025-02-20 14:01:47','2025-02-20 14:01:47'),
(31,'page-create-own','Create Own Pages',NULL,'2025-02-20 14:01:47','2025-02-20 14:01:47'),
(32,'page-update-all','Update All Pages',NULL,'2025-02-20 14:01:47','2025-02-20 14:01:47'),
(33,'page-update-own','Update Own Pages',NULL,'2025-02-20 14:01:47','2025-02-20 14:01:47'),
(34,'page-delete-all','Delete All Pages',NULL,'2025-02-20 14:01:47','2025-02-20 14:01:47'),
(35,'page-delete-own','Delete Own Pages',NULL,'2025-02-20 14:01:47','2025-02-20 14:01:47'),
(36,'chapter-create-all','Create All Chapters',NULL,'2025-02-20 14:01:47','2025-02-20 14:01:47'),
(37,'chapter-create-own','Create Own Chapters',NULL,'2025-02-20 14:01:47','2025-02-20 14:01:47'),
(38,'chapter-update-all','Update All Chapters',NULL,'2025-02-20 14:01:47','2025-02-20 14:01:47'),
(39,'chapter-update-own','Update Own Chapters',NULL,'2025-02-20 14:01:47','2025-02-20 14:01:47'),
(40,'chapter-delete-all','Delete All Chapters',NULL,'2025-02-20 14:01:47','2025-02-20 14:01:47'),
(41,'chapter-delete-own','Delete Own Chapters',NULL,'2025-02-20 14:01:47','2025-02-20 14:01:47'),
(42,'image-create-all','Create All Images',NULL,'2025-02-20 14:01:47','2025-02-20 14:01:47'),
(43,'image-create-own','Create Own Images',NULL,'2025-02-20 14:01:47','2025-02-20 14:01:47'),
(44,'image-update-all','Update All Images',NULL,'2025-02-20 14:01:47','2025-02-20 14:01:47'),
(45,'image-update-own','Update Own Images',NULL,'2025-02-20 14:01:47','2025-02-20 14:01:47'),
(46,'image-delete-all','Delete All Images',NULL,'2025-02-20 14:01:47','2025-02-20 14:01:47'),
(47,'image-delete-own','Delete Own Images',NULL,'2025-02-20 14:01:47','2025-02-20 14:01:47'),
(48,'book-view-all','View All Books',NULL,'2025-02-20 14:01:47','2025-02-20 14:01:47'),
(49,'book-view-own','View Own Books',NULL,'2025-02-20 14:01:47','2025-02-20 14:01:47'),
(50,'page-view-all','View All Pages',NULL,'2025-02-20 14:01:47','2025-02-20 14:01:47'),
(51,'page-view-own','View Own Pages',NULL,'2025-02-20 14:01:47','2025-02-20 14:01:47'),
(52,'chapter-view-all','View All Chapters',NULL,'2025-02-20 14:01:47','2025-02-20 14:01:47'),
(53,'chapter-view-own','View Own Chapters',NULL,'2025-02-20 14:01:47','2025-02-20 14:01:47'),
(54,'attachment-create-all','Create All Attachments',NULL,'2025-02-20 14:01:47','2025-02-20 14:01:47'),
(55,'attachment-create-own','Create Own Attachments',NULL,'2025-02-20 14:01:47','2025-02-20 14:01:47'),
(56,'attachment-update-all','Update All Attachments',NULL,'2025-02-20 14:01:47','2025-02-20 14:01:47'),
(57,'attachment-update-own','Update Own Attachments',NULL,'2025-02-20 14:01:47','2025-02-20 14:01:47'),
(58,'attachment-delete-all','Delete All Attachments',NULL,'2025-02-20 14:01:47','2025-02-20 14:01:47'),
(59,'attachment-delete-own','Delete Own Attachments',NULL,'2025-02-20 14:01:47','2025-02-20 14:01:47'),
(60,'comment-create-all','Create All Comments',NULL,'2025-02-20 14:01:48','2025-02-20 14:01:48'),
(61,'comment-create-own','Create Own Comments',NULL,'2025-02-20 14:01:48','2025-02-20 14:01:48'),
(62,'comment-update-all','Update All Comments',NULL,'2025-02-20 14:01:48','2025-02-20 14:01:48'),
(63,'comment-update-own','Update Own Comments',NULL,'2025-02-20 14:01:48','2025-02-20 14:01:48'),
(64,'comment-delete-all','Delete All Comments',NULL,'2025-02-20 14:01:48','2025-02-20 14:01:48'),
(65,'comment-delete-own','Delete Own Comments',NULL,'2025-02-20 14:01:48','2025-02-20 14:01:48'),
(66,'bookshelf-view-all','View All BookShelves',NULL,'2025-02-20 14:01:48','2025-02-20 14:01:48'),
(67,'bookshelf-view-own','View Own BookShelves',NULL,'2025-02-20 14:01:48','2025-02-20 14:01:48'),
(68,'bookshelf-create-all','Create All BookShelves',NULL,'2025-02-20 14:01:48','2025-02-20 14:01:48'),
(69,'bookshelf-create-own','Create Own BookShelves',NULL,'2025-02-20 14:01:48','2025-02-20 14:01:48'),
(70,'bookshelf-update-all','Update All BookShelves',NULL,'2025-02-20 14:01:48','2025-02-20 14:01:48'),
(71,'bookshelf-update-own','Update Own BookShelves',NULL,'2025-02-20 14:01:48','2025-02-20 14:01:48'),
(72,'bookshelf-delete-all','Delete All BookShelves',NULL,'2025-02-20 14:01:48','2025-02-20 14:01:48'),
(73,'bookshelf-delete-own','Delete Own BookShelves',NULL,'2025-02-20 14:01:48','2025-02-20 14:01:48'),
(74,'templates-manage','Manage Page Templates',NULL,'2025-02-20 14:01:48','2025-02-20 14:01:48'),
(75,'access-api','Access system API',NULL,'2025-02-20 14:01:48','2025-02-20 14:01:48'),
(76,'content-export','Export Content',NULL,'2025-02-20 14:01:49','2025-02-20 14:01:49'),
(77,'editor-change','Change page editor',NULL,'2025-02-20 14:01:49','2025-02-20 14:01:49'),
(78,'receive-notifications','Receive & Manage Notifications',NULL,'2025-02-20 14:01:49','2025-02-20 14:01:49'),
(79,'content-import','Import Content',NULL,'2025-02-20 14:01:49','2025-02-20 14:01:49');
/*!40000 ALTER TABLE `role_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_user`
--

DROP TABLE IF EXISTS `role_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role_user` (
  `user_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `role_user_role_id_foreign` (`role_id`),
  CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_user`
--

LOCK TABLES `role_user` WRITE;
/*!40000 ALTER TABLE `role_user` DISABLE KEYS */;
INSERT INTO `role_user` VALUES
(1,1),
(2,4);
/*!40000 ALTER TABLE `role_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `display_name` varchar(191) DEFAULT NULL,
  `description` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `system_name` varchar(191) NOT NULL,
  `external_auth_id` varchar(180) NOT NULL DEFAULT '',
  `mfa_enforced` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `roles_system_name_index` (`system_name`),
  KEY `roles_external_auth_id_index` (`external_auth_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES
(1,'Admin','Administrator of the whole application','2025-02-20 14:01:46','2025-02-20 14:01:46','admin','',0),
(2,'Editor','User can edit Books, Chapters & Pages','2025-02-20 14:01:46','2025-02-20 14:01:46','','',0),
(3,'Viewer','User can view books & their content behind authentication','2025-02-20 14:01:46','2025-02-20 14:01:46','','',0),
(4,'Public','The role given to public visitors if allowed','2025-02-20 14:01:47','2025-02-20 14:01:47','public','',0);
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `search_terms`
--

DROP TABLE IF EXISTS `search_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `search_terms` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `term` varchar(180) NOT NULL,
  `entity_type` varchar(100) NOT NULL,
  `entity_id` int(11) NOT NULL,
  `score` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `search_terms_term_index` (`term`),
  KEY `search_terms_entity_type_index` (`entity_type`),
  KEY `search_terms_entity_type_entity_id_index` (`entity_type`,`entity_id`),
  KEY `search_terms_score_index` (`score`)
) ENGINE=InnoDB AUTO_INCREMENT=6602 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `search_terms`
--

LOCK TABLES `search_terms` WRITE;
/*!40000 ALTER TABLE `search_terms` DISABLE KEYS */;
INSERT INTO `search_terms` VALUES
(163,'New','page',1,40),
(164,'Page','page',1,40),
(165,'Test','page',1,1),
(166,'code','page',1,1),
(167,'berikut','page',1,1),
(168,'protocol','page',1,1),
(169,'udp','page',1,2),
(170,'auth','page',1,1),
(171,'type','page',1,2),
(172,'password','page',1,2),
(173,'passwordtest','page',1,1),
(174,'acme','page',1,1),
(175,'domains','page',1,1),
(176,'-','page',1,1),
(177,'hysteria','page',1,1),
(178,'znand','page',1,1),
(179,'my','page',1,1),
(180,'id','page',1,1),
(181,'email','page',1,1),
(182,'nannozeta@gmail','page',1,1),
(183,'com','page',1,2),
(184,'masquerade','page',1,1),
(185,'proxy','page',1,2),
(186,'url','page',1,1),
(187,'https','page',1,1),
(188,'//www','page',1,1),
(189,'cloudflare','page',1,1),
(190,'quic','page',1,1),
(191,'congestionControl','page',1,1),
(192,'bbr','page',1,1),
(193,'idleTimeout','page',1,2),
(194,'60s','page',1,3),
(195,'maxIdleTimeout','page',1,1),
(196,'keepAlivePeriod','page',1,1),
(197,'10s','page',1,1),
(984,'Configure','page',3,40),
(985,'the','page',3,44),
(986,'service','page',3,47),
(987,'in','page',3,41),
(988,'systemd','page',3,41),
(989,'Edit','page',3,2),
(990,'hysteria-server','page',3,4),
(991,'nano','page',3,1),
(992,'/etc/systemd/system/hysteria-server','page',3,1),
(993,'file','page',3,2),
(994,'into','page',3,1),
(995,'this','page',3,2),
(996,'Description=Hysteria','page',3,1),
(997,'Server','page',3,1),
(998,'Service','page',3,2),
(999,'After=network','page',3,1),
(1000,'target','page',3,2),
(1001,'Type=simple','page',3,1),
(1002,'ExecStart=/root/hysteria/hysteria-linux-amd64-avx','page',3,1),
(1003,'server','page',3,1),
(1004,'-c','page',3,1),
(1005,'/root/hysteria/config','page',3,1),
(1006,'yaml','page',3,1),
(1007,'WorkingDirectory=/root/hysteria','page',3,1),
(1008,'User=root','page',3,1),
(1009,'Group=root','page',3,1),
(1010,'Environment=HYSTERIA_LOG_LEVEL=info','page',3,1),
(1011,'CapabilityBoundingSet=CAP_NET_ADMIN','page',3,1),
(1012,'CAP_NET_BIND_SERVICE','page',3,2),
(1013,'CAP_NET_RAW','page',3,2),
(1014,'AmbientCapabilities=CAP_NET_ADMIN','page',3,1),
(1015,'NoNewPrivileges=true','page',3,1),
(1016,'Restart=on-failure','page',3,1),
(1017,'LimitNOFILE=4096','page',3,1),
(1018,'Install','page',3,1),
(1019,'WantedBy=multi-user','page',3,1),
(1020,'Save','page',3,1),
(1021,'and','page',3,1),
(1022,'run','page',3,1),
(1023,'systemctl','page',3,4),
(1024,'daemon-reload','page',3,1),
(1025,'enable','page',3,1),
(1026,'--now','page',3,1),
(1027,'start','page',3,1),
(1028,'Check','page',3,1),
(1029,'status','page',3,2),
(1030,'running','page',3,1),
(1031,'or','page',3,1),
(1032,'not','page',3,1),
(1033,'Your','page',3,1),
(1034,'should','page',3,1),
(1035,'be','page',3,1),
(1036,'like','page',3,1),
(1496,'Configure','page',4,40),
(1497,'the','page',4,46),
(1498,'client','page',4,41),
(1499,'side','page',4,40),
(1500,'To','page',4,1),
(1501,'use','page',4,2),
(1502,'server','page',4,3),
(1503,'you','page',4,1),
(1504,'must','page',4,1),
(1505,'download','page',4,3),
(1506,'app','page',4,3),
(1507,'In','page',4,1),
(1508,'this','page',4,2),
(1509,'example','page',4,1),
(1510,'im','page',4,1),
(1511,'using','page',4,1),
(1512,'nekobox','page',4,1),
(1513,'to','page',4,1),
(1514,'You','page',4,1),
(1515,'can','page',4,1),
(1516,'from','page',4,1),
(1517,'link','page',4,1),
(1518,'and','page',4,2),
(1519,'according','page',4,1),
(1520,'your','page',4,1),
(1521,'OS','page',4,1),
(1522,'Open','page',4,1),
(1523,'software','page',4,1),
(1524,'configure','page',4,1),
(1986,'Configure','page',5,40),
(1987,'the','page',5,50),
(1988,'client','page',5,41),
(1989,'side','page',5,40),
(1990,'Firstly','page',5,1),
(1991,'download','page',5,3),
(1992,'app','page',5,2),
(1993,'In','page',5,1),
(1994,'this','page',5,2),
(1995,'example','page',5,1),
(1996,'im','page',5,1),
(1997,'using','page',5,1),
(1998,'Nekobox','page',5,1),
(1999,'to','page',5,2),
(2000,'use','page',5,2),
(2001,'server','page',5,4),
(2002,'in','page',5,1),
(2003,'my','page',5,2),
(2004,'Device','page',5,1),
(2005,'You','page',5,1),
(2006,'can','page',5,2),
(2007,'through','page',5,1),
(2008,'link','page',5,1),
(2009,'and','page',5,3),
(2010,'according','page',5,2),
(2011,'your','page',5,1),
(2012,'OS','page',5,1),
(2013,'Open','page',5,1),
(2014,'software','page',5,1),
(2015,'add','page',5,1),
(2016,'new','page',5,1),
(2017,'profile','page',5,1),
(2018,'Fill','page',5,1),
(2019,'configuration','page',5,1),
(2020,'you','page',5,2),
(2021,'configured','page',5,1),
(2022,'before','page',5,1),
(2023,'Start','page',5,1),
(2024,'Check','page',5,1),
(2025,'log','page',5,1),
(2026,'inbound-outbound','page',5,1),
(2027,'traffic','page',5,1),
(2028,'Access','page',5,1),
(2029,'whoer','page',5,1),
(2030,'net','page',5,1),
(2031,'verify','page',5,1),
(2032,'is','page',5,1),
(2033,'connected','page',5,1),
(2034,'Also','page',5,1),
(2035,'sn','page',5,1),
(2036,'//hysteria','page',5,1),
(2037,'eNpjZ2BgyKgsLkktykzUq8pLzEvRy63Uy3xiwcLAwMQAAQWJxcXl-UUpJanFX0D8RmwaGhlgAMHiAmITk82MIMHGRgBAPhqn','page',5,1),
(2122,'How','book',2,49),
(2123,'To','book',2,48),
(2124,'Configure','book',2,48),
(2125,'Hysteria2','book',2,50),
(2126,'Server+Wireguard','book',2,48),
(2127,'Relay','book',2,48),
(2128,'For','book',2,48),
(2129,'Gaming','book',2,49),
(2130,'The','book',2,1),
(2131,'combination','book',2,1),
(2132,'of','book',2,1),
(2133,'+','book',2,1),
(2134,'WireGuard','book',2,2),
(2135,'relay','book',2,1),
(2136,'can','book',2,1),
(2137,'be','book',2,2),
(2138,'used','book',2,1),
(2139,'for','book',2,4),
(2140,'gaming','book',2,2),
(2141,'especially','book',2,1),
(2142,'if','book',2,1),
(2143,'the','book',2,3),
(2144,'main','book',2,1),
(2145,'goal','book',2,1),
(2146,'is','book',2,2),
(2147,'\r','book',2,10),
(2148,'Overcoming','book',2,1),
(2149,'ping','book',2,2),
(2150,'jumping','book',2,1),
(2151,'from\r','book',2,1),
(2152,'Stabilizing','book',2,1),
(2153,'connection','book',2,2),
(2154,'to','book',2,1),
(2155,'game','book',2,2),
(2156,'servers','book',2,2),
(2157,'that','book',2,3),
(2158,'often','book',2,1),
(2159,'experience','book',2,1),
(2160,'packet','book',2,1),
(2161,'loss','book',2,1),
(2162,'or','book',2,1),
(2163,'bad','book',2,1),
(2164,'routing','book',2,2),
(2165,'Accessing','book',2,1),
(2166,'certain','book',2,1),
(2167,'may','book',2,1),
(2168,'restricted','book',2,1),
(2169,'by','book',2,1),
(2170,'ISP','book',2,2),
(2171,'Does','book',2,1),
(2172,'It','book',2,1),
(2173,'Work','book',2,1),
(2174,'will','book',2,1),
(2175,'fix','book',2,1),
(2176,'problematic','book',2,1),
(2177,'connections','book',2,1),
(2178,'on','book',2,1),
(2179,'your','book',2,1),
(2180,'s','book',2,1),
(2181,'side','book',2,1),
(2182,'reducing','book',2,1),
(2183,'spikes','book',2,1),
(2184,'with','book',2,1),
(2185,'more','book',2,1),
(2186,'efficient','book',2,1),
(2187,'acts','book',2,1),
(2188,'as','book',2,1),
(2189,'a','book',2,1),
(2190,'lightweight','book',2,1),
(2191,'VPN','book',2,1),
(2192,'maintains','book',2,1),
(2193,'stability','book',2,1),
(2194,'and','book',2,1),
(2195,'provides','book',2,1),
(2196,'encryption','book',2,1),
(2197,'security','book',2,1),
(2198,'but','book',2,1),
(2199,'its','book',2,1),
(2200,'overhead','book',2,1),
(2201,'low','book',2,1),
(2202,'so','book',2,1),
(2203,'it','book',2,1),
(2204,'remains','book',2,1),
(2205,'fast','book',2,1),
(3466,'Configure','page',6,40),
(3467,'Wireguard','page',6,43),
(3468,'Relay','page',6,40),
(3469,'on','page',6,40),
(3470,'VPS','page',6,40),
(3471,'Update','page',6,1),
(3472,'your','page',6,3),
(3473,'dist','page',6,1),
(3474,'repository','page',6,1),
(3475,'apt','page',6,3),
(3476,'update','page',6,1),
(3477,'&&','page',6,1),
(3478,'upgrade','page',6,1),
(3479,'-y','page',6,2),
(3480,'Install','page',6,1),
(3481,'install','page',6,1),
(3482,'wireguard','page',6,3),
(3483,'Create','page',6,2),
(3484,'a','page',6,2),
(3485,'new','page',6,2),
(3486,'key','page',6,1),
(3487,'wg','page',6,2),
(3488,'genkey','page',6,1),
(3489,'|','page',6,2),
(3490,'tee','page',6,1),
(3491,'/etc/wireguard/privatekey','page',6,1),
(3492,'pubkey','page',6,1),
(3493,'/etc/wireguard/publickey','page',6,1),
(3494,'Save','page',6,1),
(3495,'the','page',6,5),
(3496,'output','page',6,1),
(3497,'of','page',6,1),
(3498,'these','page',6,1),
(3499,'two','page',6,1),
(3500,'files','page',6,1),
(3501,'Private','page',6,1),
(3502,'Key','page',6,2),
(3503,'for','page',6,2),
(3504,'server','page',6,1),
(3505,'configuration','page',6,3),
(3506,'Public','page',6,1),
(3507,'client','page',6,3),
(3508,'PC/phone','page',6,1),
(3509,'nano','page',6,1),
(3510,'/etc/wireguard/wg0','page',6,1),
(3511,'conf','page',6,2),
(3512,'Fill','page',6,2),
(3513,'file','page',6,1),
(3514,'with','page',6,2),
(3515,'Interface','page',6,2),
(3516,'PrivateKey','page',6,2),
(3517,'=','page',6,14),
(3518,'PRIVATE_KEY_VPS','page',6,1),
(3519,'Address','page',6,2),
(3520,'10','page',6,5),
(3521,'200','page',6,10),
(3522,'1/24','page',6,1),
(3523,'ListenPort','page',6,1),
(3524,'51820','page',6,4),
(3525,'PostUp','page',6,1),
(3526,'iptables','page',6,5),
(3527,'-A','page',6,3),
(3528,'FORWARD','page',6,2),
(3529,'-i','page',6,2),
(3530,'wg0','page',6,3),
(3531,'-j','page',6,5),
(3532,'ACCEPT','page',6,2),
(3533,'-t','page',6,4),
(3534,'nat','page',6,3),
(3535,'POSTROUTING','page',6,2),
(3536,'-o','page',6,2),
(3537,'eth0','page',6,2),
(3538,'MASQUERADE','page',6,2),
(3539,'PostDown','page',6,1),
(3540,'-D','page',6,2),
(3541,'Peer','page',6,2),
(3542,'PublicKey','page',6,2),
(3543,'PUBLIC_KEY_CLIENT','page',6,1),
(3544,'AllowedIPs','page',6,2),
(3545,'2/32','page',6,1),
(3546,'Run','page',6,2),
(3547,'wg-quick','page',6,1),
(3548,'up','page',6,1),
(3549,'systemctl','page',6,1),
(3550,'enable','page',6,1),
(3551,'wg-quick@wg0','page',6,1),
(3552,'If','page',6,1),
(3553,'you','page',6,1),
(3554,'using','page',6,1),
(3555,'ufw','page',6,3),
(3556,'please','page',6,1),
(3557,'open','page',6,1),
(3558,'port','page',6,2),
(3559,'allow','page',6,1),
(3560,'51820/udp','page',6,1),
(3561,'reload','page',6,1),
(3562,'Download','page',6,1),
(3563,'app','page',6,2),
(3564,'from','page',6,2),
(3565,'official','page',6,1),
(3566,'website','page',6,1),
(3567,'com','page',6,1),
(3568,'PRIVATE_KEY_CLIENT','page',6,1),
(3569,'2/24','page',6,1),
(3570,'DNS','page',6,1),
(3571,'8','page',6,4),
(3572,'PUBLIC_KEY_VPS','page',6,1),
(3573,'Endpoint','page',6,1),
(3574,'IP_VPS','page',6,1),
(3575,'0','page',6,5),
(3576,'0/0','page',6,1),
(3577,'/0','page',6,1),
(3578,'PersistentKeepalive','page',6,1),
(3579,'25','page',6,1),
(3580,'Add','page',6,1),
(3581,'line','page',6,1),
(3582,'in','page',6,1),
(3583,'config','page',6,1),
(3584,'yaml','page',6,1),
(3585,'Hysteria','page',6,2),
(3586,'forward','page',6,1),
(3587,'-','page',6,1),
(3588,'local_addr','page',6,1),
(3589,'127','page',6,1),
(3590,'1','page',6,2),
(3591,'#','page',6,1),
(3592,'WireGuard','page',6,1),
(3593,'lokal','page',6,1),
(3594,'remote_addr','page',6,1),
(3595,'Or','page',6,1),
(3596,'run','page',6,1),
(3597,'this','page',6,1),
(3598,'command','page',6,1),
(3599,'to','page',6,2),
(3600,'route','page',6,1),
(3601,'traffic','page',6,1),
(3602,'PREROUTING','page',6,1),
(3603,'-p','page',6,1),
(3604,'udp','page',6,1),
(3605,'--dport','page',6,1),
(3606,'443','page',6,1),
(3607,'DNAT','page',6,1),
(3608,'--to-destination','page',6,1),
(3609,'2','page',6,1),
(3610,'Start','page',6,1),
(3611,'ping','page',6,2),
(3612,'test','page',6,1),
(3613,'Game_Server_IPs','page',6,2),
(3614,'Traceroute','page',6,1),
(3615,'traceroute','page',6,1),
(3616,'Configure','page',2,40),
(3617,'the','page',2,49),
(3618,'Server','page',2,40),
(3619,'Install','page',2,1),
(3620,'to','page',2,4),
(3621,'latest','page',2,1),
(3622,'version','page',2,1),
(3623,'bash','page',2,2),
(3624,'curl','page',2,2),
(3625,'-fsSL','page',2,2),
(3626,'https','page',2,4),
(3627,'//get','page',2,2),
(3628,'hy2','page',2,2),
(3629,'sh/','page',2,2),
(3630,'Remove','page',2,1),
(3631,'and','page',2,4),
(3632,'uninstall','page',2,1),
(3633,'--remove','page',2,1),
(3634,'In','page',2,2),
(3635,'home','page',2,1),
(3636,'directory','page',2,1),
(3637,'mkdir','page',2,1),
(3638,'hysteria','page',2,2),
(3639,'cd','page',2,1),
(3640,'nano','page',2,1),
(3641,'config','page',2,1),
(3642,'yaml','page',2,2),
(3643,'Fill','page',2,1),
(3644,'blank','page',2,1),
(3645,'file','page',2,2),
(3646,'with','page',2,1),
(3647,'listen','page',2,1),
(3648,'443','page',2,2),
(3649,'protocol','page',2,1),
(3650,'udp','page',2,2),
(3651,'auth','page',2,1),
(3652,'type','page',2,3),
(3653,'password','page',2,4),
(3654,'passwordtest','page',2,1),
(3655,'obfs','page',2,1),
(3656,'salamander','page',2,2),
(3657,'cry_me_a_r1ver','page',2,1),
(3658,'acme','page',2,1),
(3659,'domains','page',2,1),
(3660,'-','page',2,1),
(3661,'yourdomain','page',2,1),
(3662,'net','page',2,2),
(3663,'email','page',2,2),
(3664,'yourname@yourdomain','page',2,1),
(3665,'masquerade','page',2,1),
(3666,'proxy','page',2,2),
(3667,'url','page',2,1),
(3668,'//www','page',2,1),
(3669,'cloudflare','page',2,1),
(3670,'com','page',2,1),
(3671,'quic','page',2,1),
(3672,'congestionControl','page',2,1),
(3673,'bbr','page',2,1),
(3674,'idleTimeout','page',2,2),
(3675,'60s','page',2,3),
(3676,'maxIdleTimeout','page',2,1),
(3677,'keepAlivePeriod','page',2,1),
(3678,'10s','page',2,1),
(3679,'Dont','page',2,1),
(3680,'forget','page',2,1),
(3681,'edit','page',2,1),
(3682,'domain','page',2,1),
(3683,'Download','page',2,1),
(3684,'executable','page',2,1),
(3685,'from','page',2,3),
(3686,'this','page',2,3),
(3687,'link','page',2,1),
(3688,'example','page',2,1),
(3689,'i','page',2,1),
(3690,'use','page',2,1),
(3691,'hysteria-linux-amd64-avx','page',2,2),
(3692,'wget','page',2,1),
(3693,'//github','page',2,1),
(3694,'com/apernet/hysteria/releases/download/app%2Fv2','page',2,1),
(3695,'6','page',2,1),
(3696,'1/hysteria-linux-amd64-avx','page',2,1),
(3697,'Run','page',2,1),
(3698,'server','page',2,5),
(3699,'sudo','page',2,2),
(3700,'setcap','page',2,1),
(3701,'cap_net_bind_service=+ep','page',2,1),
(3702,'/hysteria-linux-amd64-avx','page',2,2),
(3703,'If','page',2,2),
(3704,'you','page',2,5),
(3705,'got','page',2,2),
(3706,'error','page',2,1),
(3707,'Give','page',2,1),
(3708,'permission','page',2,1),
(3709,'chmod','page',2,1),
(3710,'+x','page',2,1),
(3711,'And','page',2,1),
(3712,'should','page',2,1),
(3713,'get','page',2,1),
(3714,'problem','page',2,1),
(3715,'solved','page',2,1),
(3716,'is','page',2,2),
(3717,'ready','page',2,1),
(3718,'be','page',2,1),
(3719,'running','page',2,2),
(3720,'Also','page',2,1),
(3721,'will','page',2,1),
(3722,'SSL','page',2,1),
(3723,'Certificate','page',2,1),
(3724,'Acme','page',2,1),
(3725,'already','page',2,1),
(3726,'listening','page',2,1),
(3727,'on','page',2,1),
(3728,'port','page',2,1),
(3729,'want','page',2,1),
(3730,'run','page',2,1),
(3731,'systemd','page',2,1),
(3732,'can','page',2,1),
(3733,'read','page',2,1),
(3734,'next','page',2,1),
(3735,'page','page',2,1),
(5017,'Installing','page',7,44),
(5018,'Requirements','page',7,40),
(5019,'PHP','page',7,1),
(5020,'sudo','page',7,16),
(5021,'apt','page',7,7),
(5022,'update','page',7,3),
(5023,'install','page',7,6),
(5024,'-y','page',7,3),
(5025,'software-properties-common','page',7,1),
(5026,'add-apt-repository','page',7,1),
(5027,'ppa','page',7,1),
(5028,'ondrej/php','page',7,1),
(5029,'php8','page',7,5),
(5030,'2','page',7,1),
(5031,'2-','page',7,1),
(5032,'fpm','page',7,1),
(5033,'gd','page',7,1),
(5034,'curl','page',7,1),
(5035,'zip','page',7,1),
(5036,'mbstring','page',7,1),
(5037,'intl','page',7,1),
(5038,'bcmath','page',7,1),
(5039,'gmp','page',7,1),
(5040,'xml','page',7,1),
(5041,'json','page',7,1),
(5042,'apcu','page',7,1),
(5043,'Check','page',7,1),
(5044,'the','page',7,2),
(5045,'version','page',7,1),
(5046,'php','page',7,2),
(5047,'-v','page',7,1),
(5048,'If','page',7,1),
(5049,'you','page',7,1),
(5050,'are','page',7,1),
(5051,'using','page',7,2),
(5052,'Debian','page',7,1),
(5053,'please','page',7,1),
(5054,'refer','page',7,1),
(5055,'to','page',7,1),
(5056,'this','page',7,1),
(5057,'command','page',7,1),
(5058,'ca-certificates','page',7,1),
(5059,'apt-transport-https','page',7,1),
(5060,'wget','page',7,1),
(5061,'-qO','page',7,1),
(5062,'/etc/apt/trusted','page',7,1),
(5063,'gpg','page',7,3),
(5064,'d/php','page',7,2),
(5065,'https','page',7,2),
(5066,'//packages','page',7,2),
(5067,'sury','page',7,2),
(5068,'org/php/apt','page',7,1),
(5069,'echo','page',7,1),
(5070,'deb','page',7,1),
(5071,'org/php/','page',7,1),
(5072,'$','page',7,1),
(5073,'lsb_release','page',7,1),
(5074,'-sc','page',7,1),
(5075,'main','page',7,1),
(5076,'|','page',7,2),
(5077,'tee','page',7,1),
(5078,'/etc/apt/sources','page',7,1),
(5079,'list','page',7,2),
(5080,'Ensure','page',7,2),
(5081,'extensions','page',7,1),
(5082,'-m','page',7,1),
(5083,'grep','page',7,1),
(5084,'-E','page',7,1),
(5085,'gd|curl|zip|mbstring|intl|bcmath|gmp|xml|apcu|imagick|exif|ldap','page',7,1),
(5086,'PHP-FPM','page',7,1),
(5087,'Mandatory','page',7,1),
(5088,'if','page',7,1),
(5089,'Nginx','page',7,2),
(5090,'2-fpm','page',7,3),
(5091,'systemctl','page',7,3),
(5092,'enable','page',7,1),
(5093,'--now','page',7,1),
(5094,'systemct','page',7,1),
(5095,'status','page',7,3),
(5096,'Web','page',7,1),
(5097,'Server','page',7,1),
(5098,'apt-get','page',7,2),
(5099,'nginx','page',7,2),
(5100,'is','page',7,1),
(5101,'running','page',7,1),
(5102,'MySQL','page',7,1),
(5103,'Database','page',7,1),
(5104,'mysql-server','page',7,1),
(5105,'mysql','page',7,1),
(6127,'Adding','page',9,40),
(6128,'HTTPS/SSL','page',9,40),
(6129,'Certificate','page',9,40),
(6130,'to','page',9,40),
(6131,'website','page',9,41),
(6132,'with','page',9,40),
(6133,'Let','page',9,40),
(6134,'s','page',9,40),
(6135,'Encrypt','page',9,40),
(6136,'+','page',9,41),
(6137,'Certbot','page',9,41),
(6138,'Update','page',9,1),
(6139,'the','page',9,2),
(6140,'packets','page',9,1),
(6141,'and','page',9,1),
(6142,'install','page',9,2),
(6143,'plugin','page',9,1),
(6144,'Nginx','page',9,1),
(6145,'sudo','page',9,6),
(6146,'apt','page',9,2),
(6147,'update','page',9,1),
(6148,'&&','page',9,1),
(6149,'certbot','page',9,5),
(6150,'python3-certbot-nginx','page',9,1),
(6151,'-y','page',9,1),
(6152,'Start','page',9,1),
(6153,'--nginx','page',9,1),
(6154,'Enter','page',9,1),
(6155,'your','page',9,2),
(6156,'email','page',9,1),
(6157,'etc','page',9,1),
(6158,'Verify','page',9,1),
(6159,'SSL','page',9,2),
(6160,'is','page',9,1),
(6161,'activated','page',9,1),
(6162,'certificates','page',9,1),
(6163,'Set','page',9,1),
(6164,'Auto-Renew','page',9,1),
(6165,'systemctl','page',9,2),
(6166,'status','page',9,1),
(6167,'timer','page',9,2),
(6168,'enable','page',9,1),
(6169,'--now','page',9,1),
(6170,'DONE','page',9,1),
(6171,'Enjoy','page',9,1),
(6172,'Nextcloud','page',9,1),
(6195,'Configuring','page',8,40),
(6196,'Nextcloud','page',8,42),
(6197,'Clone','page',8,1),
(6198,'repository','page',8,1),
(6199,'git','page',8,4),
(6200,'clone','page',8,1),
(6201,'https','page',8,1),
(6202,'//github','page',8,1),
(6203,'com/nextcloud/server','page',8,1),
(6204,'/var/www/nextcloud','page',8,7),
(6205,'cd','page',8,3),
(6206,'Give','page',8,1),
(6207,'the','page',8,3),
(6208,'permission','page',8,1),
(6209,'to','page',8,2),
(6210,'folders','page',8,1),
(6211,'chown','page',8,1),
(6212,'-R','page',8,2),
(6213,'www-data','page',8,3),
(6214,'chmod','page',8,1),
(6215,'755','page',8,1),
(6216,'Create','page',8,3),
(6217,'database','page',8,1),
(6218,'Enter','page',8,1),
(6219,'sudo','page',8,10),
(6220,'mysql','page',8,1),
(6221,'-u','page',8,2),
(6222,'root','page',8,2),
(6223,'CREATE','page',8,2),
(6224,'DATABASE','page',8,1),
(6225,'nextcloud','page',8,5),
(6226,'USER','page',8,1),
(6227,'@','page',8,2),
(6228,'localhost','page',8,2),
(6229,'IDENTIFIED','page',8,1),
(6230,'BY','page',8,1),
(6231,'nextcloudpassword','page',8,1),
(6232,'GRANT','page',8,1),
(6233,'ALL','page',8,1),
(6234,'PRIVILEGES','page',8,2),
(6235,'ON','page',8,1),
(6236,'*','page',8,1),
(6237,'TO','page',8,1),
(6238,'FLUSH','page',8,1),
(6239,'EXIT','page',8,1),
(6240,'Nginx','page',8,1),
(6241,'Configuration','page',8,1),
(6242,'/etc/nginx/sites-available','page',8,1),
(6243,'nano','page',8,1),
(6244,'Fill','page',8,1),
(6245,'with','page',8,1),
(6246,'server','page',8,1),
(6247,'server_name','page',8,1),
(6248,'x5','page',8,1),
(6249,'znand','page',8,1),
(6250,'my','page',8,1),
(6251,'id','page',8,1),
(6252,'index','page',8,4),
(6253,'php','page',8,5),
(6254,'html','page',8,1),
(6255,'location','page',8,3),
(6256,'/','page',8,3),
(6257,'try_files','page',8,1),
(6258,'$uri','page',8,1),
(6259,'$uri/','page',8,1),
(6260,'/index','page',8,1),
(6261,'php$is_args$args','page',8,1),
(6262,'#','page',8,1),
(6263,'Tambahkan','page',8,1),
(6264,'batasan','page',8,1),
(6265,'upload','page',8,1),
(6266,'&','page',8,1),
(6267,'buffer','page',8,1),
(6268,'client_max_body_size','page',8,1),
(6269,'20G','page',8,1),
(6270,'fastcgi_buffers','page',8,1),
(6271,'64','page',8,1),
(6272,'4K','page',8,1),
(6273,'~','page',8,2),
(6274,'^/','page',8,1),
(6275,'build|tests|config|lib|3rdparty|templates|data','page',8,1),
(6276,'deny','page',8,1),
(6277,'all','page',8,1),
(6278,'\\','page',8,1),
(6279,'$|/','page',8,1),
(6280,'include','page',8,1),
(6281,'fastcgi_params','page',8,1),
(6282,'fastcgi_split_path_info','page',8,1),
(6283,'^','page',8,1),
(6284,'+\\','page',8,1),
(6285,'+','page',8,1),
(6286,'$','page',8,1),
(6287,'fastcgi_pass','page',8,1),
(6288,'unix','page',8,1),
(6289,'/run/php/php8','page',8,1),
(6290,'2-fpm','page',8,2),
(6291,'sock','page',8,1),
(6292,'fastcgi_index','page',8,1),
(6293,'fastcgi_param','page',8,2),
(6294,'SCRIPT_FILENAME','page',8,1),
(6295,'$document_root$fastcgi_script_name','page',8,1),
(6296,'PATH_INFO','page',8,1),
(6297,'$fastcgi_path_info','page',8,1),
(6298,'rm','page',8,1),
(6299,'default','page',8,1),
(6300,'Make','page',8,2),
(6301,'symlink','page',8,1),
(6302,'sites-enabled','page',8,1),
(6303,'ln','page',8,1),
(6304,'-s','page',8,1),
(6305,'/etc/nginx/sites-available/nextcloud','page',8,1),
(6306,'/etc/nginx/sites-enabled/','page',8,1),
(6307,'sure','page',8,1),
(6308,'conf','page',8,1),
(6309,'file','page',8,1),
(6310,'is','page',8,1),
(6311,'ok','page',8,1),
(6312,'and','page',8,1),
(6313,'successful','page',8,1),
(6314,'nginx','page',8,2),
(6315,'-t','page',8,1),
(6316,'Restart','page',8,1),
(6317,'again','page',8,1),
(6318,'systemctl','page',8,2),
(6319,'restart','page',8,2),
(6320,'php8','page',8,1),
(6321,'Run','page',8,1),
(6322,'this','page',8,1),
(6323,'if','page',8,1),
(6324,'your','page',8,2),
(6325,'website','page',8,1),
(6326,'has','page',8,1),
(6327,'error','page',8,1),
(6328,'Composer','page',8,1),
(6329,'autoloader','page',8,1),
(6330,'not','page',8,2),
(6331,'found','page',8,1),
(6332,'config','page',8,1),
(6333,'--global','page',8,1),
(6334,'--add','page',8,1),
(6335,'safe','page',8,1),
(6336,'directory','page',8,1),
(6337,'submodule','page',8,1),
(6338,'update','page',8,1),
(6339,'--init','page',8,1),
(6340,'Last','page',8,1),
(6341,'but','page',8,1),
(6342,'last','page',8,1),
(6343,'yup','page',8,1),
(6344,'Check','page',8,1),
(6345,'version','page',8,1),
(6346,'/var/www/nextcloud/occ','page',8,1),
(6347,'status','page',8,1),
(6348,'How','book',1,48),
(6349,'To','book',1,48),
(6350,'Configure','book',1,48),
(6351,'Hysteria2','book',1,49),
(6352,'Server','book',1,48),
(6353,'UDP','book',1,48),
(6354,'Forwarding','book',1,48),
(6355,'is','book',1,2),
(6356,'a','book',1,1),
(6357,'protocol','book',1,2),
(6358,'and','book',1,2),
(6359,'proxy','book',1,1),
(6360,'application','book',1,1),
(6361,'designed','book',1,1),
(6362,'to','book',1,2),
(6363,'optimize','book',1,1),
(6364,'internet','book',1,1),
(6365,'connections','book',1,1),
(6366,'especially','book',1,1),
(6367,'in','book',1,1),
(6368,'terms','book',1,1),
(6369,'of','book',1,1),
(6370,'speed','book',1,1),
(6371,'stability','book',1,1),
(6372,'low','book',1,1),
(6373,'latency','book',1,1),
(6374,'This','book',1,1),
(6375,'often','book',1,1),
(6376,'used','book',1,1),
(6377,'overcome','book',1,1),
(6378,'network','book',1,1),
(6379,'problems','book',1,1),
(6380,'such','book',1,1),
(6381,'as','book',1,1),
(6382,'ping','book',1,1),
(6383,'jumps','book',1,1),
(6384,'packet','book',1,1),
(6385,'loss','book',1,1),
(6386,'or','book',1,6),
(6387,'ISP','book',1,1),
(6388,'throttling—especially','book',1,1),
(6389,'for','book',1,1),
(6390,'gaming','book',1,1),
(6391,'streaming','book',1,1),
(6392,'remote','book',1,1),
(6393,'access','book',1,1),
(6394,'\r','book',1,8),
(6395,'OS','book',1,1),
(6396,'Requirements','book',1,1),
(6397,'Debian','book',1,1),
(6398,'11','book',1,1),
(6399,'higher\r','book',1,2),
(6400,'Ubuntu','book',1,1),
(6401,'22','book',1,1),
(6402,'04','book',1,1),
(6403,'LTS','book',1,2),
(6404,'higher','book',1,1),
(6405,'versions\r','book',1,1),
(6406,'Rocky','book',1,1),
(6407,'Linux','book',1,1),
(6408,'8','book',1,1),
(6409,'Main','book',1,1),
(6410,'Feature','book',1,1),
(6411,'UDP-based','book',1,1),
(6412,'Protocol','book',1,1),
(6413,'QUIC','book',1,1),
(6414,'Traffic','book',1,1),
(6415,'Obfuscation\r','book',1,1),
(6416,'Auto','book',1,1),
(6417,'Bandwidth','book',1,1),
(6418,'Adjustment\r','book',1,1),
(6419,'Adaptive','book',1,1),
(6420,'Congestion','book',1,1),
(6421,'Control\r','book',1,1),
(6422,'Compatibility\r','book',1,1),
(6565,'Deploy','book',3,48),
(6566,'Nextcloud','book',3,48),
(6567,'in','book',3,48),
(6568,'Ubuntu','book',3,48),
(6569,'Server','book',3,48),
(6570,'with','book',3,49),
(6571,'Nginx','book',3,48),
(6572,'Requirements','book',3,1),
(6573,'\r','book',3,4),
(6574,'Web','book',3,1),
(6575,'server','book',3,2),
(6576,'Apache/Nginx','book',3,1),
(6577,'PHP','book',3,1),
(6578,'8','book',3,1),
(6579,'x','book',3,1),
(6580,'extensions','book',3,1),
(6581,'php8','book',3,1),
(6582,'x-','book',3,1),
(6583,'gd','book',3,1),
(6584,'curl','book',3,1),
(6585,'zip','book',3,1),
(6586,'mbstring','book',3,1),
(6587,'intl','book',3,1),
(6588,'bcmath','book',3,1),
(6589,'gmp','book',3,1),
(6590,'xml','book',3,1),
(6591,'apcu','book',3,1),
(6592,'imagick','book',3,1),
(6593,'exif','book',3,1),
(6594,'ldap','book',3,1),
(6595,'MariaDB/MySQL\r','book',3,1),
(6596,'Git\r','book',3,1),
(6597,'Domain','book',3,1),
(6598,'pointed','book',3,1),
(6599,'to','book',3,1),
(6600,'the','book',3,1),
(6601,'IP\r','book',3,1);
/*!40000 ALTER TABLE `search_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sessions` (
  `id` varchar(191) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` text NOT NULL,
  `last_activity` int(11) NOT NULL,
  UNIQUE KEY `sessions_id_unique` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `settings` (
  `setting_key` varchar(191) NOT NULL,
  `value` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `type` varchar(50) NOT NULL DEFAULT 'string',
  PRIMARY KEY (`setting_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES
('app-color','#206ea7','2025-02-22 04:57:10','2025-02-22 04:57:10','string'),
('app-color-dark','#195785','2025-02-22 04:57:10','2025-02-22 04:57:10','string'),
('app-color-light','rgba(32,110,167,0.15)','2025-02-22 04:57:10','2025-02-22 04:57:10','string'),
('app-color-light-dark','rgba(32,110,167,0.15)','2025-02-22 04:57:10','2025-02-22 04:57:10','string'),
('app-custom-head','<style>\r\n  pre, code {\r\n    background-color: #6a6a6a;\r\n    color: #dcdcdc;\r\n    padding: 10px;\r\n    border-radius: 5px;\r\n    display: block;\r\n    overflow-x: auto;\r\n  }\r\n\r\n  .code-block {\r\n    background-color: #6a6a6a;\r\n    padding: 10px;\r\n    border-radius: 5px;\r\n    margin: 10px 0;\r\n  }\r\n</style>\r\n\r\n\r\n<link rel=\"stylesheet\" href=\"//cdnjs.cloudflare.com/ajax/libs/highlight.js/11.7.0/styles/atom-one-dark.min.css\">\r\n<script src=\"//cdnjs.cloudflare.com/ajax/libs/highlight.js/11.7.0/highlight.min.js\"></script>\r\n<script>hljs.highlightAll();</script>','2025-02-22 04:57:10','2025-02-22 16:17:56','string'),
('app-disable-comments','false','2025-02-22 05:18:39','2025-02-22 05:18:39','string'),
('app-editor','markdown','2025-02-22 04:57:10','2025-02-22 04:57:10','string'),
('app-footer-links','[{\"label\":\"My Instagram\",\"url\":\"https:\\/\\/instagram.com\\/znand_\"},{\"label\":\"My YT\",\"url\":\"https:\\/\\/www.youtube.com\\/@NetworkEnthusiastID\"}]','2025-02-22 04:57:10','2025-02-22 15:58:35','array'),
('app-homepage','','2025-02-22 04:57:10','2025-02-22 04:57:10','string'),
('app-homepage-type','books','2025-02-22 04:57:10','2025-02-22 05:00:21','string'),
('app-name','NEID_Community','2025-02-22 04:57:10','2025-02-22 16:01:49','string'),
('app-name-header','true','2025-02-22 04:57:10','2025-02-22 04:57:10','string'),
('app-public','true','2025-02-22 05:18:39','2025-02-22 05:18:39','string'),
('app-secure-images','false','2025-02-22 05:18:39','2025-02-22 16:01:34','string'),
('book-color','#077b70','2025-02-22 04:57:10','2025-02-22 04:57:10','string'),
('book-color-dark','#389f60','2025-02-22 04:57:10','2025-02-22 04:57:10','string'),
('bookshelf-color','#a94747','2025-02-22 04:57:10','2025-02-22 04:57:10','string'),
('bookshelf-color-dark','#ff5454','2025-02-22 04:57:10','2025-02-22 04:57:10','string'),
('chapter-color','#af4d0d','2025-02-22 04:57:10','2025-02-22 04:57:10','string'),
('chapter-color-dark','#ee7a2d','2025-02-22 04:57:10','2025-02-22 04:57:10','string'),
('instance-id','01dc431c-e3f3-4526-afb3-6042c186dabc','2025-02-20 14:01:50','2025-02-20 14:01:50','string'),
('link-color','#206ea7','2025-02-22 04:57:10','2025-02-22 04:57:10','string'),
('link-color-dark','#429fe3','2025-02-22 04:57:10','2025-02-22 04:57:10','string'),
('page-color','#206ea7','2025-02-22 04:57:10','2025-02-22 04:57:10','string'),
('page-color-dark','#429fe3','2025-02-22 04:57:10','2025-02-22 04:57:10','string'),
('page-draft-color','#7e50b1','2025-02-22 04:57:10','2025-02-22 04:57:10','string'),
('page-draft-color-dark','#a66ce8','2025-02-22 04:57:10','2025-02-22 04:57:10','string'),
('user:1:books_sort','name','2025-02-22 04:59:45','2025-02-22 04:59:45','string'),
('user:1:books_sort_order','asc','2025-02-22 04:59:45','2025-02-22 04:59:47','string'),
('user:1:dark-mode-enabled','true','2025-02-22 04:37:37','2025-02-22 16:14:27','string');
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_accounts`
--

DROP TABLE IF EXISTS `social_accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `social_accounts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `driver` varchar(191) NOT NULL,
  `driver_id` varchar(191) NOT NULL,
  `avatar` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `social_accounts_user_id_index` (`user_id`),
  KEY `social_accounts_driver_index` (`driver`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_accounts`
--

LOCK TABLES `social_accounts` WRITE;
/*!40000 ALTER TABLE `social_accounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `social_accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entity_id` int(11) NOT NULL,
  `entity_type` varchar(100) NOT NULL,
  `name` varchar(191) NOT NULL,
  `value` varchar(191) NOT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tags_name_index` (`name`),
  KEY `tags_value_index` (`value`),
  KEY `tags_order_index` (`order`),
  KEY `tags_entity_id_entity_type_index` (`entity_id`,`entity_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_invites`
--

DROP TABLE IF EXISTS `user_invites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_invites` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_invites_user_id_index` (`user_id`),
  KEY `user_invites_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_invites`
--

LOCK TABLES `user_invites` WRITE;
/*!40000 ALTER TABLE `user_invites` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_invites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `password` varchar(60) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `email_confirmed` tinyint(1) NOT NULL DEFAULT 1,
  `image_id` int(11) NOT NULL DEFAULT 0,
  `external_auth_id` varchar(191) NOT NULL,
  `system_name` varchar(191) DEFAULT NULL,
  `slug` varchar(180) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_slug_unique` (`slug`),
  KEY `users_external_auth_id_index` (`external_auth_id`),
  KEY `users_system_name_index` (`system_name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES
(1,'Admin','admin@admin.com','$2y$12$Yi.acVU3MATq8ZoxrACcxeWUeqdookRCJicGWL/QCvI29DLP2WkRW',NULL,'2025-02-20 14:01:46','2025-02-20 14:01:46',1,0,'',NULL,'admin'),
(2,'Guest','guest@example.com','',NULL,'2025-02-20 14:01:47','2025-02-20 14:01:47',1,0,'','public','guest');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `views`
--

DROP TABLE IF EXISTS `views`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `views` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `viewable_id` int(11) NOT NULL,
  `viewable_type` varchar(191) NOT NULL,
  `views` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `views_user_id_index` (`user_id`),
  KEY `views_viewable_id_index` (`viewable_id`),
  KEY `views_updated_at_index` (`updated_at`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `views`
--

LOCK TABLES `views` WRITE;
/*!40000 ALTER TABLE `views` DISABLE KEYS */;
INSERT INTO `views` VALUES
(1,1,1,'book',41,'2025-02-22 05:03:51','2025-03-02 02:28:55'),
(2,1,1,'page',7,'2025-02-22 05:14:38','2025-02-22 15:08:33'),
(3,1,2,'page',30,'2025-02-22 14:05:39','2025-03-02 02:28:51'),
(4,1,3,'page',7,'2025-02-22 15:17:13','2025-03-01 09:41:57'),
(5,1,5,'page',16,'2025-02-22 15:36:35','2025-02-22 17:13:19'),
(6,1,4,'page',2,'2025-02-22 15:55:42','2025-02-22 15:59:14'),
(7,1,2,'book',2,'2025-02-24 15:50:50','2025-02-24 15:58:35'),
(8,1,6,'page',12,'2025-02-24 16:04:11','2025-02-24 16:38:24'),
(9,1,3,'book',26,'2025-03-02 01:06:44','2025-03-03 12:37:14'),
(10,1,7,'page',35,'2025-03-02 01:07:42','2025-03-03 12:02:45'),
(11,1,8,'page',22,'2025-03-02 01:23:04','2025-03-02 02:27:43'),
(12,1,9,'page',5,'2025-03-02 02:10:03','2025-03-02 02:26:43');
/*!40000 ALTER TABLE `views` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `watches`
--

DROP TABLE IF EXISTS `watches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `watches` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `watchable_id` int(11) NOT NULL,
  `watchable_type` varchar(100) NOT NULL,
  `level` tinyint(3) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `watchable_index` (`watchable_id`,`watchable_type`),
  KEY `watches_user_id_index` (`user_id`),
  KEY `watches_level_index` (`level`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `watches`
--

LOCK TABLES `watches` WRITE;
/*!40000 ALTER TABLE `watches` DISABLE KEYS */;
INSERT INTO `watches` VALUES
(1,1,1,'page',2,'2025-02-22 05:17:18','2025-02-22 05:17:18');
/*!40000 ALTER TABLE `watches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `webhook_tracked_events`
--

DROP TABLE IF EXISTS `webhook_tracked_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `webhook_tracked_events` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `webhook_id` int(11) NOT NULL,
  `event` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `webhook_tracked_events_event_index` (`event`),
  KEY `webhook_tracked_events_webhook_id_index` (`webhook_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `webhook_tracked_events`
--

LOCK TABLES `webhook_tracked_events` WRITE;
/*!40000 ALTER TABLE `webhook_tracked_events` DISABLE KEYS */;
/*!40000 ALTER TABLE `webhook_tracked_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `webhooks`
--

DROP TABLE IF EXISTS `webhooks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `webhooks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `endpoint` varchar(500) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `timeout` int(10) unsigned NOT NULL DEFAULT 3,
  `last_error` text NOT NULL DEFAULT '',
  `last_called_at` timestamp NULL DEFAULT NULL,
  `last_errored_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `webhooks_name_index` (`name`),
  KEY `webhooks_active_index` (`active`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `webhooks`
--

LOCK TABLES `webhooks` WRITE;
/*!40000 ALTER TABLE `webhooks` DISABLE KEYS */;
/*!40000 ALTER TABLE `webhooks` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-03-03 23:26:07
