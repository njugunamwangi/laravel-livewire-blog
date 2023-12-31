-- MariaDB dump 10.19-11.2.2-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: laravel_livewire_blog
-- ------------------------------------------------------
-- Server version	11.2.2-MariaDB

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
-- Table structure for table `activity_log`
--

DROP TABLE IF EXISTS `activity_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `activity_log` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `log_name` varchar(255) DEFAULT NULL,
  `description` text NOT NULL,
  `subject_type` varchar(255) DEFAULT NULL,
  `event` varchar(255) DEFAULT NULL,
  `subject_id` bigint(20) unsigned DEFAULT NULL,
  `causer_type` varchar(255) DEFAULT NULL,
  `causer_id` bigint(20) unsigned DEFAULT NULL,
  `properties` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`properties`)),
  `batch_uuid` char(36) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `subject` (`subject_type`,`subject_id`),
  KEY `causer` (`causer_type`,`causer_id`),
  KEY `activity_log_log_name_index` (`log_name`)
) ENGINE=InnoDB AUTO_INCREMENT=359 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activity_log`
--

LOCK TABLES `activity_log` WRITE;
/*!40000 ALTER TABLE `activity_log` DISABLE KEYS */;
INSERT INTO `activity_log` VALUES
(1,'Resource','User Created','App\\Models\\User','Created',1,NULL,NULL,'{\"name\":\"Ndachi Mugo\",\"email\":\"info@ndachi.dev\",\"slug\":\"ndachi-mugo\",\"updated_at\":\"2023-12-05 14:47:44\",\"created_at\":\"2023-12-05 14:47:44\",\"id\":1}',NULL,'2023-12-05 11:47:44','2023-12-05 11:47:44'),
(2,'Notification','VerifyEmail Notification sent to info@ndachi.dev',NULL,'Notification Sent',NULL,NULL,NULL,'[]',NULL,'2023-12-05 11:47:54','2023-12-05 11:47:54'),
(3,'Access','Ndachi Mugo logged in',NULL,'Login',NULL,'App\\Models\\User',1,'{\"ip\":\"127.0.0.1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/119.0.0.0 Safari\\/537.36\"}',NULL,'2023-12-05 11:47:54','2023-12-05 11:47:54'),
(4,'Resource','User Updated by Ndachi Mugo','App\\Models\\User','Updated',1,'App\\Models\\User',1,'{\"email_verified_at\":\"2023-12-05 14:48:20\",\"updated_at\":\"2023-12-05 14:48:20\"}',NULL,'2023-12-05 11:48:20','2023-12-05 11:48:20'),
(5,'Resource','Role Updated by Ndachi Mugo','Spatie\\Permission\\Models\\Role','Updated',1,'App\\Models\\User',1,'{\"name\":\"Admin\",\"updated_at\":\"2023-12-05 16:25:46\"}',NULL,'2023-12-05 13:25:47','2023-12-05 13:25:47'),
(6,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',1,NULL,NULL,'{\"guard_name\":\"web\",\"name\":\"view-any Article\",\"updated_at\":\"2023-12-05 16:27:54\",\"created_at\":\"2023-12-05 16:27:54\",\"id\":1}',NULL,'2023-12-05 13:27:54','2023-12-05 13:27:54'),
(7,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',2,NULL,NULL,'{\"guard_name\":\"api\",\"name\":\"view-any Article\",\"updated_at\":\"2023-12-05 16:27:54\",\"created_at\":\"2023-12-05 16:27:54\",\"id\":2}',NULL,'2023-12-05 13:27:54','2023-12-05 13:27:54'),
(8,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',3,NULL,NULL,'{\"guard_name\":\"web\",\"name\":\"view Article\",\"updated_at\":\"2023-12-05 16:27:54\",\"created_at\":\"2023-12-05 16:27:54\",\"id\":3}',NULL,'2023-12-05 13:27:54','2023-12-05 13:27:54'),
(9,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',4,NULL,NULL,'{\"guard_name\":\"api\",\"name\":\"view Article\",\"updated_at\":\"2023-12-05 16:27:54\",\"created_at\":\"2023-12-05 16:27:54\",\"id\":4}',NULL,'2023-12-05 13:27:54','2023-12-05 13:27:54'),
(10,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',5,NULL,NULL,'{\"guard_name\":\"web\",\"name\":\"create Article\",\"updated_at\":\"2023-12-05 16:27:54\",\"created_at\":\"2023-12-05 16:27:54\",\"id\":5}',NULL,'2023-12-05 13:27:54','2023-12-05 13:27:54'),
(11,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',6,NULL,NULL,'{\"guard_name\":\"api\",\"name\":\"create Article\",\"updated_at\":\"2023-12-05 16:27:54\",\"created_at\":\"2023-12-05 16:27:54\",\"id\":6}',NULL,'2023-12-05 13:27:54','2023-12-05 13:27:54'),
(12,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',7,NULL,NULL,'{\"guard_name\":\"web\",\"name\":\"update Article\",\"updated_at\":\"2023-12-05 16:27:54\",\"created_at\":\"2023-12-05 16:27:54\",\"id\":7}',NULL,'2023-12-05 13:27:54','2023-12-05 13:27:54'),
(13,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',8,NULL,NULL,'{\"guard_name\":\"api\",\"name\":\"update Article\",\"updated_at\":\"2023-12-05 16:27:54\",\"created_at\":\"2023-12-05 16:27:54\",\"id\":8}',NULL,'2023-12-05 13:27:54','2023-12-05 13:27:54'),
(14,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',9,NULL,NULL,'{\"guard_name\":\"web\",\"name\":\"delete Article\",\"updated_at\":\"2023-12-05 16:27:54\",\"created_at\":\"2023-12-05 16:27:54\",\"id\":9}',NULL,'2023-12-05 13:27:54','2023-12-05 13:27:54'),
(15,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',10,NULL,NULL,'{\"guard_name\":\"api\",\"name\":\"delete Article\",\"updated_at\":\"2023-12-05 16:27:54\",\"created_at\":\"2023-12-05 16:27:54\",\"id\":10}',NULL,'2023-12-05 13:27:54','2023-12-05 13:27:54'),
(16,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',11,NULL,NULL,'{\"guard_name\":\"web\",\"name\":\"restore Article\",\"updated_at\":\"2023-12-05 16:27:54\",\"created_at\":\"2023-12-05 16:27:54\",\"id\":11}',NULL,'2023-12-05 13:27:54','2023-12-05 13:27:54'),
(17,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',12,NULL,NULL,'{\"guard_name\":\"api\",\"name\":\"restore Article\",\"updated_at\":\"2023-12-05 16:27:54\",\"created_at\":\"2023-12-05 16:27:54\",\"id\":12}',NULL,'2023-12-05 13:27:54','2023-12-05 13:27:54'),
(18,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',13,NULL,NULL,'{\"guard_name\":\"web\",\"name\":\"force-delete Article\",\"updated_at\":\"2023-12-05 16:27:54\",\"created_at\":\"2023-12-05 16:27:54\",\"id\":13}',NULL,'2023-12-05 13:27:54','2023-12-05 13:27:54'),
(19,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',14,NULL,NULL,'{\"guard_name\":\"api\",\"name\":\"force-delete Article\",\"updated_at\":\"2023-12-05 16:27:54\",\"created_at\":\"2023-12-05 16:27:54\",\"id\":14}',NULL,'2023-12-05 13:27:54','2023-12-05 13:27:54'),
(20,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',15,NULL,NULL,'{\"guard_name\":\"web\",\"name\":\"replicate Article\",\"updated_at\":\"2023-12-05 16:27:54\",\"created_at\":\"2023-12-05 16:27:54\",\"id\":15}',NULL,'2023-12-05 13:27:54','2023-12-05 13:27:54'),
(21,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',16,NULL,NULL,'{\"guard_name\":\"api\",\"name\":\"replicate Article\",\"updated_at\":\"2023-12-05 16:27:54\",\"created_at\":\"2023-12-05 16:27:54\",\"id\":16}',NULL,'2023-12-05 13:27:54','2023-12-05 13:27:54'),
(22,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',17,NULL,NULL,'{\"guard_name\":\"web\",\"name\":\"reorder Article\",\"updated_at\":\"2023-12-05 16:27:54\",\"created_at\":\"2023-12-05 16:27:54\",\"id\":17}',NULL,'2023-12-05 13:27:54','2023-12-05 13:27:54'),
(23,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',18,NULL,NULL,'{\"guard_name\":\"api\",\"name\":\"reorder Article\",\"updated_at\":\"2023-12-05 16:27:54\",\"created_at\":\"2023-12-05 16:27:54\",\"id\":18}',NULL,'2023-12-05 13:27:54','2023-12-05 13:27:54'),
(24,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',19,NULL,NULL,'{\"guard_name\":\"web\",\"name\":\"view-any ArticleCategory\",\"updated_at\":\"2023-12-05 16:27:54\",\"created_at\":\"2023-12-05 16:27:54\",\"id\":19}',NULL,'2023-12-05 13:27:54','2023-12-05 13:27:54'),
(25,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',20,NULL,NULL,'{\"guard_name\":\"api\",\"name\":\"view-any ArticleCategory\",\"updated_at\":\"2023-12-05 16:27:54\",\"created_at\":\"2023-12-05 16:27:54\",\"id\":20}',NULL,'2023-12-05 13:27:54','2023-12-05 13:27:54'),
(26,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',21,NULL,NULL,'{\"guard_name\":\"web\",\"name\":\"view ArticleCategory\",\"updated_at\":\"2023-12-05 16:27:54\",\"created_at\":\"2023-12-05 16:27:54\",\"id\":21}',NULL,'2023-12-05 13:27:54','2023-12-05 13:27:54'),
(27,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',22,NULL,NULL,'{\"guard_name\":\"api\",\"name\":\"view ArticleCategory\",\"updated_at\":\"2023-12-05 16:27:54\",\"created_at\":\"2023-12-05 16:27:54\",\"id\":22}',NULL,'2023-12-05 13:27:54','2023-12-05 13:27:54'),
(28,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',23,NULL,NULL,'{\"guard_name\":\"web\",\"name\":\"create ArticleCategory\",\"updated_at\":\"2023-12-05 16:27:54\",\"created_at\":\"2023-12-05 16:27:54\",\"id\":23}',NULL,'2023-12-05 13:27:54','2023-12-05 13:27:54'),
(29,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',24,NULL,NULL,'{\"guard_name\":\"api\",\"name\":\"create ArticleCategory\",\"updated_at\":\"2023-12-05 16:27:54\",\"created_at\":\"2023-12-05 16:27:54\",\"id\":24}',NULL,'2023-12-05 13:27:54','2023-12-05 13:27:54'),
(30,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',25,NULL,NULL,'{\"guard_name\":\"web\",\"name\":\"update ArticleCategory\",\"updated_at\":\"2023-12-05 16:27:54\",\"created_at\":\"2023-12-05 16:27:54\",\"id\":25}',NULL,'2023-12-05 13:27:54','2023-12-05 13:27:54'),
(31,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',26,NULL,NULL,'{\"guard_name\":\"api\",\"name\":\"update ArticleCategory\",\"updated_at\":\"2023-12-05 16:27:54\",\"created_at\":\"2023-12-05 16:27:54\",\"id\":26}',NULL,'2023-12-05 13:27:54','2023-12-05 13:27:54'),
(32,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',27,NULL,NULL,'{\"guard_name\":\"web\",\"name\":\"delete ArticleCategory\",\"updated_at\":\"2023-12-05 16:27:54\",\"created_at\":\"2023-12-05 16:27:54\",\"id\":27}',NULL,'2023-12-05 13:27:54','2023-12-05 13:27:54'),
(33,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',28,NULL,NULL,'{\"guard_name\":\"api\",\"name\":\"delete ArticleCategory\",\"updated_at\":\"2023-12-05 16:27:54\",\"created_at\":\"2023-12-05 16:27:54\",\"id\":28}',NULL,'2023-12-05 13:27:54','2023-12-05 13:27:54'),
(34,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',29,NULL,NULL,'{\"guard_name\":\"web\",\"name\":\"restore ArticleCategory\",\"updated_at\":\"2023-12-05 16:27:54\",\"created_at\":\"2023-12-05 16:27:54\",\"id\":29}',NULL,'2023-12-05 13:27:54','2023-12-05 13:27:54'),
(35,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',30,NULL,NULL,'{\"guard_name\":\"api\",\"name\":\"restore ArticleCategory\",\"updated_at\":\"2023-12-05 16:27:54\",\"created_at\":\"2023-12-05 16:27:54\",\"id\":30}',NULL,'2023-12-05 13:27:54','2023-12-05 13:27:54'),
(36,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',31,NULL,NULL,'{\"guard_name\":\"web\",\"name\":\"force-delete ArticleCategory\",\"updated_at\":\"2023-12-05 16:27:54\",\"created_at\":\"2023-12-05 16:27:54\",\"id\":31}',NULL,'2023-12-05 13:27:54','2023-12-05 13:27:54'),
(37,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',32,NULL,NULL,'{\"guard_name\":\"api\",\"name\":\"force-delete ArticleCategory\",\"updated_at\":\"2023-12-05 16:27:54\",\"created_at\":\"2023-12-05 16:27:54\",\"id\":32}',NULL,'2023-12-05 13:27:54','2023-12-05 13:27:54'),
(38,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',33,NULL,NULL,'{\"guard_name\":\"web\",\"name\":\"replicate ArticleCategory\",\"updated_at\":\"2023-12-05 16:27:54\",\"created_at\":\"2023-12-05 16:27:54\",\"id\":33}',NULL,'2023-12-05 13:27:54','2023-12-05 13:27:54'),
(39,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',34,NULL,NULL,'{\"guard_name\":\"api\",\"name\":\"replicate ArticleCategory\",\"updated_at\":\"2023-12-05 16:27:54\",\"created_at\":\"2023-12-05 16:27:54\",\"id\":34}',NULL,'2023-12-05 13:27:54','2023-12-05 13:27:54'),
(40,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',35,NULL,NULL,'{\"guard_name\":\"web\",\"name\":\"reorder ArticleCategory\",\"updated_at\":\"2023-12-05 16:27:54\",\"created_at\":\"2023-12-05 16:27:54\",\"id\":35}',NULL,'2023-12-05 13:27:54','2023-12-05 13:27:54'),
(41,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',36,NULL,NULL,'{\"guard_name\":\"api\",\"name\":\"reorder ArticleCategory\",\"updated_at\":\"2023-12-05 16:27:54\",\"created_at\":\"2023-12-05 16:27:54\",\"id\":36}',NULL,'2023-12-05 13:27:54','2023-12-05 13:27:54'),
(42,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',37,NULL,NULL,'{\"guard_name\":\"web\",\"name\":\"view-any ArticleLocation\",\"updated_at\":\"2023-12-05 16:27:54\",\"created_at\":\"2023-12-05 16:27:54\",\"id\":37}',NULL,'2023-12-05 13:27:54','2023-12-05 13:27:54'),
(43,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',38,NULL,NULL,'{\"guard_name\":\"api\",\"name\":\"view-any ArticleLocation\",\"updated_at\":\"2023-12-05 16:27:54\",\"created_at\":\"2023-12-05 16:27:54\",\"id\":38}',NULL,'2023-12-05 13:27:54','2023-12-05 13:27:54'),
(44,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',39,NULL,NULL,'{\"guard_name\":\"web\",\"name\":\"view ArticleLocation\",\"updated_at\":\"2023-12-05 16:27:54\",\"created_at\":\"2023-12-05 16:27:54\",\"id\":39}',NULL,'2023-12-05 13:27:54','2023-12-05 13:27:54'),
(45,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',40,NULL,NULL,'{\"guard_name\":\"api\",\"name\":\"view ArticleLocation\",\"updated_at\":\"2023-12-05 16:27:54\",\"created_at\":\"2023-12-05 16:27:54\",\"id\":40}',NULL,'2023-12-05 13:27:54','2023-12-05 13:27:54'),
(46,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',41,NULL,NULL,'{\"guard_name\":\"web\",\"name\":\"create ArticleLocation\",\"updated_at\":\"2023-12-05 16:27:54\",\"created_at\":\"2023-12-05 16:27:54\",\"id\":41}',NULL,'2023-12-05 13:27:54','2023-12-05 13:27:54'),
(47,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',42,NULL,NULL,'{\"guard_name\":\"api\",\"name\":\"create ArticleLocation\",\"updated_at\":\"2023-12-05 16:27:54\",\"created_at\":\"2023-12-05 16:27:54\",\"id\":42}',NULL,'2023-12-05 13:27:54','2023-12-05 13:27:54'),
(48,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',43,NULL,NULL,'{\"guard_name\":\"web\",\"name\":\"update ArticleLocation\",\"updated_at\":\"2023-12-05 16:27:54\",\"created_at\":\"2023-12-05 16:27:54\",\"id\":43}',NULL,'2023-12-05 13:27:54','2023-12-05 13:27:54'),
(49,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',44,NULL,NULL,'{\"guard_name\":\"api\",\"name\":\"update ArticleLocation\",\"updated_at\":\"2023-12-05 16:27:54\",\"created_at\":\"2023-12-05 16:27:54\",\"id\":44}',NULL,'2023-12-05 13:27:54','2023-12-05 13:27:54'),
(50,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',45,NULL,NULL,'{\"guard_name\":\"web\",\"name\":\"delete ArticleLocation\",\"updated_at\":\"2023-12-05 16:27:54\",\"created_at\":\"2023-12-05 16:27:54\",\"id\":45}',NULL,'2023-12-05 13:27:54','2023-12-05 13:27:54'),
(51,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',46,NULL,NULL,'{\"guard_name\":\"api\",\"name\":\"delete ArticleLocation\",\"updated_at\":\"2023-12-05 16:27:54\",\"created_at\":\"2023-12-05 16:27:54\",\"id\":46}',NULL,'2023-12-05 13:27:54','2023-12-05 13:27:54'),
(52,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',47,NULL,NULL,'{\"guard_name\":\"web\",\"name\":\"restore ArticleLocation\",\"updated_at\":\"2023-12-05 16:27:54\",\"created_at\":\"2023-12-05 16:27:54\",\"id\":47}',NULL,'2023-12-05 13:27:54','2023-12-05 13:27:54'),
(53,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',48,NULL,NULL,'{\"guard_name\":\"api\",\"name\":\"restore ArticleLocation\",\"updated_at\":\"2023-12-05 16:27:54\",\"created_at\":\"2023-12-05 16:27:54\",\"id\":48}',NULL,'2023-12-05 13:27:54','2023-12-05 13:27:54'),
(54,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',49,NULL,NULL,'{\"guard_name\":\"web\",\"name\":\"force-delete ArticleLocation\",\"updated_at\":\"2023-12-05 16:27:54\",\"created_at\":\"2023-12-05 16:27:54\",\"id\":49}',NULL,'2023-12-05 13:27:54','2023-12-05 13:27:54'),
(55,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',50,NULL,NULL,'{\"guard_name\":\"api\",\"name\":\"force-delete ArticleLocation\",\"updated_at\":\"2023-12-05 16:27:54\",\"created_at\":\"2023-12-05 16:27:54\",\"id\":50}',NULL,'2023-12-05 13:27:54','2023-12-05 13:27:54'),
(56,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',51,NULL,NULL,'{\"guard_name\":\"web\",\"name\":\"replicate ArticleLocation\",\"updated_at\":\"2023-12-05 16:27:54\",\"created_at\":\"2023-12-05 16:27:54\",\"id\":51}',NULL,'2023-12-05 13:27:54','2023-12-05 13:27:54'),
(57,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',52,NULL,NULL,'{\"guard_name\":\"api\",\"name\":\"replicate ArticleLocation\",\"updated_at\":\"2023-12-05 16:27:54\",\"created_at\":\"2023-12-05 16:27:54\",\"id\":52}',NULL,'2023-12-05 13:27:54','2023-12-05 13:27:54'),
(58,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',53,NULL,NULL,'{\"guard_name\":\"web\",\"name\":\"reorder ArticleLocation\",\"updated_at\":\"2023-12-05 16:27:54\",\"created_at\":\"2023-12-05 16:27:54\",\"id\":53}',NULL,'2023-12-05 13:27:54','2023-12-05 13:27:54'),
(59,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',54,NULL,NULL,'{\"guard_name\":\"api\",\"name\":\"reorder ArticleLocation\",\"updated_at\":\"2023-12-05 16:27:54\",\"created_at\":\"2023-12-05 16:27:54\",\"id\":54}',NULL,'2023-12-05 13:27:54','2023-12-05 13:27:54'),
(60,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',55,NULL,NULL,'{\"guard_name\":\"web\",\"name\":\"view-any ArticleView\",\"updated_at\":\"2023-12-05 16:27:54\",\"created_at\":\"2023-12-05 16:27:54\",\"id\":55}',NULL,'2023-12-05 13:27:54','2023-12-05 13:27:54'),
(61,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',56,NULL,NULL,'{\"guard_name\":\"api\",\"name\":\"view-any ArticleView\",\"updated_at\":\"2023-12-05 16:27:54\",\"created_at\":\"2023-12-05 16:27:54\",\"id\":56}',NULL,'2023-12-05 13:27:54','2023-12-05 13:27:54'),
(62,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',57,NULL,NULL,'{\"guard_name\":\"web\",\"name\":\"view ArticleView\",\"updated_at\":\"2023-12-05 16:27:54\",\"created_at\":\"2023-12-05 16:27:54\",\"id\":57}',NULL,'2023-12-05 13:27:54','2023-12-05 13:27:54'),
(63,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',58,NULL,NULL,'{\"guard_name\":\"api\",\"name\":\"view ArticleView\",\"updated_at\":\"2023-12-05 16:27:54\",\"created_at\":\"2023-12-05 16:27:54\",\"id\":58}',NULL,'2023-12-05 13:27:54','2023-12-05 13:27:54'),
(64,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',59,NULL,NULL,'{\"guard_name\":\"web\",\"name\":\"create ArticleView\",\"updated_at\":\"2023-12-05 16:27:54\",\"created_at\":\"2023-12-05 16:27:54\",\"id\":59}',NULL,'2023-12-05 13:27:54','2023-12-05 13:27:54'),
(65,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',60,NULL,NULL,'{\"guard_name\":\"api\",\"name\":\"create ArticleView\",\"updated_at\":\"2023-12-05 16:27:54\",\"created_at\":\"2023-12-05 16:27:54\",\"id\":60}',NULL,'2023-12-05 13:27:54','2023-12-05 13:27:54'),
(66,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',61,NULL,NULL,'{\"guard_name\":\"web\",\"name\":\"update ArticleView\",\"updated_at\":\"2023-12-05 16:27:54\",\"created_at\":\"2023-12-05 16:27:54\",\"id\":61}',NULL,'2023-12-05 13:27:54','2023-12-05 13:27:54'),
(67,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',62,NULL,NULL,'{\"guard_name\":\"api\",\"name\":\"update ArticleView\",\"updated_at\":\"2023-12-05 16:27:54\",\"created_at\":\"2023-12-05 16:27:54\",\"id\":62}',NULL,'2023-12-05 13:27:54','2023-12-05 13:27:54'),
(68,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',63,NULL,NULL,'{\"guard_name\":\"web\",\"name\":\"delete ArticleView\",\"updated_at\":\"2023-12-05 16:27:54\",\"created_at\":\"2023-12-05 16:27:54\",\"id\":63}',NULL,'2023-12-05 13:27:54','2023-12-05 13:27:54'),
(69,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',64,NULL,NULL,'{\"guard_name\":\"api\",\"name\":\"delete ArticleView\",\"updated_at\":\"2023-12-05 16:27:54\",\"created_at\":\"2023-12-05 16:27:54\",\"id\":64}',NULL,'2023-12-05 13:27:54','2023-12-05 13:27:54'),
(70,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',65,NULL,NULL,'{\"guard_name\":\"web\",\"name\":\"restore ArticleView\",\"updated_at\":\"2023-12-05 16:27:54\",\"created_at\":\"2023-12-05 16:27:54\",\"id\":65}',NULL,'2023-12-05 13:27:54','2023-12-05 13:27:54'),
(71,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',66,NULL,NULL,'{\"guard_name\":\"api\",\"name\":\"restore ArticleView\",\"updated_at\":\"2023-12-05 16:27:54\",\"created_at\":\"2023-12-05 16:27:54\",\"id\":66}',NULL,'2023-12-05 13:27:54','2023-12-05 13:27:54'),
(72,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',67,NULL,NULL,'{\"guard_name\":\"web\",\"name\":\"force-delete ArticleView\",\"updated_at\":\"2023-12-05 16:27:54\",\"created_at\":\"2023-12-05 16:27:54\",\"id\":67}',NULL,'2023-12-05 13:27:54','2023-12-05 13:27:54'),
(73,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',68,NULL,NULL,'{\"guard_name\":\"api\",\"name\":\"force-delete ArticleView\",\"updated_at\":\"2023-12-05 16:27:54\",\"created_at\":\"2023-12-05 16:27:54\",\"id\":68}',NULL,'2023-12-05 13:27:54','2023-12-05 13:27:54'),
(74,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',69,NULL,NULL,'{\"guard_name\":\"web\",\"name\":\"replicate ArticleView\",\"updated_at\":\"2023-12-05 16:27:54\",\"created_at\":\"2023-12-05 16:27:54\",\"id\":69}',NULL,'2023-12-05 13:27:54','2023-12-05 13:27:54'),
(75,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',70,NULL,NULL,'{\"guard_name\":\"api\",\"name\":\"replicate ArticleView\",\"updated_at\":\"2023-12-05 16:27:54\",\"created_at\":\"2023-12-05 16:27:54\",\"id\":70}',NULL,'2023-12-05 13:27:54','2023-12-05 13:27:54'),
(76,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',71,NULL,NULL,'{\"guard_name\":\"web\",\"name\":\"reorder ArticleView\",\"updated_at\":\"2023-12-05 16:27:54\",\"created_at\":\"2023-12-05 16:27:54\",\"id\":71}',NULL,'2023-12-05 13:27:54','2023-12-05 13:27:54'),
(77,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',72,NULL,NULL,'{\"guard_name\":\"api\",\"name\":\"reorder ArticleView\",\"updated_at\":\"2023-12-05 16:27:54\",\"created_at\":\"2023-12-05 16:27:54\",\"id\":72}',NULL,'2023-12-05 13:27:54','2023-12-05 13:27:54'),
(78,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',73,NULL,NULL,'{\"guard_name\":\"web\",\"name\":\"view-any Category\",\"updated_at\":\"2023-12-05 16:27:54\",\"created_at\":\"2023-12-05 16:27:54\",\"id\":73}',NULL,'2023-12-05 13:27:54','2023-12-05 13:27:54'),
(79,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',74,NULL,NULL,'{\"guard_name\":\"api\",\"name\":\"view-any Category\",\"updated_at\":\"2023-12-05 16:27:54\",\"created_at\":\"2023-12-05 16:27:54\",\"id\":74}',NULL,'2023-12-05 13:27:54','2023-12-05 13:27:54'),
(80,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',75,NULL,NULL,'{\"guard_name\":\"web\",\"name\":\"view Category\",\"updated_at\":\"2023-12-05 16:27:54\",\"created_at\":\"2023-12-05 16:27:54\",\"id\":75}',NULL,'2023-12-05 13:27:54','2023-12-05 13:27:54'),
(81,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',76,NULL,NULL,'{\"guard_name\":\"api\",\"name\":\"view Category\",\"updated_at\":\"2023-12-05 16:27:54\",\"created_at\":\"2023-12-05 16:27:54\",\"id\":76}',NULL,'2023-12-05 13:27:54','2023-12-05 13:27:54'),
(82,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',77,NULL,NULL,'{\"guard_name\":\"web\",\"name\":\"create Category\",\"updated_at\":\"2023-12-05 16:27:54\",\"created_at\":\"2023-12-05 16:27:54\",\"id\":77}',NULL,'2023-12-05 13:27:54','2023-12-05 13:27:54'),
(83,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',78,NULL,NULL,'{\"guard_name\":\"api\",\"name\":\"create Category\",\"updated_at\":\"2023-12-05 16:27:54\",\"created_at\":\"2023-12-05 16:27:54\",\"id\":78}',NULL,'2023-12-05 13:27:54','2023-12-05 13:27:54'),
(84,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',79,NULL,NULL,'{\"guard_name\":\"web\",\"name\":\"update Category\",\"updated_at\":\"2023-12-05 16:27:54\",\"created_at\":\"2023-12-05 16:27:54\",\"id\":79}',NULL,'2023-12-05 13:27:54','2023-12-05 13:27:54'),
(85,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',80,NULL,NULL,'{\"guard_name\":\"api\",\"name\":\"update Category\",\"updated_at\":\"2023-12-05 16:27:54\",\"created_at\":\"2023-12-05 16:27:54\",\"id\":80}',NULL,'2023-12-05 13:27:54','2023-12-05 13:27:54'),
(86,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',81,NULL,NULL,'{\"guard_name\":\"web\",\"name\":\"delete Category\",\"updated_at\":\"2023-12-05 16:27:54\",\"created_at\":\"2023-12-05 16:27:54\",\"id\":81}',NULL,'2023-12-05 13:27:54','2023-12-05 13:27:54'),
(87,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',82,NULL,NULL,'{\"guard_name\":\"api\",\"name\":\"delete Category\",\"updated_at\":\"2023-12-05 16:27:54\",\"created_at\":\"2023-12-05 16:27:54\",\"id\":82}',NULL,'2023-12-05 13:27:54','2023-12-05 13:27:54'),
(88,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',83,NULL,NULL,'{\"guard_name\":\"web\",\"name\":\"restore Category\",\"updated_at\":\"2023-12-05 16:27:54\",\"created_at\":\"2023-12-05 16:27:54\",\"id\":83}',NULL,'2023-12-05 13:27:54','2023-12-05 13:27:54'),
(89,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',84,NULL,NULL,'{\"guard_name\":\"api\",\"name\":\"restore Category\",\"updated_at\":\"2023-12-05 16:27:54\",\"created_at\":\"2023-12-05 16:27:54\",\"id\":84}',NULL,'2023-12-05 13:27:54','2023-12-05 13:27:54'),
(90,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',85,NULL,NULL,'{\"guard_name\":\"web\",\"name\":\"force-delete Category\",\"updated_at\":\"2023-12-05 16:27:54\",\"created_at\":\"2023-12-05 16:27:54\",\"id\":85}',NULL,'2023-12-05 13:27:54','2023-12-05 13:27:54'),
(91,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',86,NULL,NULL,'{\"guard_name\":\"api\",\"name\":\"force-delete Category\",\"updated_at\":\"2023-12-05 16:27:54\",\"created_at\":\"2023-12-05 16:27:54\",\"id\":86}',NULL,'2023-12-05 13:27:54','2023-12-05 13:27:54'),
(92,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',87,NULL,NULL,'{\"guard_name\":\"web\",\"name\":\"replicate Category\",\"updated_at\":\"2023-12-05 16:27:54\",\"created_at\":\"2023-12-05 16:27:54\",\"id\":87}',NULL,'2023-12-05 13:27:54','2023-12-05 13:27:54'),
(93,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',88,NULL,NULL,'{\"guard_name\":\"api\",\"name\":\"replicate Category\",\"updated_at\":\"2023-12-05 16:27:54\",\"created_at\":\"2023-12-05 16:27:54\",\"id\":88}',NULL,'2023-12-05 13:27:54','2023-12-05 13:27:54'),
(94,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',89,NULL,NULL,'{\"guard_name\":\"web\",\"name\":\"reorder Category\",\"updated_at\":\"2023-12-05 16:27:54\",\"created_at\":\"2023-12-05 16:27:54\",\"id\":89}',NULL,'2023-12-05 13:27:54','2023-12-05 13:27:54'),
(95,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',90,NULL,NULL,'{\"guard_name\":\"api\",\"name\":\"reorder Category\",\"updated_at\":\"2023-12-05 16:27:54\",\"created_at\":\"2023-12-05 16:27:54\",\"id\":90}',NULL,'2023-12-05 13:27:54','2023-12-05 13:27:54'),
(96,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',91,NULL,NULL,'{\"guard_name\":\"web\",\"name\":\"view-any Comment\",\"updated_at\":\"2023-12-05 16:27:54\",\"created_at\":\"2023-12-05 16:27:54\",\"id\":91}',NULL,'2023-12-05 13:27:54','2023-12-05 13:27:54'),
(97,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',92,NULL,NULL,'{\"guard_name\":\"api\",\"name\":\"view-any Comment\",\"updated_at\":\"2023-12-05 16:27:54\",\"created_at\":\"2023-12-05 16:27:54\",\"id\":92}',NULL,'2023-12-05 13:27:54','2023-12-05 13:27:54'),
(98,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',93,NULL,NULL,'{\"guard_name\":\"web\",\"name\":\"view Comment\",\"updated_at\":\"2023-12-05 16:27:54\",\"created_at\":\"2023-12-05 16:27:54\",\"id\":93}',NULL,'2023-12-05 13:27:54','2023-12-05 13:27:54'),
(99,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',94,NULL,NULL,'{\"guard_name\":\"api\",\"name\":\"view Comment\",\"updated_at\":\"2023-12-05 16:27:54\",\"created_at\":\"2023-12-05 16:27:54\",\"id\":94}',NULL,'2023-12-05 13:27:54','2023-12-05 13:27:54'),
(100,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',95,NULL,NULL,'{\"guard_name\":\"web\",\"name\":\"create Comment\",\"updated_at\":\"2023-12-05 16:27:54\",\"created_at\":\"2023-12-05 16:27:54\",\"id\":95}',NULL,'2023-12-05 13:27:54','2023-12-05 13:27:54'),
(101,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',96,NULL,NULL,'{\"guard_name\":\"api\",\"name\":\"create Comment\",\"updated_at\":\"2023-12-05 16:27:54\",\"created_at\":\"2023-12-05 16:27:54\",\"id\":96}',NULL,'2023-12-05 13:27:54','2023-12-05 13:27:54'),
(102,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',97,NULL,NULL,'{\"guard_name\":\"web\",\"name\":\"update Comment\",\"updated_at\":\"2023-12-05 16:27:54\",\"created_at\":\"2023-12-05 16:27:54\",\"id\":97}',NULL,'2023-12-05 13:27:54','2023-12-05 13:27:54'),
(103,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',98,NULL,NULL,'{\"guard_name\":\"api\",\"name\":\"update Comment\",\"updated_at\":\"2023-12-05 16:27:54\",\"created_at\":\"2023-12-05 16:27:54\",\"id\":98}',NULL,'2023-12-05 13:27:54','2023-12-05 13:27:54'),
(104,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',99,NULL,NULL,'{\"guard_name\":\"web\",\"name\":\"delete Comment\",\"updated_at\":\"2023-12-05 16:27:54\",\"created_at\":\"2023-12-05 16:27:54\",\"id\":99}',NULL,'2023-12-05 13:27:54','2023-12-05 13:27:54'),
(105,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',100,NULL,NULL,'{\"guard_name\":\"api\",\"name\":\"delete Comment\",\"updated_at\":\"2023-12-05 16:27:54\",\"created_at\":\"2023-12-05 16:27:54\",\"id\":100}',NULL,'2023-12-05 13:27:54','2023-12-05 13:27:54'),
(106,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',101,NULL,NULL,'{\"guard_name\":\"web\",\"name\":\"restore Comment\",\"updated_at\":\"2023-12-05 16:27:54\",\"created_at\":\"2023-12-05 16:27:54\",\"id\":101}',NULL,'2023-12-05 13:27:54','2023-12-05 13:27:54'),
(107,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',102,NULL,NULL,'{\"guard_name\":\"api\",\"name\":\"restore Comment\",\"updated_at\":\"2023-12-05 16:27:54\",\"created_at\":\"2023-12-05 16:27:54\",\"id\":102}',NULL,'2023-12-05 13:27:54','2023-12-05 13:27:54'),
(108,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',103,NULL,NULL,'{\"guard_name\":\"web\",\"name\":\"force-delete Comment\",\"updated_at\":\"2023-12-05 16:27:54\",\"created_at\":\"2023-12-05 16:27:54\",\"id\":103}',NULL,'2023-12-05 13:27:54','2023-12-05 13:27:54'),
(109,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',104,NULL,NULL,'{\"guard_name\":\"api\",\"name\":\"force-delete Comment\",\"updated_at\":\"2023-12-05 16:27:54\",\"created_at\":\"2023-12-05 16:27:54\",\"id\":104}',NULL,'2023-12-05 13:27:54','2023-12-05 13:27:54'),
(110,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',105,NULL,NULL,'{\"guard_name\":\"web\",\"name\":\"replicate Comment\",\"updated_at\":\"2023-12-05 16:27:54\",\"created_at\":\"2023-12-05 16:27:54\",\"id\":105}',NULL,'2023-12-05 13:27:54','2023-12-05 13:27:54'),
(111,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',106,NULL,NULL,'{\"guard_name\":\"api\",\"name\":\"replicate Comment\",\"updated_at\":\"2023-12-05 16:27:54\",\"created_at\":\"2023-12-05 16:27:54\",\"id\":106}',NULL,'2023-12-05 13:27:54','2023-12-05 13:27:54'),
(112,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',107,NULL,NULL,'{\"guard_name\":\"web\",\"name\":\"reorder Comment\",\"updated_at\":\"2023-12-05 16:27:54\",\"created_at\":\"2023-12-05 16:27:54\",\"id\":107}',NULL,'2023-12-05 13:27:54','2023-12-05 13:27:54'),
(113,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',108,NULL,NULL,'{\"guard_name\":\"api\",\"name\":\"reorder Comment\",\"updated_at\":\"2023-12-05 16:27:54\",\"created_at\":\"2023-12-05 16:27:54\",\"id\":108}',NULL,'2023-12-05 13:27:54','2023-12-05 13:27:54'),
(114,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',109,NULL,NULL,'{\"guard_name\":\"web\",\"name\":\"view-any Locale\",\"updated_at\":\"2023-12-05 16:27:54\",\"created_at\":\"2023-12-05 16:27:54\",\"id\":109}',NULL,'2023-12-05 13:27:54','2023-12-05 13:27:54'),
(115,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',110,NULL,NULL,'{\"guard_name\":\"api\",\"name\":\"view-any Locale\",\"updated_at\":\"2023-12-05 16:27:54\",\"created_at\":\"2023-12-05 16:27:54\",\"id\":110}',NULL,'2023-12-05 13:27:54','2023-12-05 13:27:54'),
(116,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',111,NULL,NULL,'{\"guard_name\":\"web\",\"name\":\"view Locale\",\"updated_at\":\"2023-12-05 16:27:54\",\"created_at\":\"2023-12-05 16:27:54\",\"id\":111}',NULL,'2023-12-05 13:27:54','2023-12-05 13:27:54'),
(117,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',112,NULL,NULL,'{\"guard_name\":\"api\",\"name\":\"view Locale\",\"updated_at\":\"2023-12-05 16:27:54\",\"created_at\":\"2023-12-05 16:27:54\",\"id\":112}',NULL,'2023-12-05 13:27:54','2023-12-05 13:27:54'),
(118,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',113,NULL,NULL,'{\"guard_name\":\"web\",\"name\":\"create Locale\",\"updated_at\":\"2023-12-05 16:27:54\",\"created_at\":\"2023-12-05 16:27:54\",\"id\":113}',NULL,'2023-12-05 13:27:54','2023-12-05 13:27:54'),
(119,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',114,NULL,NULL,'{\"guard_name\":\"api\",\"name\":\"create Locale\",\"updated_at\":\"2023-12-05 16:27:54\",\"created_at\":\"2023-12-05 16:27:54\",\"id\":114}',NULL,'2023-12-05 13:27:54','2023-12-05 13:27:54'),
(120,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',115,NULL,NULL,'{\"guard_name\":\"web\",\"name\":\"update Locale\",\"updated_at\":\"2023-12-05 16:27:54\",\"created_at\":\"2023-12-05 16:27:54\",\"id\":115}',NULL,'2023-12-05 13:27:54','2023-12-05 13:27:54'),
(121,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',116,NULL,NULL,'{\"guard_name\":\"api\",\"name\":\"update Locale\",\"updated_at\":\"2023-12-05 16:27:54\",\"created_at\":\"2023-12-05 16:27:54\",\"id\":116}',NULL,'2023-12-05 13:27:54','2023-12-05 13:27:54'),
(122,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',117,NULL,NULL,'{\"guard_name\":\"web\",\"name\":\"delete Locale\",\"updated_at\":\"2023-12-05 16:27:54\",\"created_at\":\"2023-12-05 16:27:54\",\"id\":117}',NULL,'2023-12-05 13:27:54','2023-12-05 13:27:54'),
(123,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',118,NULL,NULL,'{\"guard_name\":\"api\",\"name\":\"delete Locale\",\"updated_at\":\"2023-12-05 16:27:54\",\"created_at\":\"2023-12-05 16:27:54\",\"id\":118}',NULL,'2023-12-05 13:27:54','2023-12-05 13:27:54'),
(124,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',119,NULL,NULL,'{\"guard_name\":\"web\",\"name\":\"restore Locale\",\"updated_at\":\"2023-12-05 16:27:54\",\"created_at\":\"2023-12-05 16:27:54\",\"id\":119}',NULL,'2023-12-05 13:27:54','2023-12-05 13:27:54'),
(125,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',120,NULL,NULL,'{\"guard_name\":\"api\",\"name\":\"restore Locale\",\"updated_at\":\"2023-12-05 16:27:54\",\"created_at\":\"2023-12-05 16:27:54\",\"id\":120}',NULL,'2023-12-05 13:27:54','2023-12-05 13:27:54'),
(126,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',121,NULL,NULL,'{\"guard_name\":\"web\",\"name\":\"force-delete Locale\",\"updated_at\":\"2023-12-05 16:27:54\",\"created_at\":\"2023-12-05 16:27:54\",\"id\":121}',NULL,'2023-12-05 13:27:54','2023-12-05 13:27:54'),
(127,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',122,NULL,NULL,'{\"guard_name\":\"api\",\"name\":\"force-delete Locale\",\"updated_at\":\"2023-12-05 16:27:54\",\"created_at\":\"2023-12-05 16:27:54\",\"id\":122}',NULL,'2023-12-05 13:27:54','2023-12-05 13:27:54'),
(128,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',123,NULL,NULL,'{\"guard_name\":\"web\",\"name\":\"replicate Locale\",\"updated_at\":\"2023-12-05 16:27:54\",\"created_at\":\"2023-12-05 16:27:54\",\"id\":123}',NULL,'2023-12-05 13:27:54','2023-12-05 13:27:54'),
(129,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',124,NULL,NULL,'{\"guard_name\":\"api\",\"name\":\"replicate Locale\",\"updated_at\":\"2023-12-05 16:27:54\",\"created_at\":\"2023-12-05 16:27:54\",\"id\":124}',NULL,'2023-12-05 13:27:54','2023-12-05 13:27:54'),
(130,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',125,NULL,NULL,'{\"guard_name\":\"web\",\"name\":\"reorder Locale\",\"updated_at\":\"2023-12-05 16:27:54\",\"created_at\":\"2023-12-05 16:27:54\",\"id\":125}',NULL,'2023-12-05 13:27:54','2023-12-05 13:27:54'),
(131,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',126,NULL,NULL,'{\"guard_name\":\"api\",\"name\":\"reorder Locale\",\"updated_at\":\"2023-12-05 16:27:54\",\"created_at\":\"2023-12-05 16:27:54\",\"id\":126}',NULL,'2023-12-05 13:27:54','2023-12-05 13:27:54'),
(132,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',127,NULL,NULL,'{\"guard_name\":\"web\",\"name\":\"view-any Location\",\"updated_at\":\"2023-12-05 16:27:54\",\"created_at\":\"2023-12-05 16:27:54\",\"id\":127}',NULL,'2023-12-05 13:27:54','2023-12-05 13:27:54'),
(133,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',128,NULL,NULL,'{\"guard_name\":\"api\",\"name\":\"view-any Location\",\"updated_at\":\"2023-12-05 16:27:54\",\"created_at\":\"2023-12-05 16:27:54\",\"id\":128}',NULL,'2023-12-05 13:27:54','2023-12-05 13:27:54'),
(134,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',129,NULL,NULL,'{\"guard_name\":\"web\",\"name\":\"view Location\",\"updated_at\":\"2023-12-05 16:27:54\",\"created_at\":\"2023-12-05 16:27:54\",\"id\":129}',NULL,'2023-12-05 13:27:54','2023-12-05 13:27:54'),
(135,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',130,NULL,NULL,'{\"guard_name\":\"api\",\"name\":\"view Location\",\"updated_at\":\"2023-12-05 16:27:54\",\"created_at\":\"2023-12-05 16:27:54\",\"id\":130}',NULL,'2023-12-05 13:27:54','2023-12-05 13:27:54'),
(136,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',131,NULL,NULL,'{\"guard_name\":\"web\",\"name\":\"create Location\",\"updated_at\":\"2023-12-05 16:27:54\",\"created_at\":\"2023-12-05 16:27:54\",\"id\":131}',NULL,'2023-12-05 13:27:54','2023-12-05 13:27:54'),
(137,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',132,NULL,NULL,'{\"guard_name\":\"api\",\"name\":\"create Location\",\"updated_at\":\"2023-12-05 16:27:54\",\"created_at\":\"2023-12-05 16:27:54\",\"id\":132}',NULL,'2023-12-05 13:27:54','2023-12-05 13:27:54'),
(138,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',133,NULL,NULL,'{\"guard_name\":\"web\",\"name\":\"update Location\",\"updated_at\":\"2023-12-05 16:27:54\",\"created_at\":\"2023-12-05 16:27:54\",\"id\":133}',NULL,'2023-12-05 13:27:54','2023-12-05 13:27:54'),
(139,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',134,NULL,NULL,'{\"guard_name\":\"api\",\"name\":\"update Location\",\"updated_at\":\"2023-12-05 16:27:54\",\"created_at\":\"2023-12-05 16:27:54\",\"id\":134}',NULL,'2023-12-05 13:27:54','2023-12-05 13:27:54'),
(140,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',135,NULL,NULL,'{\"guard_name\":\"web\",\"name\":\"delete Location\",\"updated_at\":\"2023-12-05 16:27:54\",\"created_at\":\"2023-12-05 16:27:54\",\"id\":135}',NULL,'2023-12-05 13:27:54','2023-12-05 13:27:54'),
(141,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',136,NULL,NULL,'{\"guard_name\":\"api\",\"name\":\"delete Location\",\"updated_at\":\"2023-12-05 16:27:54\",\"created_at\":\"2023-12-05 16:27:54\",\"id\":136}',NULL,'2023-12-05 13:27:54','2023-12-05 13:27:54'),
(142,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',137,NULL,NULL,'{\"guard_name\":\"web\",\"name\":\"restore Location\",\"updated_at\":\"2023-12-05 16:27:54\",\"created_at\":\"2023-12-05 16:27:54\",\"id\":137}',NULL,'2023-12-05 13:27:54','2023-12-05 13:27:54'),
(143,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',138,NULL,NULL,'{\"guard_name\":\"api\",\"name\":\"restore Location\",\"updated_at\":\"2023-12-05 16:27:54\",\"created_at\":\"2023-12-05 16:27:54\",\"id\":138}',NULL,'2023-12-05 13:27:54','2023-12-05 13:27:54'),
(144,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',139,NULL,NULL,'{\"guard_name\":\"web\",\"name\":\"force-delete Location\",\"updated_at\":\"2023-12-05 16:27:54\",\"created_at\":\"2023-12-05 16:27:54\",\"id\":139}',NULL,'2023-12-05 13:27:54','2023-12-05 13:27:54'),
(145,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',140,NULL,NULL,'{\"guard_name\":\"api\",\"name\":\"force-delete Location\",\"updated_at\":\"2023-12-05 16:27:54\",\"created_at\":\"2023-12-05 16:27:54\",\"id\":140}',NULL,'2023-12-05 13:27:54','2023-12-05 13:27:54'),
(146,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',141,NULL,NULL,'{\"guard_name\":\"web\",\"name\":\"replicate Location\",\"updated_at\":\"2023-12-05 16:27:54\",\"created_at\":\"2023-12-05 16:27:54\",\"id\":141}',NULL,'2023-12-05 13:27:54','2023-12-05 13:27:54'),
(147,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',142,NULL,NULL,'{\"guard_name\":\"api\",\"name\":\"replicate Location\",\"updated_at\":\"2023-12-05 16:27:54\",\"created_at\":\"2023-12-05 16:27:54\",\"id\":142}',NULL,'2023-12-05 13:27:54','2023-12-05 13:27:54'),
(148,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',143,NULL,NULL,'{\"guard_name\":\"web\",\"name\":\"reorder Location\",\"updated_at\":\"2023-12-05 16:27:54\",\"created_at\":\"2023-12-05 16:27:54\",\"id\":143}',NULL,'2023-12-05 13:27:54','2023-12-05 13:27:54'),
(149,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',144,NULL,NULL,'{\"guard_name\":\"api\",\"name\":\"reorder Location\",\"updated_at\":\"2023-12-05 16:27:54\",\"created_at\":\"2023-12-05 16:27:54\",\"id\":144}',NULL,'2023-12-05 13:27:54','2023-12-05 13:27:54'),
(150,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',145,NULL,NULL,'{\"guard_name\":\"web\",\"name\":\"view-any Membership\",\"updated_at\":\"2023-12-05 16:27:54\",\"created_at\":\"2023-12-05 16:27:54\",\"id\":145}',NULL,'2023-12-05 13:27:54','2023-12-05 13:27:54'),
(151,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',146,NULL,NULL,'{\"guard_name\":\"api\",\"name\":\"view-any Membership\",\"updated_at\":\"2023-12-05 16:27:54\",\"created_at\":\"2023-12-05 16:27:54\",\"id\":146}',NULL,'2023-12-05 13:27:54','2023-12-05 13:27:54'),
(152,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',147,NULL,NULL,'{\"guard_name\":\"web\",\"name\":\"view Membership\",\"updated_at\":\"2023-12-05 16:27:54\",\"created_at\":\"2023-12-05 16:27:54\",\"id\":147}',NULL,'2023-12-05 13:27:54','2023-12-05 13:27:54'),
(153,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',148,NULL,NULL,'{\"guard_name\":\"api\",\"name\":\"view Membership\",\"updated_at\":\"2023-12-05 16:27:54\",\"created_at\":\"2023-12-05 16:27:54\",\"id\":148}',NULL,'2023-12-05 13:27:54','2023-12-05 13:27:54'),
(154,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',149,NULL,NULL,'{\"guard_name\":\"web\",\"name\":\"create Membership\",\"updated_at\":\"2023-12-05 16:27:54\",\"created_at\":\"2023-12-05 16:27:54\",\"id\":149}',NULL,'2023-12-05 13:27:54','2023-12-05 13:27:54'),
(155,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',150,NULL,NULL,'{\"guard_name\":\"api\",\"name\":\"create Membership\",\"updated_at\":\"2023-12-05 16:27:54\",\"created_at\":\"2023-12-05 16:27:54\",\"id\":150}',NULL,'2023-12-05 13:27:54','2023-12-05 13:27:54'),
(156,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',151,NULL,NULL,'{\"guard_name\":\"web\",\"name\":\"update Membership\",\"updated_at\":\"2023-12-05 16:27:54\",\"created_at\":\"2023-12-05 16:27:54\",\"id\":151}',NULL,'2023-12-05 13:27:54','2023-12-05 13:27:54'),
(157,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',152,NULL,NULL,'{\"guard_name\":\"api\",\"name\":\"update Membership\",\"updated_at\":\"2023-12-05 16:27:54\",\"created_at\":\"2023-12-05 16:27:54\",\"id\":152}',NULL,'2023-12-05 13:27:54','2023-12-05 13:27:54'),
(158,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',153,NULL,NULL,'{\"guard_name\":\"web\",\"name\":\"delete Membership\",\"updated_at\":\"2023-12-05 16:27:54\",\"created_at\":\"2023-12-05 16:27:54\",\"id\":153}',NULL,'2023-12-05 13:27:54','2023-12-05 13:27:54'),
(159,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',154,NULL,NULL,'{\"guard_name\":\"api\",\"name\":\"delete Membership\",\"updated_at\":\"2023-12-05 16:27:54\",\"created_at\":\"2023-12-05 16:27:54\",\"id\":154}',NULL,'2023-12-05 13:27:54','2023-12-05 13:27:54'),
(160,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',155,NULL,NULL,'{\"guard_name\":\"web\",\"name\":\"restore Membership\",\"updated_at\":\"2023-12-05 16:27:54\",\"created_at\":\"2023-12-05 16:27:54\",\"id\":155}',NULL,'2023-12-05 13:27:54','2023-12-05 13:27:54'),
(161,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',156,NULL,NULL,'{\"guard_name\":\"api\",\"name\":\"restore Membership\",\"updated_at\":\"2023-12-05 16:27:54\",\"created_at\":\"2023-12-05 16:27:54\",\"id\":156}',NULL,'2023-12-05 13:27:54','2023-12-05 13:27:54'),
(162,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',157,NULL,NULL,'{\"guard_name\":\"web\",\"name\":\"force-delete Membership\",\"updated_at\":\"2023-12-05 16:27:54\",\"created_at\":\"2023-12-05 16:27:54\",\"id\":157}',NULL,'2023-12-05 13:27:54','2023-12-05 13:27:54'),
(163,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',158,NULL,NULL,'{\"guard_name\":\"api\",\"name\":\"force-delete Membership\",\"updated_at\":\"2023-12-05 16:27:54\",\"created_at\":\"2023-12-05 16:27:54\",\"id\":158}',NULL,'2023-12-05 13:27:54','2023-12-05 13:27:54'),
(164,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',159,NULL,NULL,'{\"guard_name\":\"web\",\"name\":\"replicate Membership\",\"updated_at\":\"2023-12-05 16:27:54\",\"created_at\":\"2023-12-05 16:27:54\",\"id\":159}',NULL,'2023-12-05 13:27:54','2023-12-05 13:27:54'),
(165,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',160,NULL,NULL,'{\"guard_name\":\"api\",\"name\":\"replicate Membership\",\"updated_at\":\"2023-12-05 16:27:54\",\"created_at\":\"2023-12-05 16:27:54\",\"id\":160}',NULL,'2023-12-05 13:27:54','2023-12-05 13:27:54'),
(166,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',161,NULL,NULL,'{\"guard_name\":\"web\",\"name\":\"reorder Membership\",\"updated_at\":\"2023-12-05 16:27:54\",\"created_at\":\"2023-12-05 16:27:54\",\"id\":161}',NULL,'2023-12-05 13:27:54','2023-12-05 13:27:54'),
(167,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',162,NULL,NULL,'{\"guard_name\":\"api\",\"name\":\"reorder Membership\",\"updated_at\":\"2023-12-05 16:27:54\",\"created_at\":\"2023-12-05 16:27:54\",\"id\":162}',NULL,'2023-12-05 13:27:54','2023-12-05 13:27:54'),
(168,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',163,NULL,NULL,'{\"guard_name\":\"web\",\"name\":\"view-any OurSocial\",\"updated_at\":\"2023-12-05 16:27:54\",\"created_at\":\"2023-12-05 16:27:54\",\"id\":163}',NULL,'2023-12-05 13:27:54','2023-12-05 13:27:54'),
(169,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',164,NULL,NULL,'{\"guard_name\":\"api\",\"name\":\"view-any OurSocial\",\"updated_at\":\"2023-12-05 16:27:54\",\"created_at\":\"2023-12-05 16:27:54\",\"id\":164}',NULL,'2023-12-05 13:27:54','2023-12-05 13:27:54'),
(170,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',165,NULL,NULL,'{\"guard_name\":\"web\",\"name\":\"view OurSocial\",\"updated_at\":\"2023-12-05 16:27:55\",\"created_at\":\"2023-12-05 16:27:55\",\"id\":165}',NULL,'2023-12-05 13:27:55','2023-12-05 13:27:55'),
(171,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',166,NULL,NULL,'{\"guard_name\":\"api\",\"name\":\"view OurSocial\",\"updated_at\":\"2023-12-05 16:27:55\",\"created_at\":\"2023-12-05 16:27:55\",\"id\":166}',NULL,'2023-12-05 13:27:55','2023-12-05 13:27:55'),
(172,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',167,NULL,NULL,'{\"guard_name\":\"web\",\"name\":\"create OurSocial\",\"updated_at\":\"2023-12-05 16:27:55\",\"created_at\":\"2023-12-05 16:27:55\",\"id\":167}',NULL,'2023-12-05 13:27:55','2023-12-05 13:27:55'),
(173,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',168,NULL,NULL,'{\"guard_name\":\"api\",\"name\":\"create OurSocial\",\"updated_at\":\"2023-12-05 16:27:55\",\"created_at\":\"2023-12-05 16:27:55\",\"id\":168}',NULL,'2023-12-05 13:27:55','2023-12-05 13:27:55'),
(174,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',169,NULL,NULL,'{\"guard_name\":\"web\",\"name\":\"update OurSocial\",\"updated_at\":\"2023-12-05 16:27:55\",\"created_at\":\"2023-12-05 16:27:55\",\"id\":169}',NULL,'2023-12-05 13:27:55','2023-12-05 13:27:55'),
(175,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',170,NULL,NULL,'{\"guard_name\":\"api\",\"name\":\"update OurSocial\",\"updated_at\":\"2023-12-05 16:27:55\",\"created_at\":\"2023-12-05 16:27:55\",\"id\":170}',NULL,'2023-12-05 13:27:55','2023-12-05 13:27:55'),
(176,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',171,NULL,NULL,'{\"guard_name\":\"web\",\"name\":\"delete OurSocial\",\"updated_at\":\"2023-12-05 16:27:55\",\"created_at\":\"2023-12-05 16:27:55\",\"id\":171}',NULL,'2023-12-05 13:27:55','2023-12-05 13:27:55'),
(177,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',172,NULL,NULL,'{\"guard_name\":\"api\",\"name\":\"delete OurSocial\",\"updated_at\":\"2023-12-05 16:27:55\",\"created_at\":\"2023-12-05 16:27:55\",\"id\":172}',NULL,'2023-12-05 13:27:55','2023-12-05 13:27:55'),
(178,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',173,NULL,NULL,'{\"guard_name\":\"web\",\"name\":\"restore OurSocial\",\"updated_at\":\"2023-12-05 16:27:55\",\"created_at\":\"2023-12-05 16:27:55\",\"id\":173}',NULL,'2023-12-05 13:27:55','2023-12-05 13:27:55'),
(179,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',174,NULL,NULL,'{\"guard_name\":\"api\",\"name\":\"restore OurSocial\",\"updated_at\":\"2023-12-05 16:27:55\",\"created_at\":\"2023-12-05 16:27:55\",\"id\":174}',NULL,'2023-12-05 13:27:55','2023-12-05 13:27:55'),
(180,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',175,NULL,NULL,'{\"guard_name\":\"web\",\"name\":\"force-delete OurSocial\",\"updated_at\":\"2023-12-05 16:27:55\",\"created_at\":\"2023-12-05 16:27:55\",\"id\":175}',NULL,'2023-12-05 13:27:55','2023-12-05 13:27:55'),
(181,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',176,NULL,NULL,'{\"guard_name\":\"api\",\"name\":\"force-delete OurSocial\",\"updated_at\":\"2023-12-05 16:27:55\",\"created_at\":\"2023-12-05 16:27:55\",\"id\":176}',NULL,'2023-12-05 13:27:55','2023-12-05 13:27:55'),
(182,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',177,NULL,NULL,'{\"guard_name\":\"web\",\"name\":\"replicate OurSocial\",\"updated_at\":\"2023-12-05 16:27:55\",\"created_at\":\"2023-12-05 16:27:55\",\"id\":177}',NULL,'2023-12-05 13:27:55','2023-12-05 13:27:55'),
(183,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',178,NULL,NULL,'{\"guard_name\":\"api\",\"name\":\"replicate OurSocial\",\"updated_at\":\"2023-12-05 16:27:55\",\"created_at\":\"2023-12-05 16:27:55\",\"id\":178}',NULL,'2023-12-05 13:27:55','2023-12-05 13:27:55'),
(184,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',179,NULL,NULL,'{\"guard_name\":\"web\",\"name\":\"reorder OurSocial\",\"updated_at\":\"2023-12-05 16:27:55\",\"created_at\":\"2023-12-05 16:27:55\",\"id\":179}',NULL,'2023-12-05 13:27:55','2023-12-05 13:27:55'),
(185,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',180,NULL,NULL,'{\"guard_name\":\"api\",\"name\":\"reorder OurSocial\",\"updated_at\":\"2023-12-05 16:27:55\",\"created_at\":\"2023-12-05 16:27:55\",\"id\":180}',NULL,'2023-12-05 13:27:55','2023-12-05 13:27:55'),
(186,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',181,NULL,NULL,'{\"guard_name\":\"web\",\"name\":\"view-any Role\",\"updated_at\":\"2023-12-05 16:27:55\",\"created_at\":\"2023-12-05 16:27:55\",\"id\":181}',NULL,'2023-12-05 13:27:55','2023-12-05 13:27:55'),
(187,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',182,NULL,NULL,'{\"guard_name\":\"api\",\"name\":\"view-any Role\",\"updated_at\":\"2023-12-05 16:27:55\",\"created_at\":\"2023-12-05 16:27:55\",\"id\":182}',NULL,'2023-12-05 13:27:55','2023-12-05 13:27:55'),
(188,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',183,NULL,NULL,'{\"guard_name\":\"web\",\"name\":\"view Role\",\"updated_at\":\"2023-12-05 16:27:55\",\"created_at\":\"2023-12-05 16:27:55\",\"id\":183}',NULL,'2023-12-05 13:27:55','2023-12-05 13:27:55'),
(189,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',184,NULL,NULL,'{\"guard_name\":\"api\",\"name\":\"view Role\",\"updated_at\":\"2023-12-05 16:27:55\",\"created_at\":\"2023-12-05 16:27:55\",\"id\":184}',NULL,'2023-12-05 13:27:55','2023-12-05 13:27:55'),
(190,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',185,NULL,NULL,'{\"guard_name\":\"web\",\"name\":\"create Role\",\"updated_at\":\"2023-12-05 16:27:55\",\"created_at\":\"2023-12-05 16:27:55\",\"id\":185}',NULL,'2023-12-05 13:27:55','2023-12-05 13:27:55'),
(191,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',186,NULL,NULL,'{\"guard_name\":\"api\",\"name\":\"create Role\",\"updated_at\":\"2023-12-05 16:27:55\",\"created_at\":\"2023-12-05 16:27:55\",\"id\":186}',NULL,'2023-12-05 13:27:55','2023-12-05 13:27:55'),
(192,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',187,NULL,NULL,'{\"guard_name\":\"web\",\"name\":\"update Role\",\"updated_at\":\"2023-12-05 16:27:55\",\"created_at\":\"2023-12-05 16:27:55\",\"id\":187}',NULL,'2023-12-05 13:27:55','2023-12-05 13:27:55'),
(193,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',188,NULL,NULL,'{\"guard_name\":\"api\",\"name\":\"update Role\",\"updated_at\":\"2023-12-05 16:27:55\",\"created_at\":\"2023-12-05 16:27:55\",\"id\":188}',NULL,'2023-12-05 13:27:55','2023-12-05 13:27:55'),
(194,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',189,NULL,NULL,'{\"guard_name\":\"web\",\"name\":\"delete Role\",\"updated_at\":\"2023-12-05 16:27:55\",\"created_at\":\"2023-12-05 16:27:55\",\"id\":189}',NULL,'2023-12-05 13:27:55','2023-12-05 13:27:55'),
(195,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',190,NULL,NULL,'{\"guard_name\":\"api\",\"name\":\"delete Role\",\"updated_at\":\"2023-12-05 16:27:55\",\"created_at\":\"2023-12-05 16:27:55\",\"id\":190}',NULL,'2023-12-05 13:27:55','2023-12-05 13:27:55'),
(196,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',191,NULL,NULL,'{\"guard_name\":\"web\",\"name\":\"restore Role\",\"updated_at\":\"2023-12-05 16:27:55\",\"created_at\":\"2023-12-05 16:27:55\",\"id\":191}',NULL,'2023-12-05 13:27:55','2023-12-05 13:27:55'),
(197,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',192,NULL,NULL,'{\"guard_name\":\"api\",\"name\":\"restore Role\",\"updated_at\":\"2023-12-05 16:27:55\",\"created_at\":\"2023-12-05 16:27:55\",\"id\":192}',NULL,'2023-12-05 13:27:55','2023-12-05 13:27:55'),
(198,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',193,NULL,NULL,'{\"guard_name\":\"web\",\"name\":\"force-delete Role\",\"updated_at\":\"2023-12-05 16:27:55\",\"created_at\":\"2023-12-05 16:27:55\",\"id\":193}',NULL,'2023-12-05 13:27:55','2023-12-05 13:27:55'),
(199,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',194,NULL,NULL,'{\"guard_name\":\"api\",\"name\":\"force-delete Role\",\"updated_at\":\"2023-12-05 16:27:55\",\"created_at\":\"2023-12-05 16:27:55\",\"id\":194}',NULL,'2023-12-05 13:27:55','2023-12-05 13:27:55'),
(200,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',195,NULL,NULL,'{\"guard_name\":\"web\",\"name\":\"replicate Role\",\"updated_at\":\"2023-12-05 16:27:55\",\"created_at\":\"2023-12-05 16:27:55\",\"id\":195}',NULL,'2023-12-05 13:27:55','2023-12-05 13:27:55'),
(201,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',196,NULL,NULL,'{\"guard_name\":\"api\",\"name\":\"replicate Role\",\"updated_at\":\"2023-12-05 16:27:55\",\"created_at\":\"2023-12-05 16:27:55\",\"id\":196}',NULL,'2023-12-05 13:27:55','2023-12-05 13:27:55'),
(202,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',197,NULL,NULL,'{\"guard_name\":\"web\",\"name\":\"reorder Role\",\"updated_at\":\"2023-12-05 16:27:55\",\"created_at\":\"2023-12-05 16:27:55\",\"id\":197}',NULL,'2023-12-05 13:27:55','2023-12-05 13:27:55'),
(203,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',198,NULL,NULL,'{\"guard_name\":\"api\",\"name\":\"reorder Role\",\"updated_at\":\"2023-12-05 16:27:55\",\"created_at\":\"2023-12-05 16:27:55\",\"id\":198}',NULL,'2023-12-05 13:27:55','2023-12-05 13:27:55'),
(204,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',199,NULL,NULL,'{\"guard_name\":\"web\",\"name\":\"view-any Social\",\"updated_at\":\"2023-12-05 16:27:55\",\"created_at\":\"2023-12-05 16:27:55\",\"id\":199}',NULL,'2023-12-05 13:27:55','2023-12-05 13:27:55'),
(205,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',200,NULL,NULL,'{\"guard_name\":\"api\",\"name\":\"view-any Social\",\"updated_at\":\"2023-12-05 16:27:55\",\"created_at\":\"2023-12-05 16:27:55\",\"id\":200}',NULL,'2023-12-05 13:27:55','2023-12-05 13:27:55'),
(206,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',201,NULL,NULL,'{\"guard_name\":\"web\",\"name\":\"view Social\",\"updated_at\":\"2023-12-05 16:27:55\",\"created_at\":\"2023-12-05 16:27:55\",\"id\":201}',NULL,'2023-12-05 13:27:55','2023-12-05 13:27:55'),
(207,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',202,NULL,NULL,'{\"guard_name\":\"api\",\"name\":\"view Social\",\"updated_at\":\"2023-12-05 16:27:55\",\"created_at\":\"2023-12-05 16:27:55\",\"id\":202}',NULL,'2023-12-05 13:27:55','2023-12-05 13:27:55'),
(208,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',203,NULL,NULL,'{\"guard_name\":\"web\",\"name\":\"create Social\",\"updated_at\":\"2023-12-05 16:27:55\",\"created_at\":\"2023-12-05 16:27:55\",\"id\":203}',NULL,'2023-12-05 13:27:55','2023-12-05 13:27:55'),
(209,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',204,NULL,NULL,'{\"guard_name\":\"api\",\"name\":\"create Social\",\"updated_at\":\"2023-12-05 16:27:55\",\"created_at\":\"2023-12-05 16:27:55\",\"id\":204}',NULL,'2023-12-05 13:27:55','2023-12-05 13:27:55'),
(210,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',205,NULL,NULL,'{\"guard_name\":\"web\",\"name\":\"update Social\",\"updated_at\":\"2023-12-05 16:27:55\",\"created_at\":\"2023-12-05 16:27:55\",\"id\":205}',NULL,'2023-12-05 13:27:55','2023-12-05 13:27:55'),
(211,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',206,NULL,NULL,'{\"guard_name\":\"api\",\"name\":\"update Social\",\"updated_at\":\"2023-12-05 16:27:55\",\"created_at\":\"2023-12-05 16:27:55\",\"id\":206}',NULL,'2023-12-05 13:27:55','2023-12-05 13:27:55'),
(212,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',207,NULL,NULL,'{\"guard_name\":\"web\",\"name\":\"delete Social\",\"updated_at\":\"2023-12-05 16:27:55\",\"created_at\":\"2023-12-05 16:27:55\",\"id\":207}',NULL,'2023-12-05 13:27:55','2023-12-05 13:27:55'),
(213,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',208,NULL,NULL,'{\"guard_name\":\"api\",\"name\":\"delete Social\",\"updated_at\":\"2023-12-05 16:27:55\",\"created_at\":\"2023-12-05 16:27:55\",\"id\":208}',NULL,'2023-12-05 13:27:55','2023-12-05 13:27:55'),
(214,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',209,NULL,NULL,'{\"guard_name\":\"web\",\"name\":\"restore Social\",\"updated_at\":\"2023-12-05 16:27:55\",\"created_at\":\"2023-12-05 16:27:55\",\"id\":209}',NULL,'2023-12-05 13:27:55','2023-12-05 13:27:55'),
(215,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',210,NULL,NULL,'{\"guard_name\":\"api\",\"name\":\"restore Social\",\"updated_at\":\"2023-12-05 16:27:55\",\"created_at\":\"2023-12-05 16:27:55\",\"id\":210}',NULL,'2023-12-05 13:27:55','2023-12-05 13:27:55'),
(216,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',211,NULL,NULL,'{\"guard_name\":\"web\",\"name\":\"force-delete Social\",\"updated_at\":\"2023-12-05 16:27:55\",\"created_at\":\"2023-12-05 16:27:55\",\"id\":211}',NULL,'2023-12-05 13:27:55','2023-12-05 13:27:55'),
(217,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',212,NULL,NULL,'{\"guard_name\":\"api\",\"name\":\"force-delete Social\",\"updated_at\":\"2023-12-05 16:27:55\",\"created_at\":\"2023-12-05 16:27:55\",\"id\":212}',NULL,'2023-12-05 13:27:55','2023-12-05 13:27:55'),
(218,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',213,NULL,NULL,'{\"guard_name\":\"web\",\"name\":\"replicate Social\",\"updated_at\":\"2023-12-05 16:27:55\",\"created_at\":\"2023-12-05 16:27:55\",\"id\":213}',NULL,'2023-12-05 13:27:55','2023-12-05 13:27:55'),
(219,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',214,NULL,NULL,'{\"guard_name\":\"api\",\"name\":\"replicate Social\",\"updated_at\":\"2023-12-05 16:27:55\",\"created_at\":\"2023-12-05 16:27:55\",\"id\":214}',NULL,'2023-12-05 13:27:55','2023-12-05 13:27:55'),
(220,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',215,NULL,NULL,'{\"guard_name\":\"web\",\"name\":\"reorder Social\",\"updated_at\":\"2023-12-05 16:27:55\",\"created_at\":\"2023-12-05 16:27:55\",\"id\":215}',NULL,'2023-12-05 13:27:55','2023-12-05 13:27:55'),
(221,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',216,NULL,NULL,'{\"guard_name\":\"api\",\"name\":\"reorder Social\",\"updated_at\":\"2023-12-05 16:27:55\",\"created_at\":\"2023-12-05 16:27:55\",\"id\":216}',NULL,'2023-12-05 13:27:55','2023-12-05 13:27:55'),
(222,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',217,NULL,NULL,'{\"guard_name\":\"web\",\"name\":\"view-any Sub\",\"updated_at\":\"2023-12-05 16:27:55\",\"created_at\":\"2023-12-05 16:27:55\",\"id\":217}',NULL,'2023-12-05 13:27:55','2023-12-05 13:27:55'),
(223,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',218,NULL,NULL,'{\"guard_name\":\"api\",\"name\":\"view-any Sub\",\"updated_at\":\"2023-12-05 16:27:55\",\"created_at\":\"2023-12-05 16:27:55\",\"id\":218}',NULL,'2023-12-05 13:27:55','2023-12-05 13:27:55'),
(224,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',219,NULL,NULL,'{\"guard_name\":\"web\",\"name\":\"view Sub\",\"updated_at\":\"2023-12-05 16:27:55\",\"created_at\":\"2023-12-05 16:27:55\",\"id\":219}',NULL,'2023-12-05 13:27:55','2023-12-05 13:27:55'),
(225,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',220,NULL,NULL,'{\"guard_name\":\"api\",\"name\":\"view Sub\",\"updated_at\":\"2023-12-05 16:27:55\",\"created_at\":\"2023-12-05 16:27:55\",\"id\":220}',NULL,'2023-12-05 13:27:55','2023-12-05 13:27:55'),
(226,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',221,NULL,NULL,'{\"guard_name\":\"web\",\"name\":\"create Sub\",\"updated_at\":\"2023-12-05 16:27:55\",\"created_at\":\"2023-12-05 16:27:55\",\"id\":221}',NULL,'2023-12-05 13:27:55','2023-12-05 13:27:55'),
(227,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',222,NULL,NULL,'{\"guard_name\":\"api\",\"name\":\"create Sub\",\"updated_at\":\"2023-12-05 16:27:55\",\"created_at\":\"2023-12-05 16:27:55\",\"id\":222}',NULL,'2023-12-05 13:27:55','2023-12-05 13:27:55'),
(228,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',223,NULL,NULL,'{\"guard_name\":\"web\",\"name\":\"update Sub\",\"updated_at\":\"2023-12-05 16:27:55\",\"created_at\":\"2023-12-05 16:27:55\",\"id\":223}',NULL,'2023-12-05 13:27:55','2023-12-05 13:27:55'),
(229,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',224,NULL,NULL,'{\"guard_name\":\"api\",\"name\":\"update Sub\",\"updated_at\":\"2023-12-05 16:27:55\",\"created_at\":\"2023-12-05 16:27:55\",\"id\":224}',NULL,'2023-12-05 13:27:55','2023-12-05 13:27:55'),
(230,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',225,NULL,NULL,'{\"guard_name\":\"web\",\"name\":\"delete Sub\",\"updated_at\":\"2023-12-05 16:27:55\",\"created_at\":\"2023-12-05 16:27:55\",\"id\":225}',NULL,'2023-12-05 13:27:55','2023-12-05 13:27:55'),
(231,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',226,NULL,NULL,'{\"guard_name\":\"api\",\"name\":\"delete Sub\",\"updated_at\":\"2023-12-05 16:27:55\",\"created_at\":\"2023-12-05 16:27:55\",\"id\":226}',NULL,'2023-12-05 13:27:55','2023-12-05 13:27:55'),
(232,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',227,NULL,NULL,'{\"guard_name\":\"web\",\"name\":\"restore Sub\",\"updated_at\":\"2023-12-05 16:27:55\",\"created_at\":\"2023-12-05 16:27:55\",\"id\":227}',NULL,'2023-12-05 13:27:55','2023-12-05 13:27:55'),
(233,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',228,NULL,NULL,'{\"guard_name\":\"api\",\"name\":\"restore Sub\",\"updated_at\":\"2023-12-05 16:27:55\",\"created_at\":\"2023-12-05 16:27:55\",\"id\":228}',NULL,'2023-12-05 13:27:55','2023-12-05 13:27:55'),
(234,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',229,NULL,NULL,'{\"guard_name\":\"web\",\"name\":\"force-delete Sub\",\"updated_at\":\"2023-12-05 16:27:55\",\"created_at\":\"2023-12-05 16:27:55\",\"id\":229}',NULL,'2023-12-05 13:27:55','2023-12-05 13:27:55'),
(235,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',230,NULL,NULL,'{\"guard_name\":\"api\",\"name\":\"force-delete Sub\",\"updated_at\":\"2023-12-05 16:27:55\",\"created_at\":\"2023-12-05 16:27:55\",\"id\":230}',NULL,'2023-12-05 13:27:55','2023-12-05 13:27:55'),
(236,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',231,NULL,NULL,'{\"guard_name\":\"web\",\"name\":\"replicate Sub\",\"updated_at\":\"2023-12-05 16:27:55\",\"created_at\":\"2023-12-05 16:27:55\",\"id\":231}',NULL,'2023-12-05 13:27:55','2023-12-05 13:27:55'),
(237,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',232,NULL,NULL,'{\"guard_name\":\"api\",\"name\":\"replicate Sub\",\"updated_at\":\"2023-12-05 16:27:55\",\"created_at\":\"2023-12-05 16:27:55\",\"id\":232}',NULL,'2023-12-05 13:27:55','2023-12-05 13:27:55'),
(238,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',233,NULL,NULL,'{\"guard_name\":\"web\",\"name\":\"reorder Sub\",\"updated_at\":\"2023-12-05 16:27:55\",\"created_at\":\"2023-12-05 16:27:55\",\"id\":233}',NULL,'2023-12-05 13:27:55','2023-12-05 13:27:55'),
(239,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',234,NULL,NULL,'{\"guard_name\":\"api\",\"name\":\"reorder Sub\",\"updated_at\":\"2023-12-05 16:27:55\",\"created_at\":\"2023-12-05 16:27:55\",\"id\":234}',NULL,'2023-12-05 13:27:55','2023-12-05 13:27:55'),
(240,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',235,NULL,NULL,'{\"guard_name\":\"web\",\"name\":\"view-any Team\",\"updated_at\":\"2023-12-05 16:27:55\",\"created_at\":\"2023-12-05 16:27:55\",\"id\":235}',NULL,'2023-12-05 13:27:55','2023-12-05 13:27:55'),
(241,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',236,NULL,NULL,'{\"guard_name\":\"api\",\"name\":\"view-any Team\",\"updated_at\":\"2023-12-05 16:27:55\",\"created_at\":\"2023-12-05 16:27:55\",\"id\":236}',NULL,'2023-12-05 13:27:55','2023-12-05 13:27:55'),
(242,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',237,NULL,NULL,'{\"guard_name\":\"web\",\"name\":\"view Team\",\"updated_at\":\"2023-12-05 16:27:55\",\"created_at\":\"2023-12-05 16:27:55\",\"id\":237}',NULL,'2023-12-05 13:27:55','2023-12-05 13:27:55'),
(243,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',238,NULL,NULL,'{\"guard_name\":\"api\",\"name\":\"view Team\",\"updated_at\":\"2023-12-05 16:27:55\",\"created_at\":\"2023-12-05 16:27:55\",\"id\":238}',NULL,'2023-12-05 13:27:55','2023-12-05 13:27:55'),
(244,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',239,NULL,NULL,'{\"guard_name\":\"web\",\"name\":\"create Team\",\"updated_at\":\"2023-12-05 16:27:55\",\"created_at\":\"2023-12-05 16:27:55\",\"id\":239}',NULL,'2023-12-05 13:27:55','2023-12-05 13:27:55'),
(245,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',240,NULL,NULL,'{\"guard_name\":\"api\",\"name\":\"create Team\",\"updated_at\":\"2023-12-05 16:27:55\",\"created_at\":\"2023-12-05 16:27:55\",\"id\":240}',NULL,'2023-12-05 13:27:55','2023-12-05 13:27:55'),
(246,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',241,NULL,NULL,'{\"guard_name\":\"web\",\"name\":\"update Team\",\"updated_at\":\"2023-12-05 16:27:55\",\"created_at\":\"2023-12-05 16:27:55\",\"id\":241}',NULL,'2023-12-05 13:27:55','2023-12-05 13:27:55'),
(247,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',242,NULL,NULL,'{\"guard_name\":\"api\",\"name\":\"update Team\",\"updated_at\":\"2023-12-05 16:27:55\",\"created_at\":\"2023-12-05 16:27:55\",\"id\":242}',NULL,'2023-12-05 13:27:55','2023-12-05 13:27:55'),
(248,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',243,NULL,NULL,'{\"guard_name\":\"web\",\"name\":\"delete Team\",\"updated_at\":\"2023-12-05 16:27:55\",\"created_at\":\"2023-12-05 16:27:55\",\"id\":243}',NULL,'2023-12-05 13:27:55','2023-12-05 13:27:55'),
(249,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',244,NULL,NULL,'{\"guard_name\":\"api\",\"name\":\"delete Team\",\"updated_at\":\"2023-12-05 16:27:55\",\"created_at\":\"2023-12-05 16:27:55\",\"id\":244}',NULL,'2023-12-05 13:27:55','2023-12-05 13:27:55'),
(250,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',245,NULL,NULL,'{\"guard_name\":\"web\",\"name\":\"restore Team\",\"updated_at\":\"2023-12-05 16:27:55\",\"created_at\":\"2023-12-05 16:27:55\",\"id\":245}',NULL,'2023-12-05 13:27:55','2023-12-05 13:27:55'),
(251,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',246,NULL,NULL,'{\"guard_name\":\"api\",\"name\":\"restore Team\",\"updated_at\":\"2023-12-05 16:27:55\",\"created_at\":\"2023-12-05 16:27:55\",\"id\":246}',NULL,'2023-12-05 13:27:55','2023-12-05 13:27:55'),
(252,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',247,NULL,NULL,'{\"guard_name\":\"web\",\"name\":\"force-delete Team\",\"updated_at\":\"2023-12-05 16:27:55\",\"created_at\":\"2023-12-05 16:27:55\",\"id\":247}',NULL,'2023-12-05 13:27:55','2023-12-05 13:27:55'),
(253,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',248,NULL,NULL,'{\"guard_name\":\"api\",\"name\":\"force-delete Team\",\"updated_at\":\"2023-12-05 16:27:55\",\"created_at\":\"2023-12-05 16:27:55\",\"id\":248}',NULL,'2023-12-05 13:27:55','2023-12-05 13:27:55'),
(254,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',249,NULL,NULL,'{\"guard_name\":\"web\",\"name\":\"replicate Team\",\"updated_at\":\"2023-12-05 16:27:55\",\"created_at\":\"2023-12-05 16:27:55\",\"id\":249}',NULL,'2023-12-05 13:27:55','2023-12-05 13:27:55'),
(255,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',250,NULL,NULL,'{\"guard_name\":\"api\",\"name\":\"replicate Team\",\"updated_at\":\"2023-12-05 16:27:55\",\"created_at\":\"2023-12-05 16:27:55\",\"id\":250}',NULL,'2023-12-05 13:27:55','2023-12-05 13:27:55'),
(256,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',251,NULL,NULL,'{\"guard_name\":\"web\",\"name\":\"reorder Team\",\"updated_at\":\"2023-12-05 16:27:55\",\"created_at\":\"2023-12-05 16:27:55\",\"id\":251}',NULL,'2023-12-05 13:27:55','2023-12-05 13:27:55'),
(257,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',252,NULL,NULL,'{\"guard_name\":\"api\",\"name\":\"reorder Team\",\"updated_at\":\"2023-12-05 16:27:55\",\"created_at\":\"2023-12-05 16:27:55\",\"id\":252}',NULL,'2023-12-05 13:27:55','2023-12-05 13:27:55'),
(258,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',253,NULL,NULL,'{\"guard_name\":\"web\",\"name\":\"view-any TeamInvitation\",\"updated_at\":\"2023-12-05 16:27:55\",\"created_at\":\"2023-12-05 16:27:55\",\"id\":253}',NULL,'2023-12-05 13:27:55','2023-12-05 13:27:55'),
(259,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',254,NULL,NULL,'{\"guard_name\":\"api\",\"name\":\"view-any TeamInvitation\",\"updated_at\":\"2023-12-05 16:27:55\",\"created_at\":\"2023-12-05 16:27:55\",\"id\":254}',NULL,'2023-12-05 13:27:55','2023-12-05 13:27:55'),
(260,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',255,NULL,NULL,'{\"guard_name\":\"web\",\"name\":\"view TeamInvitation\",\"updated_at\":\"2023-12-05 16:27:55\",\"created_at\":\"2023-12-05 16:27:55\",\"id\":255}',NULL,'2023-12-05 13:27:55','2023-12-05 13:27:55'),
(261,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',256,NULL,NULL,'{\"guard_name\":\"api\",\"name\":\"view TeamInvitation\",\"updated_at\":\"2023-12-05 16:27:55\",\"created_at\":\"2023-12-05 16:27:55\",\"id\":256}',NULL,'2023-12-05 13:27:55','2023-12-05 13:27:55'),
(262,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',257,NULL,NULL,'{\"guard_name\":\"web\",\"name\":\"create TeamInvitation\",\"updated_at\":\"2023-12-05 16:27:55\",\"created_at\":\"2023-12-05 16:27:55\",\"id\":257}',NULL,'2023-12-05 13:27:55','2023-12-05 13:27:55'),
(263,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',258,NULL,NULL,'{\"guard_name\":\"api\",\"name\":\"create TeamInvitation\",\"updated_at\":\"2023-12-05 16:27:55\",\"created_at\":\"2023-12-05 16:27:55\",\"id\":258}',NULL,'2023-12-05 13:27:55','2023-12-05 13:27:55'),
(264,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',259,NULL,NULL,'{\"guard_name\":\"web\",\"name\":\"update TeamInvitation\",\"updated_at\":\"2023-12-05 16:27:55\",\"created_at\":\"2023-12-05 16:27:55\",\"id\":259}',NULL,'2023-12-05 13:27:55','2023-12-05 13:27:55'),
(265,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',260,NULL,NULL,'{\"guard_name\":\"api\",\"name\":\"update TeamInvitation\",\"updated_at\":\"2023-12-05 16:27:55\",\"created_at\":\"2023-12-05 16:27:55\",\"id\":260}',NULL,'2023-12-05 13:27:55','2023-12-05 13:27:55'),
(266,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',261,NULL,NULL,'{\"guard_name\":\"web\",\"name\":\"delete TeamInvitation\",\"updated_at\":\"2023-12-05 16:27:55\",\"created_at\":\"2023-12-05 16:27:55\",\"id\":261}',NULL,'2023-12-05 13:27:55','2023-12-05 13:27:55'),
(267,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',262,NULL,NULL,'{\"guard_name\":\"api\",\"name\":\"delete TeamInvitation\",\"updated_at\":\"2023-12-05 16:27:55\",\"created_at\":\"2023-12-05 16:27:55\",\"id\":262}',NULL,'2023-12-05 13:27:55','2023-12-05 13:27:55'),
(268,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',263,NULL,NULL,'{\"guard_name\":\"web\",\"name\":\"restore TeamInvitation\",\"updated_at\":\"2023-12-05 16:27:55\",\"created_at\":\"2023-12-05 16:27:55\",\"id\":263}',NULL,'2023-12-05 13:27:55','2023-12-05 13:27:55'),
(269,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',264,NULL,NULL,'{\"guard_name\":\"api\",\"name\":\"restore TeamInvitation\",\"updated_at\":\"2023-12-05 16:27:55\",\"created_at\":\"2023-12-05 16:27:55\",\"id\":264}',NULL,'2023-12-05 13:27:55','2023-12-05 13:27:55'),
(270,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',265,NULL,NULL,'{\"guard_name\":\"web\",\"name\":\"force-delete TeamInvitation\",\"updated_at\":\"2023-12-05 16:27:55\",\"created_at\":\"2023-12-05 16:27:55\",\"id\":265}',NULL,'2023-12-05 13:27:55','2023-12-05 13:27:55'),
(271,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',266,NULL,NULL,'{\"guard_name\":\"api\",\"name\":\"force-delete TeamInvitation\",\"updated_at\":\"2023-12-05 16:27:55\",\"created_at\":\"2023-12-05 16:27:55\",\"id\":266}',NULL,'2023-12-05 13:27:55','2023-12-05 13:27:55'),
(272,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',267,NULL,NULL,'{\"guard_name\":\"web\",\"name\":\"replicate TeamInvitation\",\"updated_at\":\"2023-12-05 16:27:55\",\"created_at\":\"2023-12-05 16:27:55\",\"id\":267}',NULL,'2023-12-05 13:27:55','2023-12-05 13:27:55'),
(273,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',268,NULL,NULL,'{\"guard_name\":\"api\",\"name\":\"replicate TeamInvitation\",\"updated_at\":\"2023-12-05 16:27:55\",\"created_at\":\"2023-12-05 16:27:55\",\"id\":268}',NULL,'2023-12-05 13:27:55','2023-12-05 13:27:55'),
(274,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',269,NULL,NULL,'{\"guard_name\":\"web\",\"name\":\"reorder TeamInvitation\",\"updated_at\":\"2023-12-05 16:27:55\",\"created_at\":\"2023-12-05 16:27:55\",\"id\":269}',NULL,'2023-12-05 13:27:55','2023-12-05 13:27:55'),
(275,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',270,NULL,NULL,'{\"guard_name\":\"api\",\"name\":\"reorder TeamInvitation\",\"updated_at\":\"2023-12-05 16:27:55\",\"created_at\":\"2023-12-05 16:27:55\",\"id\":270}',NULL,'2023-12-05 13:27:55','2023-12-05 13:27:55'),
(276,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',271,NULL,NULL,'{\"guard_name\":\"web\",\"name\":\"view-any TextWidget\",\"updated_at\":\"2023-12-05 16:27:55\",\"created_at\":\"2023-12-05 16:27:55\",\"id\":271}',NULL,'2023-12-05 13:27:55','2023-12-05 13:27:55'),
(277,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',272,NULL,NULL,'{\"guard_name\":\"api\",\"name\":\"view-any TextWidget\",\"updated_at\":\"2023-12-05 16:27:55\",\"created_at\":\"2023-12-05 16:27:55\",\"id\":272}',NULL,'2023-12-05 13:27:55','2023-12-05 13:27:55'),
(278,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',273,NULL,NULL,'{\"guard_name\":\"web\",\"name\":\"view TextWidget\",\"updated_at\":\"2023-12-05 16:27:55\",\"created_at\":\"2023-12-05 16:27:55\",\"id\":273}',NULL,'2023-12-05 13:27:55','2023-12-05 13:27:55'),
(279,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',274,NULL,NULL,'{\"guard_name\":\"api\",\"name\":\"view TextWidget\",\"updated_at\":\"2023-12-05 16:27:55\",\"created_at\":\"2023-12-05 16:27:55\",\"id\":274}',NULL,'2023-12-05 13:27:55','2023-12-05 13:27:55'),
(280,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',275,NULL,NULL,'{\"guard_name\":\"web\",\"name\":\"create TextWidget\",\"updated_at\":\"2023-12-05 16:27:55\",\"created_at\":\"2023-12-05 16:27:55\",\"id\":275}',NULL,'2023-12-05 13:27:55','2023-12-05 13:27:55'),
(281,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',276,NULL,NULL,'{\"guard_name\":\"api\",\"name\":\"create TextWidget\",\"updated_at\":\"2023-12-05 16:27:55\",\"created_at\":\"2023-12-05 16:27:55\",\"id\":276}',NULL,'2023-12-05 13:27:55','2023-12-05 13:27:55'),
(282,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',277,NULL,NULL,'{\"guard_name\":\"web\",\"name\":\"update TextWidget\",\"updated_at\":\"2023-12-05 16:27:55\",\"created_at\":\"2023-12-05 16:27:55\",\"id\":277}',NULL,'2023-12-05 13:27:55','2023-12-05 13:27:55'),
(283,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',278,NULL,NULL,'{\"guard_name\":\"api\",\"name\":\"update TextWidget\",\"updated_at\":\"2023-12-05 16:27:55\",\"created_at\":\"2023-12-05 16:27:55\",\"id\":278}',NULL,'2023-12-05 13:27:55','2023-12-05 13:27:55'),
(284,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',279,NULL,NULL,'{\"guard_name\":\"web\",\"name\":\"delete TextWidget\",\"updated_at\":\"2023-12-05 16:27:55\",\"created_at\":\"2023-12-05 16:27:55\",\"id\":279}',NULL,'2023-12-05 13:27:55','2023-12-05 13:27:55'),
(285,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',280,NULL,NULL,'{\"guard_name\":\"api\",\"name\":\"delete TextWidget\",\"updated_at\":\"2023-12-05 16:27:55\",\"created_at\":\"2023-12-05 16:27:55\",\"id\":280}',NULL,'2023-12-05 13:27:55','2023-12-05 13:27:55'),
(286,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',281,NULL,NULL,'{\"guard_name\":\"web\",\"name\":\"restore TextWidget\",\"updated_at\":\"2023-12-05 16:27:55\",\"created_at\":\"2023-12-05 16:27:55\",\"id\":281}',NULL,'2023-12-05 13:27:55','2023-12-05 13:27:55'),
(287,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',282,NULL,NULL,'{\"guard_name\":\"api\",\"name\":\"restore TextWidget\",\"updated_at\":\"2023-12-05 16:27:55\",\"created_at\":\"2023-12-05 16:27:55\",\"id\":282}',NULL,'2023-12-05 13:27:55','2023-12-05 13:27:55'),
(288,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',283,NULL,NULL,'{\"guard_name\":\"web\",\"name\":\"force-delete TextWidget\",\"updated_at\":\"2023-12-05 16:27:55\",\"created_at\":\"2023-12-05 16:27:55\",\"id\":283}',NULL,'2023-12-05 13:27:55','2023-12-05 13:27:55'),
(289,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',284,NULL,NULL,'{\"guard_name\":\"api\",\"name\":\"force-delete TextWidget\",\"updated_at\":\"2023-12-05 16:27:55\",\"created_at\":\"2023-12-05 16:27:55\",\"id\":284}',NULL,'2023-12-05 13:27:55','2023-12-05 13:27:55'),
(290,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',285,NULL,NULL,'{\"guard_name\":\"web\",\"name\":\"replicate TextWidget\",\"updated_at\":\"2023-12-05 16:27:55\",\"created_at\":\"2023-12-05 16:27:55\",\"id\":285}',NULL,'2023-12-05 13:27:55','2023-12-05 13:27:55'),
(291,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',286,NULL,NULL,'{\"guard_name\":\"api\",\"name\":\"replicate TextWidget\",\"updated_at\":\"2023-12-05 16:27:55\",\"created_at\":\"2023-12-05 16:27:55\",\"id\":286}',NULL,'2023-12-05 13:27:55','2023-12-05 13:27:55'),
(292,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',287,NULL,NULL,'{\"guard_name\":\"web\",\"name\":\"reorder TextWidget\",\"updated_at\":\"2023-12-05 16:27:55\",\"created_at\":\"2023-12-05 16:27:55\",\"id\":287}',NULL,'2023-12-05 13:27:55','2023-12-05 13:27:55'),
(293,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',288,NULL,NULL,'{\"guard_name\":\"api\",\"name\":\"reorder TextWidget\",\"updated_at\":\"2023-12-05 16:27:55\",\"created_at\":\"2023-12-05 16:27:55\",\"id\":288}',NULL,'2023-12-05 13:27:55','2023-12-05 13:27:55'),
(294,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',289,NULL,NULL,'{\"guard_name\":\"web\",\"name\":\"view-any UpvoteDownvote\",\"updated_at\":\"2023-12-05 16:27:55\",\"created_at\":\"2023-12-05 16:27:55\",\"id\":289}',NULL,'2023-12-05 13:27:55','2023-12-05 13:27:55'),
(295,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',290,NULL,NULL,'{\"guard_name\":\"api\",\"name\":\"view-any UpvoteDownvote\",\"updated_at\":\"2023-12-05 16:27:55\",\"created_at\":\"2023-12-05 16:27:55\",\"id\":290}',NULL,'2023-12-05 13:27:55','2023-12-05 13:27:55'),
(296,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',291,NULL,NULL,'{\"guard_name\":\"web\",\"name\":\"view UpvoteDownvote\",\"updated_at\":\"2023-12-05 16:27:55\",\"created_at\":\"2023-12-05 16:27:55\",\"id\":291}',NULL,'2023-12-05 13:27:55','2023-12-05 13:27:55'),
(297,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',292,NULL,NULL,'{\"guard_name\":\"api\",\"name\":\"view UpvoteDownvote\",\"updated_at\":\"2023-12-05 16:27:55\",\"created_at\":\"2023-12-05 16:27:55\",\"id\":292}',NULL,'2023-12-05 13:27:55','2023-12-05 13:27:55'),
(298,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',293,NULL,NULL,'{\"guard_name\":\"web\",\"name\":\"create UpvoteDownvote\",\"updated_at\":\"2023-12-05 16:27:55\",\"created_at\":\"2023-12-05 16:27:55\",\"id\":293}',NULL,'2023-12-05 13:27:55','2023-12-05 13:27:55'),
(299,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',294,NULL,NULL,'{\"guard_name\":\"api\",\"name\":\"create UpvoteDownvote\",\"updated_at\":\"2023-12-05 16:27:55\",\"created_at\":\"2023-12-05 16:27:55\",\"id\":294}',NULL,'2023-12-05 13:27:55','2023-12-05 13:27:55'),
(300,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',295,NULL,NULL,'{\"guard_name\":\"web\",\"name\":\"update UpvoteDownvote\",\"updated_at\":\"2023-12-05 16:27:55\",\"created_at\":\"2023-12-05 16:27:55\",\"id\":295}',NULL,'2023-12-05 13:27:55','2023-12-05 13:27:55'),
(301,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',296,NULL,NULL,'{\"guard_name\":\"api\",\"name\":\"update UpvoteDownvote\",\"updated_at\":\"2023-12-05 16:27:55\",\"created_at\":\"2023-12-05 16:27:55\",\"id\":296}',NULL,'2023-12-05 13:27:55','2023-12-05 13:27:55'),
(302,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',297,NULL,NULL,'{\"guard_name\":\"web\",\"name\":\"delete UpvoteDownvote\",\"updated_at\":\"2023-12-05 16:27:55\",\"created_at\":\"2023-12-05 16:27:55\",\"id\":297}',NULL,'2023-12-05 13:27:55','2023-12-05 13:27:55'),
(303,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',298,NULL,NULL,'{\"guard_name\":\"api\",\"name\":\"delete UpvoteDownvote\",\"updated_at\":\"2023-12-05 16:27:55\",\"created_at\":\"2023-12-05 16:27:55\",\"id\":298}',NULL,'2023-12-05 13:27:55','2023-12-05 13:27:55'),
(304,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',299,NULL,NULL,'{\"guard_name\":\"web\",\"name\":\"restore UpvoteDownvote\",\"updated_at\":\"2023-12-05 16:27:55\",\"created_at\":\"2023-12-05 16:27:55\",\"id\":299}',NULL,'2023-12-05 13:27:55','2023-12-05 13:27:55'),
(305,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',300,NULL,NULL,'{\"guard_name\":\"api\",\"name\":\"restore UpvoteDownvote\",\"updated_at\":\"2023-12-05 16:27:55\",\"created_at\":\"2023-12-05 16:27:55\",\"id\":300}',NULL,'2023-12-05 13:27:55','2023-12-05 13:27:55'),
(306,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',301,NULL,NULL,'{\"guard_name\":\"web\",\"name\":\"force-delete UpvoteDownvote\",\"updated_at\":\"2023-12-05 16:27:55\",\"created_at\":\"2023-12-05 16:27:55\",\"id\":301}',NULL,'2023-12-05 13:27:55','2023-12-05 13:27:55'),
(307,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',302,NULL,NULL,'{\"guard_name\":\"api\",\"name\":\"force-delete UpvoteDownvote\",\"updated_at\":\"2023-12-05 16:27:55\",\"created_at\":\"2023-12-05 16:27:55\",\"id\":302}',NULL,'2023-12-05 13:27:55','2023-12-05 13:27:55'),
(308,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',303,NULL,NULL,'{\"guard_name\":\"web\",\"name\":\"replicate UpvoteDownvote\",\"updated_at\":\"2023-12-05 16:27:55\",\"created_at\":\"2023-12-05 16:27:55\",\"id\":303}',NULL,'2023-12-05 13:27:55','2023-12-05 13:27:55'),
(309,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',304,NULL,NULL,'{\"guard_name\":\"api\",\"name\":\"replicate UpvoteDownvote\",\"updated_at\":\"2023-12-05 16:27:55\",\"created_at\":\"2023-12-05 16:27:55\",\"id\":304}',NULL,'2023-12-05 13:27:55','2023-12-05 13:27:55'),
(310,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',305,NULL,NULL,'{\"guard_name\":\"web\",\"name\":\"reorder UpvoteDownvote\",\"updated_at\":\"2023-12-05 16:27:55\",\"created_at\":\"2023-12-05 16:27:55\",\"id\":305}',NULL,'2023-12-05 13:27:55','2023-12-05 13:27:55'),
(311,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',306,NULL,NULL,'{\"guard_name\":\"api\",\"name\":\"reorder UpvoteDownvote\",\"updated_at\":\"2023-12-05 16:27:55\",\"created_at\":\"2023-12-05 16:27:55\",\"id\":306}',NULL,'2023-12-05 13:27:55','2023-12-05 13:27:55'),
(312,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',307,NULL,NULL,'{\"guard_name\":\"web\",\"name\":\"view-any User\",\"updated_at\":\"2023-12-05 16:27:55\",\"created_at\":\"2023-12-05 16:27:55\",\"id\":307}',NULL,'2023-12-05 13:27:55','2023-12-05 13:27:55'),
(313,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',308,NULL,NULL,'{\"guard_name\":\"api\",\"name\":\"view-any User\",\"updated_at\":\"2023-12-05 16:27:55\",\"created_at\":\"2023-12-05 16:27:55\",\"id\":308}',NULL,'2023-12-05 13:27:55','2023-12-05 13:27:55'),
(314,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',309,NULL,NULL,'{\"guard_name\":\"web\",\"name\":\"view User\",\"updated_at\":\"2023-12-05 16:27:55\",\"created_at\":\"2023-12-05 16:27:55\",\"id\":309}',NULL,'2023-12-05 13:27:55','2023-12-05 13:27:55'),
(315,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',310,NULL,NULL,'{\"guard_name\":\"api\",\"name\":\"view User\",\"updated_at\":\"2023-12-05 16:27:55\",\"created_at\":\"2023-12-05 16:27:55\",\"id\":310}',NULL,'2023-12-05 13:27:55','2023-12-05 13:27:55'),
(316,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',311,NULL,NULL,'{\"guard_name\":\"web\",\"name\":\"create User\",\"updated_at\":\"2023-12-05 16:27:55\",\"created_at\":\"2023-12-05 16:27:55\",\"id\":311}',NULL,'2023-12-05 13:27:55','2023-12-05 13:27:55'),
(317,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',312,NULL,NULL,'{\"guard_name\":\"api\",\"name\":\"create User\",\"updated_at\":\"2023-12-05 16:27:55\",\"created_at\":\"2023-12-05 16:27:55\",\"id\":312}',NULL,'2023-12-05 13:27:55','2023-12-05 13:27:55'),
(318,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',313,NULL,NULL,'{\"guard_name\":\"web\",\"name\":\"update User\",\"updated_at\":\"2023-12-05 16:27:55\",\"created_at\":\"2023-12-05 16:27:55\",\"id\":313}',NULL,'2023-12-05 13:27:55','2023-12-05 13:27:55'),
(319,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',314,NULL,NULL,'{\"guard_name\":\"api\",\"name\":\"update User\",\"updated_at\":\"2023-12-05 16:27:55\",\"created_at\":\"2023-12-05 16:27:55\",\"id\":314}',NULL,'2023-12-05 13:27:55','2023-12-05 13:27:55'),
(320,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',315,NULL,NULL,'{\"guard_name\":\"web\",\"name\":\"delete User\",\"updated_at\":\"2023-12-05 16:27:55\",\"created_at\":\"2023-12-05 16:27:55\",\"id\":315}',NULL,'2023-12-05 13:27:55','2023-12-05 13:27:55'),
(321,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',316,NULL,NULL,'{\"guard_name\":\"api\",\"name\":\"delete User\",\"updated_at\":\"2023-12-05 16:27:55\",\"created_at\":\"2023-12-05 16:27:55\",\"id\":316}',NULL,'2023-12-05 13:27:55','2023-12-05 13:27:55'),
(322,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',317,NULL,NULL,'{\"guard_name\":\"web\",\"name\":\"restore User\",\"updated_at\":\"2023-12-05 16:27:55\",\"created_at\":\"2023-12-05 16:27:55\",\"id\":317}',NULL,'2023-12-05 13:27:55','2023-12-05 13:27:55'),
(323,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',318,NULL,NULL,'{\"guard_name\":\"api\",\"name\":\"restore User\",\"updated_at\":\"2023-12-05 16:27:55\",\"created_at\":\"2023-12-05 16:27:55\",\"id\":318}',NULL,'2023-12-05 13:27:55','2023-12-05 13:27:55'),
(324,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',319,NULL,NULL,'{\"guard_name\":\"web\",\"name\":\"force-delete User\",\"updated_at\":\"2023-12-05 16:27:55\",\"created_at\":\"2023-12-05 16:27:55\",\"id\":319}',NULL,'2023-12-05 13:27:55','2023-12-05 13:27:55'),
(325,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',320,NULL,NULL,'{\"guard_name\":\"api\",\"name\":\"force-delete User\",\"updated_at\":\"2023-12-05 16:27:55\",\"created_at\":\"2023-12-05 16:27:55\",\"id\":320}',NULL,'2023-12-05 13:27:55','2023-12-05 13:27:55'),
(326,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',321,NULL,NULL,'{\"guard_name\":\"web\",\"name\":\"replicate User\",\"updated_at\":\"2023-12-05 16:27:55\",\"created_at\":\"2023-12-05 16:27:55\",\"id\":321}',NULL,'2023-12-05 13:27:55','2023-12-05 13:27:55'),
(327,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',322,NULL,NULL,'{\"guard_name\":\"api\",\"name\":\"replicate User\",\"updated_at\":\"2023-12-05 16:27:55\",\"created_at\":\"2023-12-05 16:27:55\",\"id\":322}',NULL,'2023-12-05 13:27:55','2023-12-05 13:27:55'),
(328,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',323,NULL,NULL,'{\"guard_name\":\"web\",\"name\":\"reorder User\",\"updated_at\":\"2023-12-05 16:27:55\",\"created_at\":\"2023-12-05 16:27:55\",\"id\":323}',NULL,'2023-12-05 13:27:55','2023-12-05 13:27:55'),
(329,'Resource','Permission Created','Spatie\\Permission\\Models\\Permission','Created',324,NULL,NULL,'{\"guard_name\":\"api\",\"name\":\"reorder User\",\"updated_at\":\"2023-12-05 16:27:55\",\"created_at\":\"2023-12-05 16:27:55\",\"id\":324}',NULL,'2023-12-05 13:27:55','2023-12-05 13:27:55'),
(330,'Resource','Category Created by Ndachi Mugo','App\\Models\\Category','Created',1,'App\\Models\\User',1,'{\"category\":\"Politics\",\"slug\":\"politics\",\"updated_at\":\"2023-12-05 17:28:05\",\"created_at\":\"2023-12-05 17:28:05\",\"id\":1}',NULL,'2023-12-05 14:28:05','2023-12-05 14:28:05'),
(331,'Resource','Category Created by Ndachi Mugo','App\\Models\\Category','Created',2,'App\\Models\\User',1,'{\"category\":\"Healt\",\"slug\":\"healt\",\"updated_at\":\"2023-12-05 17:29:04\",\"created_at\":\"2023-12-05 17:29:04\",\"id\":2}',NULL,'2023-12-05 14:29:04','2023-12-05 14:29:04'),
(332,'Resource','Category Updated by Ndachi Mugo','App\\Models\\Category','Updated',2,'App\\Models\\User',1,'{\"category\":\"Health\",\"slug\":\"health\",\"updated_at\":\"2023-12-05 17:29:33\"}',NULL,'2023-12-05 14:29:33','2023-12-05 14:29:33'),
(333,'Resource','Category Created by Ndachi Mugo','App\\Models\\Category','Created',3,'App\\Models\\User',1,'{\"category\":\"Lifestyle\",\"slug\":\"lifestyle\",\"updated_at\":\"2023-12-05 17:30:21\",\"created_at\":\"2023-12-05 17:30:21\",\"id\":3}',NULL,'2023-12-05 14:30:21','2023-12-05 14:30:21'),
(334,'Resource','Category Created by Ndachi Mugo','App\\Models\\Category','Created',4,'App\\Models\\User',1,'{\"category\":\"Business\",\"slug\":\"business\",\"updated_at\":\"2023-12-05 17:31:49\",\"created_at\":\"2023-12-05 17:31:49\",\"id\":4}',NULL,'2023-12-05 14:31:49','2023-12-05 14:31:49'),
(335,'Resource','Location Created by Ndachi Mugo','App\\Models\\Location','Created',1,'App\\Models\\User',1,'{\"location\":\"Africa\",\"slug\":\"africa\",\"updated_at\":\"2023-12-05 17:32:32\",\"created_at\":\"2023-12-05 17:32:32\",\"id\":1}',NULL,'2023-12-05 14:32:32','2023-12-05 14:32:32'),
(336,'Resource','Location Created by Ndachi Mugo','App\\Models\\Location','Created',2,'App\\Models\\User',1,'{\"location\":\"Asia\",\"slug\":\"asia\",\"updated_at\":\"2023-12-05 17:33:12\",\"created_at\":\"2023-12-05 17:33:12\",\"id\":2}',NULL,'2023-12-05 14:33:12','2023-12-05 14:33:12'),
(337,'Resource','Location Created by Ndachi Mugo','App\\Models\\Location','Created',3,'App\\Models\\User',1,'{\"location\":\"Europe\",\"slug\":\"europe\",\"updated_at\":\"2023-12-05 17:34:01\",\"created_at\":\"2023-12-05 17:34:01\",\"id\":3}',NULL,'2023-12-05 14:34:01','2023-12-05 14:34:01'),
(338,'Resource','Location Created by Ndachi Mugo','App\\Models\\Location','Created',4,'App\\Models\\User',1,'{\"location\":\"America\",\"slug\":\"america\",\"updated_at\":\"2023-12-05 17:35:17\",\"created_at\":\"2023-12-05 17:35:17\",\"id\":4}',NULL,'2023-12-05 14:35:17','2023-12-05 14:35:17'),
(339,'Resource','Role Created by Ndachi Mugo','Spatie\\Permission\\Models\\Role','Created',2,'App\\Models\\User',1,'{\"name\":\"Editor\",\"guard_name\":\"web\",\"updated_at\":\"2023-12-05 17:36:14\",\"created_at\":\"2023-12-05 17:36:14\",\"id\":2}',NULL,'2023-12-05 14:36:14','2023-12-05 14:36:14'),
(340,'Resource','Role Created by Ndachi Mugo','Spatie\\Permission\\Models\\Role','Created',3,'App\\Models\\User',1,'{\"name\":\"Author\",\"guard_name\":\"web\",\"updated_at\":\"2023-12-05 17:36:34\",\"created_at\":\"2023-12-05 17:36:34\",\"id\":3}',NULL,'2023-12-05 14:36:34','2023-12-05 14:36:34'),
(341,'Resource','Article Created by Ndachi Mugo','App\\Models\\Article','Created',1,'App\\Models\\User',1,'{\"title\":\"Praesent scelerisque metus vel auctor consectetur\",\"ancient_truth\":\"<p>Praesent scelerisque metus vel auctor consectetur. Donec fringilla lacinia orci, vel aliquet nunc dapibus at. Aenean enim purus, suscipit ut ornare id, finibus eget quam. In hac habitasse platea dictumst. Pellentesque vel ex justo. Ut et nibh at turpis egestas egestas. Ut a metus laoreet, tempus tellus auctor, pharetra mauris. Mauris sollicitudin sit amet erat a pretium. Sed eget odio porttitor, sollicitudin orci sed, luctus metus. Fusce elementum hendrerit nibh.<\\/p>\",\"body\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer quis est porta, lobortis urna et, posuere nibh. Praesent id elit eget lacus eleifend malesuada. Curabitur venenatis leo vel mauris aliquet elementum. Morbi aliquet aliquam lectus non consequat. Praesent tristique tellus lacus, ac hendrerit ligula interdum id. Duis id rutrum tellus. Suspendisse nulla leo, venenatis sit amet vehicula nec, tempus ut diam. Nam tempus tortor non magna aliquam congue. Pellentesque ornare turpis et enim ullamcorper, quis dignissim tellus molestie. Nullam pulvinar dolor in bibendum laoreet. Nullam pellentesque gravida nisi, id ullamcorper dolor accumsan nec.<\\/p><p>Praesent scelerisque metus vel auctor consectetur. Donec fringilla lacinia orci, vel aliquet nunc dapibus at. Aenean enim purus, suscipit ut ornare id, finibus eget quam. In hac habitasse platea dictumst. Pellentesque vel ex justo. Ut et nibh at turpis egestas egestas. Ut a metus laoreet, tempus tellus auctor, pharetra mauris. Mauris sollicitudin sit amet erat a pretium. Sed eget odio porttitor, sollicitudin orci sed, luctus metus. Fusce elementum hendrerit nibh.<\\/p><p>Nulla facilisi. Aliquam maximus eros id consectetur dapibus. Aliquam suscipit ipsum id ex pulvinar facilisis. Nam in quam pellentesque, lacinia ligula vel, consectetur mi. Vestibulum sed leo a metus maximus fermentum. Aliquam nec molestie eros. Duis sed tellus id quam maximus rhoncus at id leo. Aenean malesuada, velit eu rhoncus volutpat, sem neque volutpat nulla, id fringilla sem nisi ac nunc.<\\/p><p>Vivamus fringilla, ante sit amet hendrerit cursus, purus risus finibus tellus, vel condimentum elit tellus ac lorem. In non luctus magna, in commodo mi. Etiam euismod nec dui in elementum. Fusce gravida elit eros, nec aliquam ex faucibus vel. Nam non urna eu felis imperdiet congue. Sed egestas congue tincidunt. Quisque eget nisi non elit fringilla blandit. Phasellus semper ex sed nisi tincidunt, vel efficitur purus lobortis. Quisque sem lorem, volutpat at egestas ac, tincidunt vitae lectus. Vestibulum vitae nisl at lorem gravida suscipit.<\\/p><p>Donec nec tortor ac massa posuere iaculis ac ut lectus. Vestibulum quis nulla mauris. Praesent nibh eros, tempus sit amet egestas in, mattis et lorem. Ut nec arcu convallis, faucibus urna eget, congue urna. Sed efficitur auctor leo ac blandit. Cras pellentesque, tortor in faucibus rhoncus, nisi nisl suscipit risus, eget tristique risus est eu eros. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Morbi rhoncus dui justo, at dictum odio lobortis non. Phasellus dapibus quam vitae laoreet tristique. Aenean feugiat pharetra ullamcorper. Nam ultrices hendrerit magna, ut varius ante feugiat et. Duis bibendum auctor nulla, ac sollicitudin mauris bibendum quis.<\\/p>\",\"meta_title\":null,\"meta_description\":null,\"scheduled_for\":null,\"status\":\"published\",\"author_id\":\"1\",\"editor_id\":\"1\",\"published_at\":\"2023-12-05 17:42:58\",\"slug\":\"praesent-scelerisque-metus-vel-auctor-consectetur\",\"updated_at\":\"2023-12-05 17:42:58\",\"created_at\":\"2023-12-05 17:42:58\",\"id\":1}',NULL,'2023-12-05 14:42:58','2023-12-05 14:42:58'),
(342,'Resource','Text Widget Created by Ndachi Mugo','App\\Models\\TextWidget','Created',1,'App\\Models\\User',1,'{\"key\":\"header\",\"title\":\"Blog\",\"content\":\"<p>Laravel Livewire Blog<\\/p>\",\"active\":true,\"updated_at\":\"2023-12-05 17:45:30\",\"created_at\":\"2023-12-05 17:45:30\",\"id\":1}',NULL,'2023-12-05 14:45:30','2023-12-05 14:45:30'),
(343,'Resource','Text Widget Created by Ndachi Mugo','App\\Models\\TextWidget','Created',2,'App\\Models\\User',1,'{\"key\":\"about-us-page\",\"title\":\"About Us\",\"content\":null,\"active\":true,\"updated_at\":\"2023-12-05 17:46:03\",\"created_at\":\"2023-12-05 17:46:03\",\"id\":2}',NULL,'2023-12-05 14:46:03','2023-12-05 14:46:03'),
(344,'Resource','Text Widget Created by Ndachi Mugo','App\\Models\\TextWidget','Created',3,'App\\Models\\User',1,'{\"key\":\"terms-and-conditions-page\",\"title\":\"Terms & Conditions\",\"content\":null,\"active\":true,\"updated_at\":\"2023-12-05 17:46:54\",\"created_at\":\"2023-12-05 17:46:54\",\"id\":3}',NULL,'2023-12-05 14:46:54','2023-12-05 14:46:54'),
(345,'Resource','Text Widget Created by Ndachi Mugo','App\\Models\\TextWidget','Created',4,'App\\Models\\User',1,'{\"key\":\"privacy-policy-page\",\"title\":\"Privacy Policy\",\"content\":null,\"active\":true,\"updated_at\":\"2023-12-05 17:47:39\",\"created_at\":\"2023-12-05 17:47:39\",\"id\":4}',NULL,'2023-12-05 14:47:40','2023-12-05 14:47:40'),
(346,'Resource','Our Social Created by Ndachi Mugo','App\\Models\\OurSocial','Created',1,'App\\Models\\User',1,'{\"platform\":\"X\",\"link\":\"https:\\/\\/x.com\\/blog\",\"active\":true,\"id\":1}',NULL,'2023-12-05 14:48:20','2023-12-05 14:48:20'),
(347,'Resource','Our Social Created by Ndachi Mugo','App\\Models\\OurSocial','Created',2,'App\\Models\\User',1,'{\"platform\":\"Telegram\",\"link\":\"https:\\/\\/t.me\\/blog\",\"active\":true,\"id\":2}',NULL,'2023-12-05 14:48:35','2023-12-05 14:48:35'),
(348,'Resource','Our Social Created by Ndachi Mugo','App\\Models\\OurSocial','Created',3,'App\\Models\\User',1,'{\"platform\":\"LinkedIn\",\"link\":\"https:\\/\\/linkedin.com\\/in\\/blog\",\"active\":true,\"id\":3}',NULL,'2023-12-05 14:49:03','2023-12-05 14:49:03'),
(349,'Resource','User Created','App\\Models\\User','Created',2,NULL,NULL,'{\"name\":\"Admin\",\"email\":\"admin@admin.dev\",\"slug\":\"admin\",\"updated_at\":\"2023-12-06 01:28:56\",\"created_at\":\"2023-12-06 01:28:56\",\"id\":2}',NULL,'2023-12-05 22:28:56','2023-12-05 22:28:56'),
(350,'Notification','VerifyEmail Notification sent to admin@admin.dev',NULL,'Notification Sent',NULL,NULL,NULL,'[]',NULL,'2023-12-05 22:29:05','2023-12-05 22:29:05'),
(351,'Access','Admin logged in',NULL,'Login',NULL,'App\\Models\\User',2,'{\"ip\":\"127.0.0.1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/119.0.0.0 Safari\\/537.36\"}',NULL,'2023-12-05 22:29:05','2023-12-05 22:29:05'),
(352,'Resource','User Updated by Admin','App\\Models\\User','Updated',2,'App\\Models\\User',2,'{\"email_verified_at\":\"2023-12-06 01:30:00\",\"updated_at\":\"2023-12-06 01:30:00\"}',NULL,'2023-12-05 22:30:00','2023-12-05 22:30:00'),
(353,'Access','Ndachi Mugo logged in',NULL,'Login',NULL,'App\\Models\\User',1,'{\"ip\":\"127.0.0.1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/119.0.0.0 Safari\\/537.36\"}',NULL,'2023-12-05 22:30:23','2023-12-05 22:30:23'),
(354,'Resource','User Updated by Ndachi Mugo','App\\Models\\User','Updated',2,'App\\Models\\User',1,'{\"updated_at\":\"2023-12-06 01:34:44\",\"bio\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer quis est porta, lobortis urna et, posuere nibh. Praesent id elit eget lacus eleifend malesuada. Curabitur venenatis leo vel mauris aliquet elementum. Morbi aliquet aliquam lectus non consequat. Praesent tristique tellus lacus, ac hendrerit ligula interdum id. Duis id rutrum tellus. Suspendisse nulla leo, venenatis sit amet vehicula nec, tempus ut diam. Nam tempus tortor non magna aliquam congue. Pellentesque ornare turpis et enim ullamcorper, quis dignissim tellus molestie. Nullam pulvinar dolor in bibendum laoreet. Nullam pellentesque gravida nisi, id ullamcorper dolor accumsan nec.<\\/p>\"}',NULL,'2023-12-05 22:34:44','2023-12-05 22:34:44'),
(355,'Resource','Article Created by Ndachi Mugo','App\\Models\\Article','Created',2,'App\\Models\\User',1,'{\"title\":\"Etiam iaculis justo at ipsum porttitor pretium\",\"body\":\"<h2>Lorem ipsum dolor sit amet,<\\/h2><h3>&nbsp;consectetur adipiscing elit. Integer odio lorem,&nbsp;<\\/h3><ul><li>euismod sit amet odio sed, pellentesque commodo urna.&nbsp;<\\/li><li>Maecenas finibus iaculis est sed rutrum.&nbsp;<\\/li><li>Maecenas ac enim interdum, tempor nisl in, iaculis leo.&nbsp;<\\/li><li>Vivamus non sollicitudin mauris.&nbsp;<\\/li><\\/ul><p>In molestie, lorem convallis auctor venenatis, ante nulla pretium nunc, id lacinia mi libero vel dui. Phasellus risus risus, maximus a mauris eget, malesuada fringilla mauris. Integer a dui non ligula aliquam mollis. In hendrerit mollis est, nec venenatis odio. Pellentesque dui quam, placerat vel congue nec, venenatis nec nunc. Nulla dignissim nisl non dui aliquet sollicitudin.<\\/p><blockquote>Etiam iaculis justo at ipsum porttitor pretium. Sed eros urna, imperdiet at dui eget, placerat molestie elit. In eu rutrum magna. Pellentesque venenatis nisl sed rutrum cursus. Etiam pharetra massa elit. Aliquam imperdiet venenatis lectus, eu molestie lectus facilisis vel. In hac habitasse platea dictumst.&nbsp;<\\/blockquote><pre>Cras eu lacus a ligula vestibulum ornare. Mauris porttitor est urna, \\nsed gravida lectus malesuada at. Morbi sit amet felis tincidunt, pulvinar \\nmetus sit amet, congue urna. In luctus convallis feugiat.<\\/pre><p>Nam in justo nec est lobortis viverra a vitae felis. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Curabitur ac sem mollis, vulputate augue sed, bibendum lectus. Phasellus tincidunt finibus nisl ac tempor. Cras malesuada volutpat ex ut vulputate. Sed blandit pretium felis, at ultricies nulla malesuada volutpat. Sed nisi erat, aliquet et est ut, egestas gravida neque. Nam efficitur sit amet magna a rhoncus. Etiam sed rhoncus ante. Fusce massa justo, tempus sit amet varius et, aliquam quis magna. Mauris accumsan, elit sed egestas rutrum, est tortor iaculis dolor, et iaculis dui nulla ut nibh. Nulla molestie augue ac metus porttitor viverra. Integer sollicitudin consectetur tortor vitae consequat. Quisque feugiat pulvinar velit, eget ornare magna interdum id.<\\/p><p>Cras hendrerit, metus in pretium congue, lorem orci laoreet nibh, in fringilla tortor purus suscipit dolor. Maecenas faucibus eu tortor vitae porttitor. Morbi faucibus aliquam eros sed maximus. Fusce nec volutpat orci. In dapibus ligula id enim dignissim dignissim. Donec dictum quis lorem in molestie. Sed at sagittis elit. Duis at libero nec ipsum rutrum malesuada sed at erat. Praesent efficitur, lorem vel mattis elementum, mauris enim sollicitudin ante, vitae consectetur arcu erat at magna. Integer posuere vel massa eu luctus.<\\/p><p>Sed ultrices bibendum rutrum. Etiam non molestie metus, in venenatis velit. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Sed iaculis, turpis at varius vehicula, orci est convallis orci, non iaculis ex massa quis sem. Sed est mi, tincidunt ut eros viverra, suscipit dapibus nulla. Maecenas massa velit, suscipit ac enim eget, mollis posuere mi. Sed elementum sapien vitae nibh ornare vulputate. Fusce fermentum felis vitae orci ullamcorper, ac pulvinar erat feugiat. Ut facilisis facilisis metus, accumsan posuere metus ornare sed. Donec a metus tempus, interdum sapien nec, interdum nibh. Donec at semper lectus, id euismod velit. Fusce et lectus hendrerit, mattis orci nec, laoreet orci. Pellentesque eget ultrices massa. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam urna dolor, mollis quis luctus in, tincidunt nec arcu. Quisque quis dui leo.<\\/p><p>Nulla nec nunc gravida, placerat felis id, luctus purus. Ut condimentum vitae ligula ac lacinia. Morbi placerat velit at nisl sollicitudin iaculis. Nulla ac ante in lectus pellentesque porttitor. Fusce eget lacus sit amet enim tristique tristique. Cras nec nibh euismod, tempus sem ut, fringilla sem. Integer id mi vestibulum, pharetra felis vitae, egestas purus. Nam neque mauris, hendrerit in magna nec, ultrices pellentesque massa. Cras ultrices, sapien non rutrum imperdiet, sapien lacus iaculis sem, quis blandit sapien sapien at ligula. Proin vel condimentum neque. Ut pharetra neque turpis, et fringilla sapien lacinia at.<\\/p><p>Donec congue mauris vitae enim varius, quis sollicitudin nulla vehicula. Proin rhoncus quam et risus blandit, vel pulvinar magna mollis. Donec id ante quis ipsum tincidunt aliquet. Vestibulum pellentesque vel quam vitae tempus. Aenean risus felis, porta quis nibh nec, fermentum egestas dui. Vivamus vulputate vestibulum tortor non aliquam. Lorem ipsum dolor sit amet, consectetur adipiscing elit.<\\/p><p>Nullam vehicula vitae nunc et convallis. Vivamus egestas sem in urna commodo, nec mattis felis aliquam. Maecenas aliquet diam nec dolor ultrices, nec eleifend justo tempor. Maecenas at gravida ipsum, id dapibus felis. Quisque at maximus felis, quis imperdiet nulla. Donec ultricies cursus sem hendrerit ultricies. Vestibulum rutrum lacus nisl, eget sodales orci elementum sit amet. Nam auctor a sem a viverra. Mauris id lacus in lectus rhoncus efficitur sit amet sed tortor. Cras et fermentum neque. Proin placerat diam id convallis euismod. Praesent eget vestibulum dolor.<\\/p><p>Morbi id gravida metus. Quisque egestas quam nec ullamcorper pharetra. Vestibulum cursus libero et nisi rutrum aliquam. Aliquam porta risus quis pellentesque tincidunt. Phasellus et tristique tortor, vel fringilla urna. Vivamus sit amet pulvinar urna. Etiam vitae ligula vel arcu finibus luctus nec sed erat. Nunc facilisis, nunc vitae fringilla ultrices, leo libero imperdiet lacus, vel accumsan lacus nisl vel diam. Cras suscipit, ex ac tincidunt bibendum, odio tortor pharetra eros, at volutpat mauris tortor sed est. Suspendisse eu tincidunt tortor. Sed id mollis purus, eu imperdiet nunc. Sed congue dolor et ipsum efficitur fringilla. In sagittis, felis non accumsan luctus, nisl quam fermentum leo, eget mollis metus tortor sit amet nisi. Nam rhoncus facilisis neque id lobortis. Vivamus et urna nisl.<\\/p><p>Aliquam libero nisl, mollis maximus ullamcorper varius, lacinia at diam. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Duis mollis tortor efficitur augue suscipit, tincidunt pretium massa tempor. Quisque auctor massa urna. Integer luctus faucibus ipsum vel scelerisque. Morbi luctus diam nunc. Vivamus cursus magna vel dui sodales imperdiet. Proin ut fringilla tellus, et feugiat nunc. Curabitur commodo condimentum odio id hendrerit.<\\/p><p><br><br><\\/p>\",\"meta_title\":null,\"meta_description\":null,\"scheduled_for\":null,\"status\":\"published\",\"author_id\":\"2\",\"editor_id\":\"2\",\"published_at\":\"2023-12-06 01:40:43\",\"slug\":\"etiam-iaculis-justo-at-ipsum-porttitor-pretium\",\"updated_at\":\"2023-12-06 01:40:43\",\"created_at\":\"2023-12-06 01:40:43\",\"id\":2}',NULL,'2023-12-05 22:40:43','2023-12-05 22:40:43'),
(356,'Resource','Article Created by Ndachi Mugo','App\\Models\\Article','Created',3,'App\\Models\\User',1,'{\"title\":\"Nam in justo nec est lobortis viverra a vitae felis.\",\"body\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer odio lorem, euismod sit amet odio sed, pellentesque commodo urna. Maecenas finibus iaculis est sed rutrum. Maecenas ac enim interdum, tempor nisl in, iaculis leo. Vivamus non sollicitudin mauris. In molestie, lorem convallis auctor venenatis, ante nulla pretium nunc, id lacinia mi libero vel dui. Phasellus risus risus, maximus a mauris eget, malesuada fringilla mauris. Integer a dui non ligula aliquam mollis. In hendrerit mollis est, nec venenatis odio. Pellentesque dui quam, placerat vel congue nec, venenatis nec nunc. Nulla dignissim nisl non dui aliquet sollicitudin.<br><br><\\/p><blockquote>Etiam iaculis justo at ipsum porttitor pretium. Sed eros urna, imperdiet at dui eget, placerat molestie elit. In eu rutrum magna. Pellentesque venenatis nisl sed rutrum cursus. Etiam pharetra massa elit. Aliquam imperdiet venenatis lectus, eu molestie lectus facilisis vel. In hac habitasse platea dictumst. Cras eu lacus a ligula vestibulum ornare. Mauris porttitor est urna, sed gravida lectus malesuada at. Morbi sit amet felis tincidunt, pulvinar metus sit amet, congue urna. In luctus convallis feugiat.<\\/blockquote><p><br>Nam in justo nec est lobortis viverra a vitae felis. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae;&nbsp;<\\/p><p>Curabitur ac sem mollis, vulputate augue sed, bibendum lectus. Phasellus tincidunt finibus nisl ac tempor. Cras malesuada volutpat ex ut vulputate. Sed blandit pretium felis, at ultricies nulla malesuada volutpat. Sed nisi erat, aliquet et est ut, egestas gravida neque.&nbsp;<\\/p><p>Nam efficitur sit amet magna a rhoncus. Etiam sed rhoncus ante. Fusce massa justo, tempus sit amet varius et, aliquam quis magna. Mauris accumsan, elit sed egestas rutrum, est tortor iaculis dolor, et iaculis dui nulla ut nibh. Nulla molestie augue ac metus porttitor viverra.&nbsp;<\\/p><pre>Integer sollicitudin consectetur tortor vitae consequat. \\nQuisque feugiat pulvinar velit, eget ornare magna interdum id.<\\/pre><p><br>Cras hendrerit, metus in pretium congue, lorem orci laoreet nibh, in fringilla tortor purus suscipit dolor. Maecenas faucibus eu tortor vitae porttitor. Morbi faucibus aliquam eros sed maximus. Fusce nec volutpat orci. In dapibus ligula id enim dignissim dignissim. Donec dictum quis lorem in molestie. Sed at sagittis elit. Duis at libero nec ipsum rutrum malesuada sed at erat. Praesent efficitur, lorem vel mattis elementum, mauris enim sollicitudin ante, vitae consectetur arcu erat at magna. Integer posuere vel massa eu luctus.<br><br>Sed ultrices bibendum rutrum. Etiam non molestie metus, in venenatis velit. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Sed iaculis, turpis at varius vehicula, orci est convallis orci, non iaculis ex massa quis sem. Sed est mi, tincidunt ut eros viverra, suscipit dapibus nulla. Maecenas massa velit, suscipit ac enim eget, mollis posuere mi. Sed elementum sapien vitae nibh ornare vulputate. Fusce fermentum felis vitae orci ullamcorper, ac pulvinar erat feugiat. Ut facilisis facilisis metus, accumsan posuere metus ornare sed. Donec a metus tempus, interdum sapien nec, interdum nibh. Donec at semper lectus, id euismod velit. Fusce et lectus hendrerit, mattis orci nec, laoreet orci. Pellentesque eget ultrices massa. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam urna dolor, mollis quis luctus in, tincidunt nec arcu. Quisque quis dui leo.<br><br>Nulla nec nunc gravida, placerat felis id, luctus purus. Ut condimentum vitae ligula ac lacinia. Morbi placerat velit at nisl sollicitudin iaculis. Nulla ac ante in lectus pellentesque porttitor. Fusce eget lacus sit amet enim tristique tristique. Cras nec nibh euismod, tempus sem ut, fringilla sem. Integer id mi vestibulum, pharetra felis vitae, egestas purus. Nam neque mauris, hendrerit in magna nec, ultrices pellentesque massa. Cras ultrices, sapien non rutrum imperdiet, sapien lacus iaculis sem, quis blandit sapien sapien at ligula. Proin vel condimentum neque. Ut pharetra neque turpis, et fringilla sapien lacinia at.<br><br>Donec congue mauris vitae enim varius, quis sollicitudin nulla vehicula. Proin rhoncus quam et risus blandit, vel pulvinar magna mollis. Donec id ante quis ipsum tincidunt aliquet. Vestibulum pellentesque vel quam vitae tempus. Aenean risus felis, porta quis nibh nec, fermentum egestas dui. Vivamus vulputate vestibulum tortor non aliquam. Lorem ipsum dolor sit amet, consectetur adipiscing elit.<br><br>Nullam vehicula vitae nunc et convallis. Vivamus egestas sem in urna commodo, nec mattis felis aliquam. Maecenas aliquet diam nec dolor ultrices, nec eleifend justo tempor. Maecenas at gravida ipsum, id dapibus felis. Quisque at maximus felis, quis imperdiet nulla. Donec ultricies cursus sem hendrerit ultricies. Vestibulum rutrum lacus nisl, eget sodales orci elementum sit amet. Nam auctor a sem a viverra. Mauris id lacus in lectus rhoncus efficitur sit amet sed tortor. Cras et fermentum neque. Proin placerat diam id convallis euismod. Praesent eget vestibulum dolor.<br><br>Morbi id gravida metus. Quisque egestas quam nec ullamcorper pharetra. Vestibulum cursus libero et nisi rutrum aliquam. Aliquam porta risus quis pellentesque tincidunt. Phasellus et tristique tortor, vel fringilla urna. Vivamus sit amet pulvinar urna. Etiam vitae ligula vel arcu finibus luctus nec sed erat. Nunc facilisis, nunc vitae fringilla ultrices, leo libero imperdiet lacus, vel accumsan lacus nisl vel diam. Cras suscipit, ex ac tincidunt bibendum, odio tortor pharetra eros, at volutpat mauris tortor sed est. Suspendisse eu tincidunt tortor. Sed id mollis purus, eu imperdiet nunc. Sed congue dolor et ipsum efficitur fringilla. In sagittis, felis non accumsan luctus, nisl quam fermentum leo, eget mollis metus tortor sit amet nisi. Nam rhoncus facilisis neque id lobortis. Vivamus et urna nisl.<br><br>Aliquam libero nisl, mollis maximus ullamcorper varius, lacinia at diam. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Duis mollis tortor efficitur augue suscipit, tincidunt pretium massa tempor. Quisque auctor massa urna. Integer luctus faucibus ipsum vel scelerisque. Morbi luctus diam nunc. Vivamus cursus magna vel dui sodales imperdiet. Proin ut fringilla tellus, et feugiat nunc. Curabitur commodo condimentum odio id hendrerit.<br><br><br><\\/p>\",\"meta_title\":null,\"meta_description\":null,\"scheduled_for\":null,\"status\":\"published\",\"author_id\":\"2\",\"editor_id\":\"2\",\"published_at\":\"2023-12-06 01:42:29\",\"slug\":\"nam-in-justo-nec-est-lobortis-viverra-a-vitae-felis\",\"updated_at\":\"2023-12-06 01:42:29\",\"created_at\":\"2023-12-06 01:42:29\",\"id\":3}',NULL,'2023-12-05 22:42:29','2023-12-05 22:42:29'),
(357,'Resource','Article Created by Ndachi Mugo','App\\Models\\Article','Created',4,'App\\Models\\User',1,'{\"title\":\"Cras hendrerit, metus in pretium congue\",\"body\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer odio lorem, euismod sit amet odio sed, pellentesque commodo urna. Maecenas finibus iaculis est sed rutrum. Maecenas ac enim interdum, tempor nisl in, iaculis leo. Vivamus non sollicitudin mauris. In molestie, lorem convallis auctor venenatis, ante nulla pretium nunc, id lacinia mi libero vel dui. Phasellus risus risus, maximus a mauris eget, malesuada fringilla mauris. Integer a dui non ligula aliquam mollis. In hendrerit mollis est, nec venenatis odio. Pellentesque dui quam, placerat vel congue nec, venenatis nec nunc. Nulla dignissim nisl non dui aliquet sollicitudin.<br><br>Etiam iaculis justo at ipsum porttitor pretium. Sed eros urna, imperdiet at dui eget, placerat molestie elit. In eu rutrum magna. Pellentesque venenatis nisl sed rutrum cursus. Etiam pharetra massa elit. Aliquam imperdiet venenatis lectus, eu molestie lectus facilisis vel. In hac habitasse platea dictumst. Cras eu lacus a ligula vestibulum ornare. Mauris porttitor est urna, sed gravida lectus malesuada at. Morbi sit amet felis tincidunt, pulvinar metus sit amet, congue urna. In luctus convallis feugiat.<br><br>Nam in justo nec est lobortis viverra a vitae felis. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Curabitur ac sem mollis, vulputate augue sed, bibendum lectus. Phasellus tincidunt finibus nisl ac tempor. Cras malesuada volutpat ex ut vulputate. Sed blandit pretium felis, at ultricies nulla malesuada volutpat. Sed nisi erat, aliquet et est ut, egestas gravida neque. Nam efficitur sit amet magna a rhoncus. Etiam sed rhoncus ante. Fusce massa justo, tempus sit amet varius et, aliquam quis magna. Mauris accumsan, elit sed egestas rutrum, est tortor iaculis dolor, et iaculis dui nulla ut nibh. Nulla molestie augue ac metus porttitor viverra. Integer sollicitudin consectetur tortor vitae consequat. Quisque feugiat pulvinar velit, eget ornare magna interdum id.<br><br>Cras hendrerit, metus in pretium congue, lorem orci laoreet nibh, in fringilla tortor purus suscipit dolor. Maecenas faucibus eu tortor vitae porttitor. Morbi faucibus aliquam eros sed maximus. Fusce nec volutpat orci. In dapibus ligula id enim dignissim dignissim. Donec dictum quis lorem in molestie. Sed at sagittis elit. Duis at libero nec ipsum rutrum malesuada sed at erat. Praesent efficitur, lorem vel mattis elementum, mauris enim sollicitudin ante, vitae consectetur arcu erat at magna. Integer posuere vel massa eu luctus.<br><br>Sed ultrices bibendum rutrum. Etiam non molestie metus, in venenatis velit. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Sed iaculis, turpis at varius vehicula, orci est convallis orci, non iaculis ex massa quis sem. Sed est mi, tincidunt ut eros viverra, suscipit dapibus nulla. Maecenas massa velit, suscipit ac enim eget, mollis posuere mi. Sed elementum sapien vitae nibh ornare vulputate. Fusce fermentum felis vitae orci ullamcorper, ac pulvinar erat feugiat. Ut facilisis facilisis metus, accumsan posuere metus ornare sed. Donec a metus tempus, interdum sapien nec, interdum nibh. Donec at semper lectus, id euismod velit. Fusce et lectus hendrerit, mattis orci nec, laoreet orci. Pellentesque eget ultrices massa. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam urna dolor, mollis quis luctus in, tincidunt nec arcu. Quisque quis dui leo.<br><br>Nulla nec nunc gravida, placerat felis id, luctus purus. Ut condimentum vitae ligula ac lacinia. Morbi placerat velit at nisl sollicitudin iaculis. Nulla ac ante in lectus pellentesque porttitor. Fusce eget lacus sit amet enim tristique tristique. Cras nec nibh euismod, tempus sem ut, fringilla sem. Integer id mi vestibulum, pharetra felis vitae, egestas purus. Nam neque mauris, hendrerit in magna nec, ultrices pellentesque massa. Cras ultrices, sapien non rutrum imperdiet, sapien lacus iaculis sem, quis blandit sapien sapien at ligula. Proin vel condimentum neque. Ut pharetra neque turpis, et fringilla sapien lacinia at.<br><br>Donec congue mauris vitae enim varius, quis sollicitudin nulla vehicula. Proin rhoncus quam et risus blandit, vel pulvinar magna mollis. Donec id ante quis ipsum tincidunt aliquet. Vestibulum pellentesque vel quam vitae tempus. Aenean risus felis, porta quis nibh nec, fermentum egestas dui. Vivamus vulputate vestibulum tortor non aliquam. Lorem ipsum dolor sit amet, consectetur adipiscing elit.<br><br>Nullam vehicula vitae nunc et convallis. Vivamus egestas sem in urna commodo, nec mattis felis aliquam. Maecenas aliquet diam nec dolor ultrices, nec eleifend justo tempor. Maecenas at gravida ipsum, id dapibus felis. Quisque at maximus felis, quis imperdiet nulla. Donec ultricies cursus sem hendrerit ultricies. Vestibulum rutrum lacus nisl, eget sodales orci elementum sit amet. Nam auctor a sem a viverra. Mauris id lacus in lectus rhoncus efficitur sit amet sed tortor. Cras et fermentum neque. Proin placerat diam id convallis euismod. Praesent eget vestibulum dolor.<br><br>Morbi id gravida metus. Quisque egestas quam nec ullamcorper pharetra. Vestibulum cursus libero et nisi rutrum aliquam. Aliquam porta risus quis pellentesque tincidunt. Phasellus et tristique tortor, vel fringilla urna. Vivamus sit amet pulvinar urna. Etiam vitae ligula vel arcu finibus luctus nec sed erat. Nunc facilisis, nunc vitae fringilla ultrices, leo libero imperdiet lacus, vel accumsan lacus nisl vel diam. Cras suscipit, ex ac tincidunt bibendum, odio tortor pharetra eros, at volutpat mauris tortor sed est. Suspendisse eu tincidunt tortor. Sed id mollis purus, eu imperdiet nunc. Sed congue dolor et ipsum efficitur fringilla. In sagittis, felis non accumsan luctus, nisl quam fermentum leo, eget mollis metus tortor sit amet nisi. Nam rhoncus facilisis neque id lobortis. Vivamus et urna nisl.<br><br>Aliquam libero nisl, mollis maximus ullamcorper varius, lacinia at diam. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Duis mollis tortor efficitur augue suscipit, tincidunt pretium massa tempor. Quisque auctor massa urna. Integer luctus faucibus ipsum vel scelerisque. Morbi luctus diam nunc. Vivamus cursus magna vel dui sodales imperdiet. Proin ut fringilla tellus, et feugiat nunc. Curabitur commodo condimentum odio id hendrerit.<br><br><br><\\/p>\",\"meta_title\":null,\"meta_description\":null,\"scheduled_for\":null,\"status\":\"published\",\"author_id\":\"2\",\"editor_id\":\"2\",\"published_at\":\"2023-12-06 01:43:15\",\"slug\":\"cras-hendrerit-metus-in-pretium-congue\",\"updated_at\":\"2023-12-06 01:43:15\",\"created_at\":\"2023-12-06 01:43:15\",\"id\":4}',NULL,'2023-12-05 22:43:15','2023-12-05 22:43:15'),
(358,'Access','Admin logged in',NULL,'Login',NULL,'App\\Models\\User',2,'{\"ip\":\"127.0.0.1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/119.0.0.0 Safari\\/537.36\"}',NULL,'2023-12-05 22:43:55','2023-12-05 22:43:55');
/*!40000 ALTER TABLE `activity_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `article_category`
--

DROP TABLE IF EXISTS `article_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `article_category` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `article_id` bigint(20) unsigned NOT NULL,
  `category_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `article_category_article_id_foreign` (`article_id`),
  KEY `article_category_category_id_foreign` (`category_id`),
  CONSTRAINT `article_category_article_id_foreign` FOREIGN KEY (`article_id`) REFERENCES `articles` (`id`) ON DELETE CASCADE,
  CONSTRAINT `article_category_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `article_category`
--

LOCK TABLES `article_category` WRITE;
/*!40000 ALTER TABLE `article_category` DISABLE KEYS */;
INSERT INTO `article_category` VALUES
(1,1,4),
(2,2,4),
(3,2,2),
(4,3,4),
(5,3,2),
(6,3,3),
(7,4,4),
(8,4,2),
(9,4,3),
(10,4,1);
/*!40000 ALTER TABLE `article_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `article_location`
--

DROP TABLE IF EXISTS `article_location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `article_location` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `article_id` bigint(20) unsigned NOT NULL,
  `location_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `article_location_article_id_foreign` (`article_id`),
  KEY `article_location_location_id_foreign` (`location_id`),
  CONSTRAINT `article_location_article_id_foreign` FOREIGN KEY (`article_id`) REFERENCES `articles` (`id`) ON DELETE CASCADE,
  CONSTRAINT `article_location_location_id_foreign` FOREIGN KEY (`location_id`) REFERENCES `locations` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `article_location`
--

LOCK TABLES `article_location` WRITE;
/*!40000 ALTER TABLE `article_location` DISABLE KEYS */;
INSERT INTO `article_location` VALUES
(1,1,1),
(2,2,1),
(3,2,4),
(4,3,1),
(5,3,4),
(6,3,2),
(7,4,1),
(8,4,4),
(9,4,2),
(10,4,3);
/*!40000 ALTER TABLE `article_location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `article_views`
--

DROP TABLE IF EXISTS `article_views`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `article_views` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(55) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `article_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `article_views_article_id_foreign` (`article_id`),
  KEY `article_views_user_id_foreign` (`user_id`),
  CONSTRAINT `article_views_article_id_foreign` FOREIGN KEY (`article_id`) REFERENCES `articles` (`id`),
  CONSTRAINT `article_views_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `article_views`
--

LOCK TABLES `article_views` WRITE;
/*!40000 ALTER TABLE `article_views` DISABLE KEYS */;
INSERT INTO `article_views` VALUES
(1,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36',1,1,'2023-12-05 14:43:55','2023-12-05 14:43:55'),
(2,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36',1,1,'2023-12-05 14:50:00','2023-12-05 14:50:00'),
(3,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36',1,1,'2023-12-05 14:51:54','2023-12-05 14:51:54'),
(4,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36',1,1,'2023-12-05 22:33:39','2023-12-05 22:33:39'),
(5,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36',1,1,'2023-12-05 22:33:46','2023-12-05 22:33:46'),
(6,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36',2,2,'2023-12-05 22:45:13','2023-12-05 22:45:13'),
(7,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36',1,2,'2023-12-05 22:45:38','2023-12-05 22:45:38'),
(8,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36',2,2,'2023-12-05 22:46:05','2023-12-05 22:46:05');
/*!40000 ALTER TABLE `article_views` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `articles`
--

DROP TABLE IF EXISTS `articles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `articles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(2048) NOT NULL,
  `slug` varchar(2048) NOT NULL,
  `body` longtext NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'draft',
  `published_at` datetime DEFAULT NULL,
  `scheduled_for` datetime DEFAULT NULL,
  `author_id` bigint(20) unsigned NOT NULL,
  `editor_id` bigint(20) unsigned NOT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `articles_author_id_foreign` (`author_id`),
  KEY `articles_editor_id_foreign` (`editor_id`),
  CONSTRAINT `articles_author_id_foreign` FOREIGN KEY (`author_id`) REFERENCES `users` (`id`),
  CONSTRAINT `articles_editor_id_foreign` FOREIGN KEY (`editor_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articles`
--

LOCK TABLES `articles` WRITE;
/*!40000 ALTER TABLE `articles` DISABLE KEYS */;
INSERT INTO `articles` VALUES
(1,'Praesent scelerisque metus vel auctor consectetur','praesent-scelerisque-metus-vel-auctor-consectetur','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer quis est porta, lobortis urna et, posuere nibh. Praesent id elit eget lacus eleifend malesuada. Curabitur venenatis leo vel mauris aliquet elementum. Morbi aliquet aliquam lectus non consequat. Praesent tristique tellus lacus, ac hendrerit ligula interdum id. Duis id rutrum tellus. Suspendisse nulla leo, venenatis sit amet vehicula nec, tempus ut diam. Nam tempus tortor non magna aliquam congue. Pellentesque ornare turpis et enim ullamcorper, quis dignissim tellus molestie. Nullam pulvinar dolor in bibendum laoreet. Nullam pellentesque gravida nisi, id ullamcorper dolor accumsan nec.</p><p>Praesent scelerisque metus vel auctor consectetur. Donec fringilla lacinia orci, vel aliquet nunc dapibus at. Aenean enim purus, suscipit ut ornare id, finibus eget quam. In hac habitasse platea dictumst. Pellentesque vel ex justo. Ut et nibh at turpis egestas egestas. Ut a metus laoreet, tempus tellus auctor, pharetra mauris. Mauris sollicitudin sit amet erat a pretium. Sed eget odio porttitor, sollicitudin orci sed, luctus metus. Fusce elementum hendrerit nibh.</p><p>Nulla facilisi. Aliquam maximus eros id consectetur dapibus. Aliquam suscipit ipsum id ex pulvinar facilisis. Nam in quam pellentesque, lacinia ligula vel, consectetur mi. Vestibulum sed leo a metus maximus fermentum. Aliquam nec molestie eros. Duis sed tellus id quam maximus rhoncus at id leo. Aenean malesuada, velit eu rhoncus volutpat, sem neque volutpat nulla, id fringilla sem nisi ac nunc.</p><p>Vivamus fringilla, ante sit amet hendrerit cursus, purus risus finibus tellus, vel condimentum elit tellus ac lorem. In non luctus magna, in commodo mi. Etiam euismod nec dui in elementum. Fusce gravida elit eros, nec aliquam ex faucibus vel. Nam non urna eu felis imperdiet congue. Sed egestas congue tincidunt. Quisque eget nisi non elit fringilla blandit. Phasellus semper ex sed nisi tincidunt, vel efficitur purus lobortis. Quisque sem lorem, volutpat at egestas ac, tincidunt vitae lectus. Vestibulum vitae nisl at lorem gravida suscipit.</p><p>Donec nec tortor ac massa posuere iaculis ac ut lectus. Vestibulum quis nulla mauris. Praesent nibh eros, tempus sit amet egestas in, mattis et lorem. Ut nec arcu convallis, faucibus urna eget, congue urna. Sed efficitur auctor leo ac blandit. Cras pellentesque, tortor in faucibus rhoncus, nisi nisl suscipit risus, eget tristique risus est eu eros. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Morbi rhoncus dui justo, at dictum odio lobortis non. Phasellus dapibus quam vitae laoreet tristique. Aenean feugiat pharetra ullamcorper. Nam ultrices hendrerit magna, ut varius ante feugiat et. Duis bibendum auctor nulla, ac sollicitudin mauris bibendum quis.</p>','published','2023-12-05 17:42:58',NULL,1,1,NULL,NULL,NULL,'2023-12-05 14:42:58','2023-12-05 14:42:58'),
(2,'Etiam iaculis justo at ipsum porttitor pretium','etiam-iaculis-justo-at-ipsum-porttitor-pretium','<h2>Lorem ipsum dolor sit amet,</h2><h3>&nbsp;consectetur adipiscing elit. Integer odio lorem,&nbsp;</h3><ul><li>euismod sit amet odio sed, pellentesque commodo urna.&nbsp;</li><li>Maecenas finibus iaculis est sed rutrum.&nbsp;</li><li>Maecenas ac enim interdum, tempor nisl in, iaculis leo.&nbsp;</li><li>Vivamus non sollicitudin mauris.&nbsp;</li></ul><p>In molestie, lorem convallis auctor venenatis, ante nulla pretium nunc, id lacinia mi libero vel dui. Phasellus risus risus, maximus a mauris eget, malesuada fringilla mauris. Integer a dui non ligula aliquam mollis. In hendrerit mollis est, nec venenatis odio. Pellentesque dui quam, placerat vel congue nec, venenatis nec nunc. Nulla dignissim nisl non dui aliquet sollicitudin.</p><blockquote>Etiam iaculis justo at ipsum porttitor pretium. Sed eros urna, imperdiet at dui eget, placerat molestie elit. In eu rutrum magna. Pellentesque venenatis nisl sed rutrum cursus. Etiam pharetra massa elit. Aliquam imperdiet venenatis lectus, eu molestie lectus facilisis vel. In hac habitasse platea dictumst.&nbsp;</blockquote><pre>Cras eu lacus a ligula vestibulum ornare. Mauris porttitor est urna, \nsed gravida lectus malesuada at. Morbi sit amet felis tincidunt, pulvinar \nmetus sit amet, congue urna. In luctus convallis feugiat.</pre><p>Nam in justo nec est lobortis viverra a vitae felis. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Curabitur ac sem mollis, vulputate augue sed, bibendum lectus. Phasellus tincidunt finibus nisl ac tempor. Cras malesuada volutpat ex ut vulputate. Sed blandit pretium felis, at ultricies nulla malesuada volutpat. Sed nisi erat, aliquet et est ut, egestas gravida neque. Nam efficitur sit amet magna a rhoncus. Etiam sed rhoncus ante. Fusce massa justo, tempus sit amet varius et, aliquam quis magna. Mauris accumsan, elit sed egestas rutrum, est tortor iaculis dolor, et iaculis dui nulla ut nibh. Nulla molestie augue ac metus porttitor viverra. Integer sollicitudin consectetur tortor vitae consequat. Quisque feugiat pulvinar velit, eget ornare magna interdum id.</p><p>Cras hendrerit, metus in pretium congue, lorem orci laoreet nibh, in fringilla tortor purus suscipit dolor. Maecenas faucibus eu tortor vitae porttitor. Morbi faucibus aliquam eros sed maximus. Fusce nec volutpat orci. In dapibus ligula id enim dignissim dignissim. Donec dictum quis lorem in molestie. Sed at sagittis elit. Duis at libero nec ipsum rutrum malesuada sed at erat. Praesent efficitur, lorem vel mattis elementum, mauris enim sollicitudin ante, vitae consectetur arcu erat at magna. Integer posuere vel massa eu luctus.</p><p>Sed ultrices bibendum rutrum. Etiam non molestie metus, in venenatis velit. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Sed iaculis, turpis at varius vehicula, orci est convallis orci, non iaculis ex massa quis sem. Sed est mi, tincidunt ut eros viverra, suscipit dapibus nulla. Maecenas massa velit, suscipit ac enim eget, mollis posuere mi. Sed elementum sapien vitae nibh ornare vulputate. Fusce fermentum felis vitae orci ullamcorper, ac pulvinar erat feugiat. Ut facilisis facilisis metus, accumsan posuere metus ornare sed. Donec a metus tempus, interdum sapien nec, interdum nibh. Donec at semper lectus, id euismod velit. Fusce et lectus hendrerit, mattis orci nec, laoreet orci. Pellentesque eget ultrices massa. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam urna dolor, mollis quis luctus in, tincidunt nec arcu. Quisque quis dui leo.</p><p>Nulla nec nunc gravida, placerat felis id, luctus purus. Ut condimentum vitae ligula ac lacinia. Morbi placerat velit at nisl sollicitudin iaculis. Nulla ac ante in lectus pellentesque porttitor. Fusce eget lacus sit amet enim tristique tristique. Cras nec nibh euismod, tempus sem ut, fringilla sem. Integer id mi vestibulum, pharetra felis vitae, egestas purus. Nam neque mauris, hendrerit in magna nec, ultrices pellentesque massa. Cras ultrices, sapien non rutrum imperdiet, sapien lacus iaculis sem, quis blandit sapien sapien at ligula. Proin vel condimentum neque. Ut pharetra neque turpis, et fringilla sapien lacinia at.</p><p>Donec congue mauris vitae enim varius, quis sollicitudin nulla vehicula. Proin rhoncus quam et risus blandit, vel pulvinar magna mollis. Donec id ante quis ipsum tincidunt aliquet. Vestibulum pellentesque vel quam vitae tempus. Aenean risus felis, porta quis nibh nec, fermentum egestas dui. Vivamus vulputate vestibulum tortor non aliquam. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p><p>Nullam vehicula vitae nunc et convallis. Vivamus egestas sem in urna commodo, nec mattis felis aliquam. Maecenas aliquet diam nec dolor ultrices, nec eleifend justo tempor. Maecenas at gravida ipsum, id dapibus felis. Quisque at maximus felis, quis imperdiet nulla. Donec ultricies cursus sem hendrerit ultricies. Vestibulum rutrum lacus nisl, eget sodales orci elementum sit amet. Nam auctor a sem a viverra. Mauris id lacus in lectus rhoncus efficitur sit amet sed tortor. Cras et fermentum neque. Proin placerat diam id convallis euismod. Praesent eget vestibulum dolor.</p><p>Morbi id gravida metus. Quisque egestas quam nec ullamcorper pharetra. Vestibulum cursus libero et nisi rutrum aliquam. Aliquam porta risus quis pellentesque tincidunt. Phasellus et tristique tortor, vel fringilla urna. Vivamus sit amet pulvinar urna. Etiam vitae ligula vel arcu finibus luctus nec sed erat. Nunc facilisis, nunc vitae fringilla ultrices, leo libero imperdiet lacus, vel accumsan lacus nisl vel diam. Cras suscipit, ex ac tincidunt bibendum, odio tortor pharetra eros, at volutpat mauris tortor sed est. Suspendisse eu tincidunt tortor. Sed id mollis purus, eu imperdiet nunc. Sed congue dolor et ipsum efficitur fringilla. In sagittis, felis non accumsan luctus, nisl quam fermentum leo, eget mollis metus tortor sit amet nisi. Nam rhoncus facilisis neque id lobortis. Vivamus et urna nisl.</p><p>Aliquam libero nisl, mollis maximus ullamcorper varius, lacinia at diam. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Duis mollis tortor efficitur augue suscipit, tincidunt pretium massa tempor. Quisque auctor massa urna. Integer luctus faucibus ipsum vel scelerisque. Morbi luctus diam nunc. Vivamus cursus magna vel dui sodales imperdiet. Proin ut fringilla tellus, et feugiat nunc. Curabitur commodo condimentum odio id hendrerit.</p><p><br><br></p>','published','2023-12-06 01:40:43',NULL,2,2,NULL,NULL,NULL,'2023-12-05 22:40:43','2023-12-05 22:40:43'),
(3,'Nam in justo nec est lobortis viverra a vitae felis.','nam-in-justo-nec-est-lobortis-viverra-a-vitae-felis','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer odio lorem, euismod sit amet odio sed, pellentesque commodo urna. Maecenas finibus iaculis est sed rutrum. Maecenas ac enim interdum, tempor nisl in, iaculis leo. Vivamus non sollicitudin mauris. In molestie, lorem convallis auctor venenatis, ante nulla pretium nunc, id lacinia mi libero vel dui. Phasellus risus risus, maximus a mauris eget, malesuada fringilla mauris. Integer a dui non ligula aliquam mollis. In hendrerit mollis est, nec venenatis odio. Pellentesque dui quam, placerat vel congue nec, venenatis nec nunc. Nulla dignissim nisl non dui aliquet sollicitudin.<br><br></p><blockquote>Etiam iaculis justo at ipsum porttitor pretium. Sed eros urna, imperdiet at dui eget, placerat molestie elit. In eu rutrum magna. Pellentesque venenatis nisl sed rutrum cursus. Etiam pharetra massa elit. Aliquam imperdiet venenatis lectus, eu molestie lectus facilisis vel. In hac habitasse platea dictumst. Cras eu lacus a ligula vestibulum ornare. Mauris porttitor est urna, sed gravida lectus malesuada at. Morbi sit amet felis tincidunt, pulvinar metus sit amet, congue urna. In luctus convallis feugiat.</blockquote><p><br>Nam in justo nec est lobortis viverra a vitae felis. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae;&nbsp;</p><p>Curabitur ac sem mollis, vulputate augue sed, bibendum lectus. Phasellus tincidunt finibus nisl ac tempor. Cras malesuada volutpat ex ut vulputate. Sed blandit pretium felis, at ultricies nulla malesuada volutpat. Sed nisi erat, aliquet et est ut, egestas gravida neque.&nbsp;</p><p>Nam efficitur sit amet magna a rhoncus. Etiam sed rhoncus ante. Fusce massa justo, tempus sit amet varius et, aliquam quis magna. Mauris accumsan, elit sed egestas rutrum, est tortor iaculis dolor, et iaculis dui nulla ut nibh. Nulla molestie augue ac metus porttitor viverra.&nbsp;</p><pre>Integer sollicitudin consectetur tortor vitae consequat. \nQuisque feugiat pulvinar velit, eget ornare magna interdum id.</pre><p><br>Cras hendrerit, metus in pretium congue, lorem orci laoreet nibh, in fringilla tortor purus suscipit dolor. Maecenas faucibus eu tortor vitae porttitor. Morbi faucibus aliquam eros sed maximus. Fusce nec volutpat orci. In dapibus ligula id enim dignissim dignissim. Donec dictum quis lorem in molestie. Sed at sagittis elit. Duis at libero nec ipsum rutrum malesuada sed at erat. Praesent efficitur, lorem vel mattis elementum, mauris enim sollicitudin ante, vitae consectetur arcu erat at magna. Integer posuere vel massa eu luctus.<br><br>Sed ultrices bibendum rutrum. Etiam non molestie metus, in venenatis velit. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Sed iaculis, turpis at varius vehicula, orci est convallis orci, non iaculis ex massa quis sem. Sed est mi, tincidunt ut eros viverra, suscipit dapibus nulla. Maecenas massa velit, suscipit ac enim eget, mollis posuere mi. Sed elementum sapien vitae nibh ornare vulputate. Fusce fermentum felis vitae orci ullamcorper, ac pulvinar erat feugiat. Ut facilisis facilisis metus, accumsan posuere metus ornare sed. Donec a metus tempus, interdum sapien nec, interdum nibh. Donec at semper lectus, id euismod velit. Fusce et lectus hendrerit, mattis orci nec, laoreet orci. Pellentesque eget ultrices massa. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam urna dolor, mollis quis luctus in, tincidunt nec arcu. Quisque quis dui leo.<br><br>Nulla nec nunc gravida, placerat felis id, luctus purus. Ut condimentum vitae ligula ac lacinia. Morbi placerat velit at nisl sollicitudin iaculis. Nulla ac ante in lectus pellentesque porttitor. Fusce eget lacus sit amet enim tristique tristique. Cras nec nibh euismod, tempus sem ut, fringilla sem. Integer id mi vestibulum, pharetra felis vitae, egestas purus. Nam neque mauris, hendrerit in magna nec, ultrices pellentesque massa. Cras ultrices, sapien non rutrum imperdiet, sapien lacus iaculis sem, quis blandit sapien sapien at ligula. Proin vel condimentum neque. Ut pharetra neque turpis, et fringilla sapien lacinia at.<br><br>Donec congue mauris vitae enim varius, quis sollicitudin nulla vehicula. Proin rhoncus quam et risus blandit, vel pulvinar magna mollis. Donec id ante quis ipsum tincidunt aliquet. Vestibulum pellentesque vel quam vitae tempus. Aenean risus felis, porta quis nibh nec, fermentum egestas dui. Vivamus vulputate vestibulum tortor non aliquam. Lorem ipsum dolor sit amet, consectetur adipiscing elit.<br><br>Nullam vehicula vitae nunc et convallis. Vivamus egestas sem in urna commodo, nec mattis felis aliquam. Maecenas aliquet diam nec dolor ultrices, nec eleifend justo tempor. Maecenas at gravida ipsum, id dapibus felis. Quisque at maximus felis, quis imperdiet nulla. Donec ultricies cursus sem hendrerit ultricies. Vestibulum rutrum lacus nisl, eget sodales orci elementum sit amet. Nam auctor a sem a viverra. Mauris id lacus in lectus rhoncus efficitur sit amet sed tortor. Cras et fermentum neque. Proin placerat diam id convallis euismod. Praesent eget vestibulum dolor.<br><br>Morbi id gravida metus. Quisque egestas quam nec ullamcorper pharetra. Vestibulum cursus libero et nisi rutrum aliquam. Aliquam porta risus quis pellentesque tincidunt. Phasellus et tristique tortor, vel fringilla urna. Vivamus sit amet pulvinar urna. Etiam vitae ligula vel arcu finibus luctus nec sed erat. Nunc facilisis, nunc vitae fringilla ultrices, leo libero imperdiet lacus, vel accumsan lacus nisl vel diam. Cras suscipit, ex ac tincidunt bibendum, odio tortor pharetra eros, at volutpat mauris tortor sed est. Suspendisse eu tincidunt tortor. Sed id mollis purus, eu imperdiet nunc. Sed congue dolor et ipsum efficitur fringilla. In sagittis, felis non accumsan luctus, nisl quam fermentum leo, eget mollis metus tortor sit amet nisi. Nam rhoncus facilisis neque id lobortis. Vivamus et urna nisl.<br><br>Aliquam libero nisl, mollis maximus ullamcorper varius, lacinia at diam. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Duis mollis tortor efficitur augue suscipit, tincidunt pretium massa tempor. Quisque auctor massa urna. Integer luctus faucibus ipsum vel scelerisque. Morbi luctus diam nunc. Vivamus cursus magna vel dui sodales imperdiet. Proin ut fringilla tellus, et feugiat nunc. Curabitur commodo condimentum odio id hendrerit.<br><br><br></p>','published','2023-12-06 01:42:29',NULL,2,2,NULL,NULL,NULL,'2023-12-05 22:42:29','2023-12-05 22:42:29'),
(4,'Cras hendrerit, metus in pretium congue','cras-hendrerit-metus-in-pretium-congue','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer odio lorem, euismod sit amet odio sed, pellentesque commodo urna. Maecenas finibus iaculis est sed rutrum. Maecenas ac enim interdum, tempor nisl in, iaculis leo. Vivamus non sollicitudin mauris. In molestie, lorem convallis auctor venenatis, ante nulla pretium nunc, id lacinia mi libero vel dui. Phasellus risus risus, maximus a mauris eget, malesuada fringilla mauris. Integer a dui non ligula aliquam mollis. In hendrerit mollis est, nec venenatis odio. Pellentesque dui quam, placerat vel congue nec, venenatis nec nunc. Nulla dignissim nisl non dui aliquet sollicitudin.<br><br>Etiam iaculis justo at ipsum porttitor pretium. Sed eros urna, imperdiet at dui eget, placerat molestie elit. In eu rutrum magna. Pellentesque venenatis nisl sed rutrum cursus. Etiam pharetra massa elit. Aliquam imperdiet venenatis lectus, eu molestie lectus facilisis vel. In hac habitasse platea dictumst. Cras eu lacus a ligula vestibulum ornare. Mauris porttitor est urna, sed gravida lectus malesuada at. Morbi sit amet felis tincidunt, pulvinar metus sit amet, congue urna. In luctus convallis feugiat.<br><br>Nam in justo nec est lobortis viverra a vitae felis. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Curabitur ac sem mollis, vulputate augue sed, bibendum lectus. Phasellus tincidunt finibus nisl ac tempor. Cras malesuada volutpat ex ut vulputate. Sed blandit pretium felis, at ultricies nulla malesuada volutpat. Sed nisi erat, aliquet et est ut, egestas gravida neque. Nam efficitur sit amet magna a rhoncus. Etiam sed rhoncus ante. Fusce massa justo, tempus sit amet varius et, aliquam quis magna. Mauris accumsan, elit sed egestas rutrum, est tortor iaculis dolor, et iaculis dui nulla ut nibh. Nulla molestie augue ac metus porttitor viverra. Integer sollicitudin consectetur tortor vitae consequat. Quisque feugiat pulvinar velit, eget ornare magna interdum id.<br><br>Cras hendrerit, metus in pretium congue, lorem orci laoreet nibh, in fringilla tortor purus suscipit dolor. Maecenas faucibus eu tortor vitae porttitor. Morbi faucibus aliquam eros sed maximus. Fusce nec volutpat orci. In dapibus ligula id enim dignissim dignissim. Donec dictum quis lorem in molestie. Sed at sagittis elit. Duis at libero nec ipsum rutrum malesuada sed at erat. Praesent efficitur, lorem vel mattis elementum, mauris enim sollicitudin ante, vitae consectetur arcu erat at magna. Integer posuere vel massa eu luctus.<br><br>Sed ultrices bibendum rutrum. Etiam non molestie metus, in venenatis velit. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Sed iaculis, turpis at varius vehicula, orci est convallis orci, non iaculis ex massa quis sem. Sed est mi, tincidunt ut eros viverra, suscipit dapibus nulla. Maecenas massa velit, suscipit ac enim eget, mollis posuere mi. Sed elementum sapien vitae nibh ornare vulputate. Fusce fermentum felis vitae orci ullamcorper, ac pulvinar erat feugiat. Ut facilisis facilisis metus, accumsan posuere metus ornare sed. Donec a metus tempus, interdum sapien nec, interdum nibh. Donec at semper lectus, id euismod velit. Fusce et lectus hendrerit, mattis orci nec, laoreet orci. Pellentesque eget ultrices massa. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam urna dolor, mollis quis luctus in, tincidunt nec arcu. Quisque quis dui leo.<br><br>Nulla nec nunc gravida, placerat felis id, luctus purus. Ut condimentum vitae ligula ac lacinia. Morbi placerat velit at nisl sollicitudin iaculis. Nulla ac ante in lectus pellentesque porttitor. Fusce eget lacus sit amet enim tristique tristique. Cras nec nibh euismod, tempus sem ut, fringilla sem. Integer id mi vestibulum, pharetra felis vitae, egestas purus. Nam neque mauris, hendrerit in magna nec, ultrices pellentesque massa. Cras ultrices, sapien non rutrum imperdiet, sapien lacus iaculis sem, quis blandit sapien sapien at ligula. Proin vel condimentum neque. Ut pharetra neque turpis, et fringilla sapien lacinia at.<br><br>Donec congue mauris vitae enim varius, quis sollicitudin nulla vehicula. Proin rhoncus quam et risus blandit, vel pulvinar magna mollis. Donec id ante quis ipsum tincidunt aliquet. Vestibulum pellentesque vel quam vitae tempus. Aenean risus felis, porta quis nibh nec, fermentum egestas dui. Vivamus vulputate vestibulum tortor non aliquam. Lorem ipsum dolor sit amet, consectetur adipiscing elit.<br><br>Nullam vehicula vitae nunc et convallis. Vivamus egestas sem in urna commodo, nec mattis felis aliquam. Maecenas aliquet diam nec dolor ultrices, nec eleifend justo tempor. Maecenas at gravida ipsum, id dapibus felis. Quisque at maximus felis, quis imperdiet nulla. Donec ultricies cursus sem hendrerit ultricies. Vestibulum rutrum lacus nisl, eget sodales orci elementum sit amet. Nam auctor a sem a viverra. Mauris id lacus in lectus rhoncus efficitur sit amet sed tortor. Cras et fermentum neque. Proin placerat diam id convallis euismod. Praesent eget vestibulum dolor.<br><br>Morbi id gravida metus. Quisque egestas quam nec ullamcorper pharetra. Vestibulum cursus libero et nisi rutrum aliquam. Aliquam porta risus quis pellentesque tincidunt. Phasellus et tristique tortor, vel fringilla urna. Vivamus sit amet pulvinar urna. Etiam vitae ligula vel arcu finibus luctus nec sed erat. Nunc facilisis, nunc vitae fringilla ultrices, leo libero imperdiet lacus, vel accumsan lacus nisl vel diam. Cras suscipit, ex ac tincidunt bibendum, odio tortor pharetra eros, at volutpat mauris tortor sed est. Suspendisse eu tincidunt tortor. Sed id mollis purus, eu imperdiet nunc. Sed congue dolor et ipsum efficitur fringilla. In sagittis, felis non accumsan luctus, nisl quam fermentum leo, eget mollis metus tortor sit amet nisi. Nam rhoncus facilisis neque id lobortis. Vivamus et urna nisl.<br><br>Aliquam libero nisl, mollis maximus ullamcorper varius, lacinia at diam. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Duis mollis tortor efficitur augue suscipit, tincidunt pretium massa tempor. Quisque auctor massa urna. Integer luctus faucibus ipsum vel scelerisque. Morbi luctus diam nunc. Vivamus cursus magna vel dui sodales imperdiet. Proin ut fringilla tellus, et feugiat nunc. Curabitur commodo condimentum odio id hendrerit.<br><br><br></p>','published','2023-12-06 01:43:15',NULL,2,2,NULL,NULL,NULL,'2023-12-05 22:43:15','2023-12-05 22:43:15');
/*!40000 ALTER TABLE `articles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `breezy_sessions`
--

DROP TABLE IF EXISTS `breezy_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `breezy_sessions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `authenticatable_type` varchar(255) NOT NULL,
  `authenticatable_id` bigint(20) unsigned NOT NULL,
  `panel_id` varchar(255) DEFAULT NULL,
  `guard` varchar(255) DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `two_factor_secret` text DEFAULT NULL,
  `two_factor_recovery_codes` text DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `breezy_sessions`
--

LOCK TABLES `breezy_sessions` WRITE;
/*!40000 ALTER TABLE `breezy_sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `breezy_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `category` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `categories_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES
(1,'Politics','politics',NULL,'2023-12-05 14:28:05','2023-12-05 14:28:05'),
(2,'Health','health',NULL,'2023-12-05 14:29:04','2023-12-05 14:29:33'),
(3,'Lifestyle','lifestyle',NULL,'2023-12-05 14:30:21','2023-12-05 14:30:21'),
(4,'Business','business',NULL,'2023-12-05 14:31:49','2023-12-05 14:31:49');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comments` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment` longtext NOT NULL,
  `parent_id` bigint(20) unsigned DEFAULT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `article_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `comments_parent_id_foreign` (`parent_id`),
  KEY `comments_user_id_foreign` (`user_id`),
  KEY `comments_article_id_foreign` (`article_id`),
  CONSTRAINT `comments_article_id_foreign` FOREIGN KEY (`article_id`) REFERENCES `articles` (`id`),
  CONSTRAINT `comments_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `comments` (`id`),
  CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
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
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) NOT NULL,
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
-- Table structure for table `locales`
--

DROP TABLE IF EXISTS `locales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `locales` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `locale` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `category_id` bigint(20) unsigned NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `locales_category_id_foreign` (`category_id`),
  CONSTRAINT `locales_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `locales`
--

LOCK TABLES `locales` WRITE;
/*!40000 ALTER TABLE `locales` DISABLE KEYS */;
/*!40000 ALTER TABLE `locales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `locations`
--

DROP TABLE IF EXISTS `locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `locations` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `location` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `locations_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `locations`
--

LOCK TABLES `locations` WRITE;
/*!40000 ALTER TABLE `locations` DISABLE KEYS */;
INSERT INTO `locations` VALUES
(1,'Africa','africa',NULL,'2023-12-05 14:32:32','2023-12-05 14:32:32'),
(2,'Asia','asia',NULL,'2023-12-05 14:33:12','2023-12-05 14:33:12'),
(3,'Europe','europe',NULL,'2023-12-05 14:34:01','2023-12-05 14:34:01'),
(4,'America','america',NULL,'2023-12-05 14:35:17','2023-12-05 14:35:17');
/*!40000 ALTER TABLE `locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media`
--

DROP TABLE IF EXISTS `media`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `media` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) unsigned NOT NULL,
  `uuid` char(36) DEFAULT NULL,
  `collection_name` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `mime_type` varchar(255) DEFAULT NULL,
  `disk` varchar(255) NOT NULL,
  `conversions_disk` varchar(255) DEFAULT NULL,
  `size` bigint(20) unsigned NOT NULL,
  `manipulations` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`manipulations`)),
  `custom_properties` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`custom_properties`)),
  `generated_conversions` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`generated_conversions`)),
  `responsive_images` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`responsive_images`)),
  `order_column` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `media_uuid_unique` (`uuid`),
  KEY `media_model_type_model_id_index` (`model_type`,`model_id`),
  KEY `media_order_column_index` (`order_column`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media`
--

LOCK TABLES `media` WRITE;
/*!40000 ALTER TABLE `media` DISABLE KEYS */;
INSERT INTO `media` VALUES
(1,'App\\Models\\Category',1,'7be03f22-0f42-4c91-8da7-468fa0566685','categories','marco-oriolesi-wqLGlhjr6Og-unsplash','marco-oriolesi-wqLGlhjr6Og-unsplash.jpg','image/jpeg','public','public',2255117,'[]','[]','[]','[]',1,'2023-12-05 14:28:05','2023-12-05 14:28:05'),
(2,'App\\Models\\Category',2,'3f6a6990-0fef-455b-ac78-1d207605f988','categories','boxed-water-is-better-FxbImDRNZy4-unsplash','boxed-water-is-better-FxbImDRNZy4-unsplash.jpg','image/jpeg','public','public',3252416,'[]','[]','[]','[]',1,'2023-12-05 14:29:04','2023-12-05 14:29:04'),
(3,'App\\Models\\Category',3,'5b4fe4e7-2897-4331-8dec-5d9a8b8d6dda','categories','denys-nevozhai-z0nVqfrOqWA-unsplash','denys-nevozhai-z0nVqfrOqWA-unsplash.jpg','image/jpeg','public','public',2454215,'[]','[]','[]','[]',1,'2023-12-05 14:30:21','2023-12-05 14:30:21'),
(4,'App\\Models\\Category',4,'885e61f4-6bb5-4af0-9b55-68772788ac5b','categories','scott-graham-5fNmWej4tAA-unsplash','scott-graham-5fNmWej4tAA-unsplash.jpg','image/jpeg','public','public',3904311,'[]','[]','[]','[]',1,'2023-12-05 14:31:49','2023-12-05 14:31:49'),
(5,'App\\Models\\Location',1,'9dba5e7b-1ea2-412a-a773-7bb7090328ab','locations','hu-chen-60XLoOgwkfA-unsplash','hu-chen-60XLoOgwkfA-unsplash.jpg','image/jpeg','public','public',2298454,'[]','[]','[]','[]',1,'2023-12-05 14:32:32','2023-12-05 14:32:32'),
(6,'App\\Models\\Location',2,'b68f548d-aa4d-45e2-a313-91b9e827fdd0','locations','charles-postiaux-TnUG2pWraPE-unsplash','charles-postiaux-TnUG2pWraPE-unsplash.jpg','image/jpeg','public','public',2675793,'[]','[]','[]','[]',1,'2023-12-05 14:33:12','2023-12-05 14:33:12'),
(7,'App\\Models\\Location',3,'a1bb0660-14c1-4b60-a352-a4745f1cfdd8','locations','alex-vasey-3lxrM5yvkcI-unsplash','alex-vasey-3lxrM5yvkcI-unsplash.jpg','image/jpeg','public','public',1487609,'[]','[]','[]','[]',1,'2023-12-05 14:34:01','2023-12-05 14:34:01'),
(8,'App\\Models\\Location',4,'a1296677-f362-4c41-9ab2-2cd606ecd832','locations','samuel-branch-ZPVisr0s_hQ-unsplash','samuel-branch-ZPVisr0s_hQ-unsplash.jpg','image/jpeg','public','public',9969904,'[]','[]','[]','[]',1,'2023-12-05 14:35:17','2023-12-05 14:35:17'),
(9,'App\\Models\\Article',1,'882ff4cc-302f-4595-bdc0-7b14c39764f9','articles','jorge-alcala-fbtHV94f-bA-unsplash','jorge-alcala-fbtHV94f-bA-unsplash.jpg','image/jpeg','public','public',3090592,'[]','[]','[]','[]',1,'2023-12-05 14:42:58','2023-12-05 14:42:58'),
(10,'App\\Models\\TextWidget',2,'45f38cdb-3e87-4ccc-b8e9-60f1610f273a','text-widgets','charles-postiaux-TnUG2pWraPE-unsplash','charles-postiaux-TnUG2pWraPE-unsplash.jpg','image/jpeg','public','public',2675793,'[]','[]','[]','[]',1,'2023-12-05 14:46:03','2023-12-05 14:46:03'),
(11,'App\\Models\\TextWidget',3,'2d5ef285-abb8-4b47-a6cf-c6c6e29a5003','text-widgets','hu-chen-60XLoOgwkfA-unsplash','hu-chen-60XLoOgwkfA-unsplash.jpg','image/jpeg','public','public',2298454,'[]','[]','[]','[]',1,'2023-12-05 14:46:54','2023-12-05 14:46:54'),
(12,'App\\Models\\TextWidget',4,'ed943080-a2cd-4ea0-95bc-6714ff66115d','text-widgets','boxed-water-is-better-FxbImDRNZy4-unsplash','boxed-water-is-better-FxbImDRNZy4-unsplash.jpg','image/jpeg','public','public',3252416,'[]','[]','[]','[]',1,'2023-12-05 14:47:40','2023-12-05 14:47:40'),
(13,'App\\Models\\Article',2,'fd661b77-ae8a-4985-a1a3-f1542941fcc4','articles','alex-vasey-3lxrM5yvkcI-unsplash','alex-vasey-3lxrM5yvkcI-unsplash.jpg','image/jpeg','public','public',1487609,'[]','[]','[]','[]',1,'2023-12-05 22:40:44','2023-12-05 22:40:44'),
(14,'App\\Models\\Article',3,'254407d7-f888-4086-956c-5f1d5170d4f0','articles','charles-postiaux-TnUG2pWraPE-unsplash','charles-postiaux-TnUG2pWraPE-unsplash.jpg','image/jpeg','public','public',2675793,'[]','[]','[]','[]',1,'2023-12-05 22:42:29','2023-12-05 22:42:29'),
(15,'App\\Models\\Article',4,'50f2a80c-90da-46cb-ace7-5f808621fab1','articles','denys-nevozhai-z0nVqfrOqWA-unsplash','denys-nevozhai-z0nVqfrOqWA-unsplash.jpg','image/jpeg','public','public',2454215,'[]','[]','[]','[]',1,'2023-12-05 22:43:15','2023-12-05 22:43:15');
/*!40000 ALTER TABLE `media` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES
(1,'2014_10_12_000000_create_users_table',1),
(2,'2014_10_12_100000_create_password_reset_tokens_table',1),
(3,'2014_10_12_200000_add_two_factor_columns_to_users_table',1),
(4,'2019_08_19_000000_create_failed_jobs_table',1),
(5,'2019_12_14_000001_create_personal_access_tokens_table',1),
(6,'2020_05_21_100000_create_teams_table',1),
(7,'2020_05_21_200000_create_team_user_table',1),
(8,'2020_05_21_300000_create_team_invitations_table',1),
(9,'2023_09_29_212941_create_sessions_table',1),
(10,'2023_09_29_215524_create_permission_tables',1),
(11,'2023_09_29_220925_add_soft_deletes_to_users_table',1),
(12,'2023_09_29_231959_create_socials_table',1),
(13,'2023_09_30_002341_add_bio_to_users_table',1),
(14,'2023_09_30_004814_create_media_table',1),
(15,'2023_09_30_010250_create_activity_log_table',1),
(16,'2023_09_30_010251_add_event_column_to_activity_log_table',1),
(17,'2023_09_30_010252_add_batch_uuid_column_to_activity_log_table',1),
(18,'2023_09_30_172042_create_categories_table',1),
(19,'2023_09_30_181306_create_locations_table',1),
(20,'2023_09_30_185342_create_articles_table',1),
(21,'2023_09_30_214025_create_article_categories_table',1),
(22,'2023_09_30_214036_create_article_locations_table',1),
(23,'2023_10_04_040810_add_avatar_url_column_to_users_table',1),
(24,'2023_10_04_154050_create_breezy_tables',1),
(25,'2023_10_05_014034_add_links_to_users_table',1),
(26,'2023_10_08_041152_create_text_widgets_table',1),
(27,'2023_10_09_000515_add_ancient_truth_to_articles_table',1),
(28,'2023_10_09_003611_create_our_socials_table',1),
(29,'2023_10_14_175533_create_upvote_downvotes_table',1),
(30,'2023_10_15_005410_create_article_views_table',1),
(31,'2023_10_16_233506_create_comments_table',1),
(32,'2023_12_03_011710_create_subs_table',1),
(33,'2023_12_03_013323_create_locales_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `model_has_permissions`
--

DROP TABLE IF EXISTS `model_has_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) unsigned NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `model_has_permissions`
--

LOCK TABLES `model_has_permissions` WRITE;
/*!40000 ALTER TABLE `model_has_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `model_has_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `model_has_roles`
--

DROP TABLE IF EXISTS `model_has_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) unsigned NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `model_has_roles`
--

LOCK TABLES `model_has_roles` WRITE;
/*!40000 ALTER TABLE `model_has_roles` DISABLE KEYS */;
INSERT INTO `model_has_roles` VALUES
(1,'App\\Models\\User',1),
(2,'App\\Models\\User',1),
(3,'App\\Models\\User',1),
(1,'App\\Models\\User',2),
(2,'App\\Models\\User',2),
(3,'App\\Models\\User',2);
/*!40000 ALTER TABLE `model_has_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `our_socials`
--

DROP TABLE IF EXISTS `our_socials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `our_socials` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `platform` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `our_socials`
--

LOCK TABLES `our_socials` WRITE;
/*!40000 ALTER TABLE `our_socials` DISABLE KEYS */;
INSERT INTO `our_socials` VALUES
(1,'X','https://x.com/blog',1,NULL),
(2,'Telegram','https://t.me/blog',1,NULL),
(3,'LinkedIn','https://linkedin.com/in/blog',1,NULL);
/*!40000 ALTER TABLE `our_socials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permissions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`)
) ENGINE=InnoDB AUTO_INCREMENT=325 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` VALUES
(1,'view-any Article','web','2023-12-05 13:27:54','2023-12-05 13:27:54'),
(2,'view-any Article','api','2023-12-05 13:27:54','2023-12-05 13:27:54'),
(3,'view Article','web','2023-12-05 13:27:54','2023-12-05 13:27:54'),
(4,'view Article','api','2023-12-05 13:27:54','2023-12-05 13:27:54'),
(5,'create Article','web','2023-12-05 13:27:54','2023-12-05 13:27:54'),
(6,'create Article','api','2023-12-05 13:27:54','2023-12-05 13:27:54'),
(7,'update Article','web','2023-12-05 13:27:54','2023-12-05 13:27:54'),
(8,'update Article','api','2023-12-05 13:27:54','2023-12-05 13:27:54'),
(9,'delete Article','web','2023-12-05 13:27:54','2023-12-05 13:27:54'),
(10,'delete Article','api','2023-12-05 13:27:54','2023-12-05 13:27:54'),
(11,'restore Article','web','2023-12-05 13:27:54','2023-12-05 13:27:54'),
(12,'restore Article','api','2023-12-05 13:27:54','2023-12-05 13:27:54'),
(13,'force-delete Article','web','2023-12-05 13:27:54','2023-12-05 13:27:54'),
(14,'force-delete Article','api','2023-12-05 13:27:54','2023-12-05 13:27:54'),
(15,'replicate Article','web','2023-12-05 13:27:54','2023-12-05 13:27:54'),
(16,'replicate Article','api','2023-12-05 13:27:54','2023-12-05 13:27:54'),
(17,'reorder Article','web','2023-12-05 13:27:54','2023-12-05 13:27:54'),
(18,'reorder Article','api','2023-12-05 13:27:54','2023-12-05 13:27:54'),
(19,'view-any ArticleCategory','web','2023-12-05 13:27:54','2023-12-05 13:27:54'),
(20,'view-any ArticleCategory','api','2023-12-05 13:27:54','2023-12-05 13:27:54'),
(21,'view ArticleCategory','web','2023-12-05 13:27:54','2023-12-05 13:27:54'),
(22,'view ArticleCategory','api','2023-12-05 13:27:54','2023-12-05 13:27:54'),
(23,'create ArticleCategory','web','2023-12-05 13:27:54','2023-12-05 13:27:54'),
(24,'create ArticleCategory','api','2023-12-05 13:27:54','2023-12-05 13:27:54'),
(25,'update ArticleCategory','web','2023-12-05 13:27:54','2023-12-05 13:27:54'),
(26,'update ArticleCategory','api','2023-12-05 13:27:54','2023-12-05 13:27:54'),
(27,'delete ArticleCategory','web','2023-12-05 13:27:54','2023-12-05 13:27:54'),
(28,'delete ArticleCategory','api','2023-12-05 13:27:54','2023-12-05 13:27:54'),
(29,'restore ArticleCategory','web','2023-12-05 13:27:54','2023-12-05 13:27:54'),
(30,'restore ArticleCategory','api','2023-12-05 13:27:54','2023-12-05 13:27:54'),
(31,'force-delete ArticleCategory','web','2023-12-05 13:27:54','2023-12-05 13:27:54'),
(32,'force-delete ArticleCategory','api','2023-12-05 13:27:54','2023-12-05 13:27:54'),
(33,'replicate ArticleCategory','web','2023-12-05 13:27:54','2023-12-05 13:27:54'),
(34,'replicate ArticleCategory','api','2023-12-05 13:27:54','2023-12-05 13:27:54'),
(35,'reorder ArticleCategory','web','2023-12-05 13:27:54','2023-12-05 13:27:54'),
(36,'reorder ArticleCategory','api','2023-12-05 13:27:54','2023-12-05 13:27:54'),
(37,'view-any ArticleLocation','web','2023-12-05 13:27:54','2023-12-05 13:27:54'),
(38,'view-any ArticleLocation','api','2023-12-05 13:27:54','2023-12-05 13:27:54'),
(39,'view ArticleLocation','web','2023-12-05 13:27:54','2023-12-05 13:27:54'),
(40,'view ArticleLocation','api','2023-12-05 13:27:54','2023-12-05 13:27:54'),
(41,'create ArticleLocation','web','2023-12-05 13:27:54','2023-12-05 13:27:54'),
(42,'create ArticleLocation','api','2023-12-05 13:27:54','2023-12-05 13:27:54'),
(43,'update ArticleLocation','web','2023-12-05 13:27:54','2023-12-05 13:27:54'),
(44,'update ArticleLocation','api','2023-12-05 13:27:54','2023-12-05 13:27:54'),
(45,'delete ArticleLocation','web','2023-12-05 13:27:54','2023-12-05 13:27:54'),
(46,'delete ArticleLocation','api','2023-12-05 13:27:54','2023-12-05 13:27:54'),
(47,'restore ArticleLocation','web','2023-12-05 13:27:54','2023-12-05 13:27:54'),
(48,'restore ArticleLocation','api','2023-12-05 13:27:54','2023-12-05 13:27:54'),
(49,'force-delete ArticleLocation','web','2023-12-05 13:27:54','2023-12-05 13:27:54'),
(50,'force-delete ArticleLocation','api','2023-12-05 13:27:54','2023-12-05 13:27:54'),
(51,'replicate ArticleLocation','web','2023-12-05 13:27:54','2023-12-05 13:27:54'),
(52,'replicate ArticleLocation','api','2023-12-05 13:27:54','2023-12-05 13:27:54'),
(53,'reorder ArticleLocation','web','2023-12-05 13:27:54','2023-12-05 13:27:54'),
(54,'reorder ArticleLocation','api','2023-12-05 13:27:54','2023-12-05 13:27:54'),
(55,'view-any ArticleView','web','2023-12-05 13:27:54','2023-12-05 13:27:54'),
(56,'view-any ArticleView','api','2023-12-05 13:27:54','2023-12-05 13:27:54'),
(57,'view ArticleView','web','2023-12-05 13:27:54','2023-12-05 13:27:54'),
(58,'view ArticleView','api','2023-12-05 13:27:54','2023-12-05 13:27:54'),
(59,'create ArticleView','web','2023-12-05 13:27:54','2023-12-05 13:27:54'),
(60,'create ArticleView','api','2023-12-05 13:27:54','2023-12-05 13:27:54'),
(61,'update ArticleView','web','2023-12-05 13:27:54','2023-12-05 13:27:54'),
(62,'update ArticleView','api','2023-12-05 13:27:54','2023-12-05 13:27:54'),
(63,'delete ArticleView','web','2023-12-05 13:27:54','2023-12-05 13:27:54'),
(64,'delete ArticleView','api','2023-12-05 13:27:54','2023-12-05 13:27:54'),
(65,'restore ArticleView','web','2023-12-05 13:27:54','2023-12-05 13:27:54'),
(66,'restore ArticleView','api','2023-12-05 13:27:54','2023-12-05 13:27:54'),
(67,'force-delete ArticleView','web','2023-12-05 13:27:54','2023-12-05 13:27:54'),
(68,'force-delete ArticleView','api','2023-12-05 13:27:54','2023-12-05 13:27:54'),
(69,'replicate ArticleView','web','2023-12-05 13:27:54','2023-12-05 13:27:54'),
(70,'replicate ArticleView','api','2023-12-05 13:27:54','2023-12-05 13:27:54'),
(71,'reorder ArticleView','web','2023-12-05 13:27:54','2023-12-05 13:27:54'),
(72,'reorder ArticleView','api','2023-12-05 13:27:54','2023-12-05 13:27:54'),
(73,'view-any Category','web','2023-12-05 13:27:54','2023-12-05 13:27:54'),
(74,'view-any Category','api','2023-12-05 13:27:54','2023-12-05 13:27:54'),
(75,'view Category','web','2023-12-05 13:27:54','2023-12-05 13:27:54'),
(76,'view Category','api','2023-12-05 13:27:54','2023-12-05 13:27:54'),
(77,'create Category','web','2023-12-05 13:27:54','2023-12-05 13:27:54'),
(78,'create Category','api','2023-12-05 13:27:54','2023-12-05 13:27:54'),
(79,'update Category','web','2023-12-05 13:27:54','2023-12-05 13:27:54'),
(80,'update Category','api','2023-12-05 13:27:54','2023-12-05 13:27:54'),
(81,'delete Category','web','2023-12-05 13:27:54','2023-12-05 13:27:54'),
(82,'delete Category','api','2023-12-05 13:27:54','2023-12-05 13:27:54'),
(83,'restore Category','web','2023-12-05 13:27:54','2023-12-05 13:27:54'),
(84,'restore Category','api','2023-12-05 13:27:54','2023-12-05 13:27:54'),
(85,'force-delete Category','web','2023-12-05 13:27:54','2023-12-05 13:27:54'),
(86,'force-delete Category','api','2023-12-05 13:27:54','2023-12-05 13:27:54'),
(87,'replicate Category','web','2023-12-05 13:27:54','2023-12-05 13:27:54'),
(88,'replicate Category','api','2023-12-05 13:27:54','2023-12-05 13:27:54'),
(89,'reorder Category','web','2023-12-05 13:27:54','2023-12-05 13:27:54'),
(90,'reorder Category','api','2023-12-05 13:27:54','2023-12-05 13:27:54'),
(91,'view-any Comment','web','2023-12-05 13:27:54','2023-12-05 13:27:54'),
(92,'view-any Comment','api','2023-12-05 13:27:54','2023-12-05 13:27:54'),
(93,'view Comment','web','2023-12-05 13:27:54','2023-12-05 13:27:54'),
(94,'view Comment','api','2023-12-05 13:27:54','2023-12-05 13:27:54'),
(95,'create Comment','web','2023-12-05 13:27:54','2023-12-05 13:27:54'),
(96,'create Comment','api','2023-12-05 13:27:54','2023-12-05 13:27:54'),
(97,'update Comment','web','2023-12-05 13:27:54','2023-12-05 13:27:54'),
(98,'update Comment','api','2023-12-05 13:27:54','2023-12-05 13:27:54'),
(99,'delete Comment','web','2023-12-05 13:27:54','2023-12-05 13:27:54'),
(100,'delete Comment','api','2023-12-05 13:27:54','2023-12-05 13:27:54'),
(101,'restore Comment','web','2023-12-05 13:27:54','2023-12-05 13:27:54'),
(102,'restore Comment','api','2023-12-05 13:27:54','2023-12-05 13:27:54'),
(103,'force-delete Comment','web','2023-12-05 13:27:54','2023-12-05 13:27:54'),
(104,'force-delete Comment','api','2023-12-05 13:27:54','2023-12-05 13:27:54'),
(105,'replicate Comment','web','2023-12-05 13:27:54','2023-12-05 13:27:54'),
(106,'replicate Comment','api','2023-12-05 13:27:54','2023-12-05 13:27:54'),
(107,'reorder Comment','web','2023-12-05 13:27:54','2023-12-05 13:27:54'),
(108,'reorder Comment','api','2023-12-05 13:27:54','2023-12-05 13:27:54'),
(109,'view-any Locale','web','2023-12-05 13:27:54','2023-12-05 13:27:54'),
(110,'view-any Locale','api','2023-12-05 13:27:54','2023-12-05 13:27:54'),
(111,'view Locale','web','2023-12-05 13:27:54','2023-12-05 13:27:54'),
(112,'view Locale','api','2023-12-05 13:27:54','2023-12-05 13:27:54'),
(113,'create Locale','web','2023-12-05 13:27:54','2023-12-05 13:27:54'),
(114,'create Locale','api','2023-12-05 13:27:54','2023-12-05 13:27:54'),
(115,'update Locale','web','2023-12-05 13:27:54','2023-12-05 13:27:54'),
(116,'update Locale','api','2023-12-05 13:27:54','2023-12-05 13:27:54'),
(117,'delete Locale','web','2023-12-05 13:27:54','2023-12-05 13:27:54'),
(118,'delete Locale','api','2023-12-05 13:27:54','2023-12-05 13:27:54'),
(119,'restore Locale','web','2023-12-05 13:27:54','2023-12-05 13:27:54'),
(120,'restore Locale','api','2023-12-05 13:27:54','2023-12-05 13:27:54'),
(121,'force-delete Locale','web','2023-12-05 13:27:54','2023-12-05 13:27:54'),
(122,'force-delete Locale','api','2023-12-05 13:27:54','2023-12-05 13:27:54'),
(123,'replicate Locale','web','2023-12-05 13:27:54','2023-12-05 13:27:54'),
(124,'replicate Locale','api','2023-12-05 13:27:54','2023-12-05 13:27:54'),
(125,'reorder Locale','web','2023-12-05 13:27:54','2023-12-05 13:27:54'),
(126,'reorder Locale','api','2023-12-05 13:27:54','2023-12-05 13:27:54'),
(127,'view-any Location','web','2023-12-05 13:27:54','2023-12-05 13:27:54'),
(128,'view-any Location','api','2023-12-05 13:27:54','2023-12-05 13:27:54'),
(129,'view Location','web','2023-12-05 13:27:54','2023-12-05 13:27:54'),
(130,'view Location','api','2023-12-05 13:27:54','2023-12-05 13:27:54'),
(131,'create Location','web','2023-12-05 13:27:54','2023-12-05 13:27:54'),
(132,'create Location','api','2023-12-05 13:27:54','2023-12-05 13:27:54'),
(133,'update Location','web','2023-12-05 13:27:54','2023-12-05 13:27:54'),
(134,'update Location','api','2023-12-05 13:27:54','2023-12-05 13:27:54'),
(135,'delete Location','web','2023-12-05 13:27:54','2023-12-05 13:27:54'),
(136,'delete Location','api','2023-12-05 13:27:54','2023-12-05 13:27:54'),
(137,'restore Location','web','2023-12-05 13:27:54','2023-12-05 13:27:54'),
(138,'restore Location','api','2023-12-05 13:27:54','2023-12-05 13:27:54'),
(139,'force-delete Location','web','2023-12-05 13:27:54','2023-12-05 13:27:54'),
(140,'force-delete Location','api','2023-12-05 13:27:54','2023-12-05 13:27:54'),
(141,'replicate Location','web','2023-12-05 13:27:54','2023-12-05 13:27:54'),
(142,'replicate Location','api','2023-12-05 13:27:54','2023-12-05 13:27:54'),
(143,'reorder Location','web','2023-12-05 13:27:54','2023-12-05 13:27:54'),
(144,'reorder Location','api','2023-12-05 13:27:54','2023-12-05 13:27:54'),
(145,'view-any Membership','web','2023-12-05 13:27:54','2023-12-05 13:27:54'),
(146,'view-any Membership','api','2023-12-05 13:27:54','2023-12-05 13:27:54'),
(147,'view Membership','web','2023-12-05 13:27:54','2023-12-05 13:27:54'),
(148,'view Membership','api','2023-12-05 13:27:54','2023-12-05 13:27:54'),
(149,'create Membership','web','2023-12-05 13:27:54','2023-12-05 13:27:54'),
(150,'create Membership','api','2023-12-05 13:27:54','2023-12-05 13:27:54'),
(151,'update Membership','web','2023-12-05 13:27:54','2023-12-05 13:27:54'),
(152,'update Membership','api','2023-12-05 13:27:54','2023-12-05 13:27:54'),
(153,'delete Membership','web','2023-12-05 13:27:54','2023-12-05 13:27:54'),
(154,'delete Membership','api','2023-12-05 13:27:54','2023-12-05 13:27:54'),
(155,'restore Membership','web','2023-12-05 13:27:54','2023-12-05 13:27:54'),
(156,'restore Membership','api','2023-12-05 13:27:54','2023-12-05 13:27:54'),
(157,'force-delete Membership','web','2023-12-05 13:27:54','2023-12-05 13:27:54'),
(158,'force-delete Membership','api','2023-12-05 13:27:54','2023-12-05 13:27:54'),
(159,'replicate Membership','web','2023-12-05 13:27:54','2023-12-05 13:27:54'),
(160,'replicate Membership','api','2023-12-05 13:27:54','2023-12-05 13:27:54'),
(161,'reorder Membership','web','2023-12-05 13:27:54','2023-12-05 13:27:54'),
(162,'reorder Membership','api','2023-12-05 13:27:54','2023-12-05 13:27:54'),
(163,'view-any OurSocial','web','2023-12-05 13:27:54','2023-12-05 13:27:54'),
(164,'view-any OurSocial','api','2023-12-05 13:27:54','2023-12-05 13:27:54'),
(165,'view OurSocial','web','2023-12-05 13:27:55','2023-12-05 13:27:55'),
(166,'view OurSocial','api','2023-12-05 13:27:55','2023-12-05 13:27:55'),
(167,'create OurSocial','web','2023-12-05 13:27:55','2023-12-05 13:27:55'),
(168,'create OurSocial','api','2023-12-05 13:27:55','2023-12-05 13:27:55'),
(169,'update OurSocial','web','2023-12-05 13:27:55','2023-12-05 13:27:55'),
(170,'update OurSocial','api','2023-12-05 13:27:55','2023-12-05 13:27:55'),
(171,'delete OurSocial','web','2023-12-05 13:27:55','2023-12-05 13:27:55'),
(172,'delete OurSocial','api','2023-12-05 13:27:55','2023-12-05 13:27:55'),
(173,'restore OurSocial','web','2023-12-05 13:27:55','2023-12-05 13:27:55'),
(174,'restore OurSocial','api','2023-12-05 13:27:55','2023-12-05 13:27:55'),
(175,'force-delete OurSocial','web','2023-12-05 13:27:55','2023-12-05 13:27:55'),
(176,'force-delete OurSocial','api','2023-12-05 13:27:55','2023-12-05 13:27:55'),
(177,'replicate OurSocial','web','2023-12-05 13:27:55','2023-12-05 13:27:55'),
(178,'replicate OurSocial','api','2023-12-05 13:27:55','2023-12-05 13:27:55'),
(179,'reorder OurSocial','web','2023-12-05 13:27:55','2023-12-05 13:27:55'),
(180,'reorder OurSocial','api','2023-12-05 13:27:55','2023-12-05 13:27:55'),
(181,'view-any Role','web','2023-12-05 13:27:55','2023-12-05 13:27:55'),
(182,'view-any Role','api','2023-12-05 13:27:55','2023-12-05 13:27:55'),
(183,'view Role','web','2023-12-05 13:27:55','2023-12-05 13:27:55'),
(184,'view Role','api','2023-12-05 13:27:55','2023-12-05 13:27:55'),
(185,'create Role','web','2023-12-05 13:27:55','2023-12-05 13:27:55'),
(186,'create Role','api','2023-12-05 13:27:55','2023-12-05 13:27:55'),
(187,'update Role','web','2023-12-05 13:27:55','2023-12-05 13:27:55'),
(188,'update Role','api','2023-12-05 13:27:55','2023-12-05 13:27:55'),
(189,'delete Role','web','2023-12-05 13:27:55','2023-12-05 13:27:55'),
(190,'delete Role','api','2023-12-05 13:27:55','2023-12-05 13:27:55'),
(191,'restore Role','web','2023-12-05 13:27:55','2023-12-05 13:27:55'),
(192,'restore Role','api','2023-12-05 13:27:55','2023-12-05 13:27:55'),
(193,'force-delete Role','web','2023-12-05 13:27:55','2023-12-05 13:27:55'),
(194,'force-delete Role','api','2023-12-05 13:27:55','2023-12-05 13:27:55'),
(195,'replicate Role','web','2023-12-05 13:27:55','2023-12-05 13:27:55'),
(196,'replicate Role','api','2023-12-05 13:27:55','2023-12-05 13:27:55'),
(197,'reorder Role','web','2023-12-05 13:27:55','2023-12-05 13:27:55'),
(198,'reorder Role','api','2023-12-05 13:27:55','2023-12-05 13:27:55'),
(199,'view-any Social','web','2023-12-05 13:27:55','2023-12-05 13:27:55'),
(200,'view-any Social','api','2023-12-05 13:27:55','2023-12-05 13:27:55'),
(201,'view Social','web','2023-12-05 13:27:55','2023-12-05 13:27:55'),
(202,'view Social','api','2023-12-05 13:27:55','2023-12-05 13:27:55'),
(203,'create Social','web','2023-12-05 13:27:55','2023-12-05 13:27:55'),
(204,'create Social','api','2023-12-05 13:27:55','2023-12-05 13:27:55'),
(205,'update Social','web','2023-12-05 13:27:55','2023-12-05 13:27:55'),
(206,'update Social','api','2023-12-05 13:27:55','2023-12-05 13:27:55'),
(207,'delete Social','web','2023-12-05 13:27:55','2023-12-05 13:27:55'),
(208,'delete Social','api','2023-12-05 13:27:55','2023-12-05 13:27:55'),
(209,'restore Social','web','2023-12-05 13:27:55','2023-12-05 13:27:55'),
(210,'restore Social','api','2023-12-05 13:27:55','2023-12-05 13:27:55'),
(211,'force-delete Social','web','2023-12-05 13:27:55','2023-12-05 13:27:55'),
(212,'force-delete Social','api','2023-12-05 13:27:55','2023-12-05 13:27:55'),
(213,'replicate Social','web','2023-12-05 13:27:55','2023-12-05 13:27:55'),
(214,'replicate Social','api','2023-12-05 13:27:55','2023-12-05 13:27:55'),
(215,'reorder Social','web','2023-12-05 13:27:55','2023-12-05 13:27:55'),
(216,'reorder Social','api','2023-12-05 13:27:55','2023-12-05 13:27:55'),
(217,'view-any Sub','web','2023-12-05 13:27:55','2023-12-05 13:27:55'),
(218,'view-any Sub','api','2023-12-05 13:27:55','2023-12-05 13:27:55'),
(219,'view Sub','web','2023-12-05 13:27:55','2023-12-05 13:27:55'),
(220,'view Sub','api','2023-12-05 13:27:55','2023-12-05 13:27:55'),
(221,'create Sub','web','2023-12-05 13:27:55','2023-12-05 13:27:55'),
(222,'create Sub','api','2023-12-05 13:27:55','2023-12-05 13:27:55'),
(223,'update Sub','web','2023-12-05 13:27:55','2023-12-05 13:27:55'),
(224,'update Sub','api','2023-12-05 13:27:55','2023-12-05 13:27:55'),
(225,'delete Sub','web','2023-12-05 13:27:55','2023-12-05 13:27:55'),
(226,'delete Sub','api','2023-12-05 13:27:55','2023-12-05 13:27:55'),
(227,'restore Sub','web','2023-12-05 13:27:55','2023-12-05 13:27:55'),
(228,'restore Sub','api','2023-12-05 13:27:55','2023-12-05 13:27:55'),
(229,'force-delete Sub','web','2023-12-05 13:27:55','2023-12-05 13:27:55'),
(230,'force-delete Sub','api','2023-12-05 13:27:55','2023-12-05 13:27:55'),
(231,'replicate Sub','web','2023-12-05 13:27:55','2023-12-05 13:27:55'),
(232,'replicate Sub','api','2023-12-05 13:27:55','2023-12-05 13:27:55'),
(233,'reorder Sub','web','2023-12-05 13:27:55','2023-12-05 13:27:55'),
(234,'reorder Sub','api','2023-12-05 13:27:55','2023-12-05 13:27:55'),
(235,'view-any Team','web','2023-12-05 13:27:55','2023-12-05 13:27:55'),
(236,'view-any Team','api','2023-12-05 13:27:55','2023-12-05 13:27:55'),
(237,'view Team','web','2023-12-05 13:27:55','2023-12-05 13:27:55'),
(238,'view Team','api','2023-12-05 13:27:55','2023-12-05 13:27:55'),
(239,'create Team','web','2023-12-05 13:27:55','2023-12-05 13:27:55'),
(240,'create Team','api','2023-12-05 13:27:55','2023-12-05 13:27:55'),
(241,'update Team','web','2023-12-05 13:27:55','2023-12-05 13:27:55'),
(242,'update Team','api','2023-12-05 13:27:55','2023-12-05 13:27:55'),
(243,'delete Team','web','2023-12-05 13:27:55','2023-12-05 13:27:55'),
(244,'delete Team','api','2023-12-05 13:27:55','2023-12-05 13:27:55'),
(245,'restore Team','web','2023-12-05 13:27:55','2023-12-05 13:27:55'),
(246,'restore Team','api','2023-12-05 13:27:55','2023-12-05 13:27:55'),
(247,'force-delete Team','web','2023-12-05 13:27:55','2023-12-05 13:27:55'),
(248,'force-delete Team','api','2023-12-05 13:27:55','2023-12-05 13:27:55'),
(249,'replicate Team','web','2023-12-05 13:27:55','2023-12-05 13:27:55'),
(250,'replicate Team','api','2023-12-05 13:27:55','2023-12-05 13:27:55'),
(251,'reorder Team','web','2023-12-05 13:27:55','2023-12-05 13:27:55'),
(252,'reorder Team','api','2023-12-05 13:27:55','2023-12-05 13:27:55'),
(253,'view-any TeamInvitation','web','2023-12-05 13:27:55','2023-12-05 13:27:55'),
(254,'view-any TeamInvitation','api','2023-12-05 13:27:55','2023-12-05 13:27:55'),
(255,'view TeamInvitation','web','2023-12-05 13:27:55','2023-12-05 13:27:55'),
(256,'view TeamInvitation','api','2023-12-05 13:27:55','2023-12-05 13:27:55'),
(257,'create TeamInvitation','web','2023-12-05 13:27:55','2023-12-05 13:27:55'),
(258,'create TeamInvitation','api','2023-12-05 13:27:55','2023-12-05 13:27:55'),
(259,'update TeamInvitation','web','2023-12-05 13:27:55','2023-12-05 13:27:55'),
(260,'update TeamInvitation','api','2023-12-05 13:27:55','2023-12-05 13:27:55'),
(261,'delete TeamInvitation','web','2023-12-05 13:27:55','2023-12-05 13:27:55'),
(262,'delete TeamInvitation','api','2023-12-05 13:27:55','2023-12-05 13:27:55'),
(263,'restore TeamInvitation','web','2023-12-05 13:27:55','2023-12-05 13:27:55'),
(264,'restore TeamInvitation','api','2023-12-05 13:27:55','2023-12-05 13:27:55'),
(265,'force-delete TeamInvitation','web','2023-12-05 13:27:55','2023-12-05 13:27:55'),
(266,'force-delete TeamInvitation','api','2023-12-05 13:27:55','2023-12-05 13:27:55'),
(267,'replicate TeamInvitation','web','2023-12-05 13:27:55','2023-12-05 13:27:55'),
(268,'replicate TeamInvitation','api','2023-12-05 13:27:55','2023-12-05 13:27:55'),
(269,'reorder TeamInvitation','web','2023-12-05 13:27:55','2023-12-05 13:27:55'),
(270,'reorder TeamInvitation','api','2023-12-05 13:27:55','2023-12-05 13:27:55'),
(271,'view-any TextWidget','web','2023-12-05 13:27:55','2023-12-05 13:27:55'),
(272,'view-any TextWidget','api','2023-12-05 13:27:55','2023-12-05 13:27:55'),
(273,'view TextWidget','web','2023-12-05 13:27:55','2023-12-05 13:27:55'),
(274,'view TextWidget','api','2023-12-05 13:27:55','2023-12-05 13:27:55'),
(275,'create TextWidget','web','2023-12-05 13:27:55','2023-12-05 13:27:55'),
(276,'create TextWidget','api','2023-12-05 13:27:55','2023-12-05 13:27:55'),
(277,'update TextWidget','web','2023-12-05 13:27:55','2023-12-05 13:27:55'),
(278,'update TextWidget','api','2023-12-05 13:27:55','2023-12-05 13:27:55'),
(279,'delete TextWidget','web','2023-12-05 13:27:55','2023-12-05 13:27:55'),
(280,'delete TextWidget','api','2023-12-05 13:27:55','2023-12-05 13:27:55'),
(281,'restore TextWidget','web','2023-12-05 13:27:55','2023-12-05 13:27:55'),
(282,'restore TextWidget','api','2023-12-05 13:27:55','2023-12-05 13:27:55'),
(283,'force-delete TextWidget','web','2023-12-05 13:27:55','2023-12-05 13:27:55'),
(284,'force-delete TextWidget','api','2023-12-05 13:27:55','2023-12-05 13:27:55'),
(285,'replicate TextWidget','web','2023-12-05 13:27:55','2023-12-05 13:27:55'),
(286,'replicate TextWidget','api','2023-12-05 13:27:55','2023-12-05 13:27:55'),
(287,'reorder TextWidget','web','2023-12-05 13:27:55','2023-12-05 13:27:55'),
(288,'reorder TextWidget','api','2023-12-05 13:27:55','2023-12-05 13:27:55'),
(289,'view-any UpvoteDownvote','web','2023-12-05 13:27:55','2023-12-05 13:27:55'),
(290,'view-any UpvoteDownvote','api','2023-12-05 13:27:55','2023-12-05 13:27:55'),
(291,'view UpvoteDownvote','web','2023-12-05 13:27:55','2023-12-05 13:27:55'),
(292,'view UpvoteDownvote','api','2023-12-05 13:27:55','2023-12-05 13:27:55'),
(293,'create UpvoteDownvote','web','2023-12-05 13:27:55','2023-12-05 13:27:55'),
(294,'create UpvoteDownvote','api','2023-12-05 13:27:55','2023-12-05 13:27:55'),
(295,'update UpvoteDownvote','web','2023-12-05 13:27:55','2023-12-05 13:27:55'),
(296,'update UpvoteDownvote','api','2023-12-05 13:27:55','2023-12-05 13:27:55'),
(297,'delete UpvoteDownvote','web','2023-12-05 13:27:55','2023-12-05 13:27:55'),
(298,'delete UpvoteDownvote','api','2023-12-05 13:27:55','2023-12-05 13:27:55'),
(299,'restore UpvoteDownvote','web','2023-12-05 13:27:55','2023-12-05 13:27:55'),
(300,'restore UpvoteDownvote','api','2023-12-05 13:27:55','2023-12-05 13:27:55'),
(301,'force-delete UpvoteDownvote','web','2023-12-05 13:27:55','2023-12-05 13:27:55'),
(302,'force-delete UpvoteDownvote','api','2023-12-05 13:27:55','2023-12-05 13:27:55'),
(303,'replicate UpvoteDownvote','web','2023-12-05 13:27:55','2023-12-05 13:27:55'),
(304,'replicate UpvoteDownvote','api','2023-12-05 13:27:55','2023-12-05 13:27:55'),
(305,'reorder UpvoteDownvote','web','2023-12-05 13:27:55','2023-12-05 13:27:55'),
(306,'reorder UpvoteDownvote','api','2023-12-05 13:27:55','2023-12-05 13:27:55'),
(307,'view-any User','web','2023-12-05 13:27:55','2023-12-05 13:27:55'),
(308,'view-any User','api','2023-12-05 13:27:55','2023-12-05 13:27:55'),
(309,'view User','web','2023-12-05 13:27:55','2023-12-05 13:27:55'),
(310,'view User','api','2023-12-05 13:27:55','2023-12-05 13:27:55'),
(311,'create User','web','2023-12-05 13:27:55','2023-12-05 13:27:55'),
(312,'create User','api','2023-12-05 13:27:55','2023-12-05 13:27:55'),
(313,'update User','web','2023-12-05 13:27:55','2023-12-05 13:27:55'),
(314,'update User','api','2023-12-05 13:27:55','2023-12-05 13:27:55'),
(315,'delete User','web','2023-12-05 13:27:55','2023-12-05 13:27:55'),
(316,'delete User','api','2023-12-05 13:27:55','2023-12-05 13:27:55'),
(317,'restore User','web','2023-12-05 13:27:55','2023-12-05 13:27:55'),
(318,'restore User','api','2023-12-05 13:27:55','2023-12-05 13:27:55'),
(319,'force-delete User','web','2023-12-05 13:27:55','2023-12-05 13:27:55'),
(320,'force-delete User','api','2023-12-05 13:27:55','2023-12-05 13:27:55'),
(321,'replicate User','web','2023-12-05 13:27:55','2023-12-05 13:27:55'),
(322,'replicate User','api','2023-12-05 13:27:55','2023-12-05 13:27:55'),
(323,'reorder User','web','2023-12-05 13:27:55','2023-12-05 13:27:55'),
(324,'reorder User','api','2023-12-05 13:27:55','2023-12-05 13:27:55');
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_has_permissions`
--

DROP TABLE IF EXISTS `role_has_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) unsigned NOT NULL,
  `role_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `role_has_permissions_role_id_foreign` (`role_id`),
  CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_has_permissions`
--

LOCK TABLES `role_has_permissions` WRITE;
/*!40000 ALTER TABLE `role_has_permissions` DISABLE KEYS */;
INSERT INTO `role_has_permissions` VALUES
(1,1),
(2,1),
(3,1),
(4,1),
(5,1),
(6,1),
(7,1),
(8,1),
(9,1),
(10,1),
(11,1),
(12,1),
(13,1),
(14,1),
(15,1),
(16,1),
(17,1),
(18,1),
(19,1),
(20,1),
(21,1),
(22,1),
(23,1),
(24,1),
(25,1),
(26,1),
(27,1),
(28,1),
(29,1),
(30,1),
(31,1),
(32,1),
(33,1),
(34,1),
(35,1),
(36,1),
(37,1),
(38,1),
(39,1),
(40,1),
(41,1),
(42,1),
(43,1),
(44,1),
(45,1),
(46,1),
(47,1),
(48,1),
(49,1),
(50,1),
(51,1),
(52,1),
(53,1),
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
(67,1),
(68,1),
(69,1),
(70,1),
(71,1),
(72,1),
(73,1),
(74,1),
(75,1),
(76,1),
(77,1),
(78,1),
(79,1),
(80,1),
(81,1),
(82,1),
(83,1),
(84,1),
(85,1),
(86,1),
(87,1),
(88,1),
(89,1),
(90,1),
(91,1),
(92,1),
(93,1),
(94,1),
(95,1),
(96,1),
(97,1),
(98,1),
(99,1),
(100,1),
(101,1),
(102,1),
(103,1),
(104,1),
(105,1),
(106,1),
(107,1),
(108,1),
(109,1),
(110,1),
(111,1),
(112,1),
(113,1),
(114,1),
(115,1),
(116,1),
(117,1),
(118,1),
(119,1),
(120,1),
(121,1),
(122,1),
(123,1),
(124,1),
(125,1),
(126,1),
(127,1),
(128,1),
(129,1),
(130,1),
(131,1),
(132,1),
(133,1),
(134,1),
(135,1),
(136,1),
(137,1),
(138,1),
(139,1),
(140,1),
(141,1),
(142,1),
(143,1),
(144,1),
(145,1),
(146,1),
(147,1),
(148,1),
(149,1),
(150,1),
(151,1),
(152,1),
(153,1),
(154,1),
(155,1),
(156,1),
(157,1),
(158,1),
(159,1),
(160,1),
(161,1),
(162,1),
(163,1),
(164,1),
(165,1),
(166,1),
(167,1),
(168,1),
(169,1),
(170,1),
(171,1),
(172,1),
(173,1),
(174,1),
(175,1),
(176,1),
(177,1),
(178,1),
(179,1),
(180,1),
(181,1),
(182,1),
(183,1),
(184,1),
(185,1),
(186,1),
(187,1),
(188,1),
(189,1),
(190,1),
(191,1),
(192,1),
(193,1),
(194,1),
(195,1),
(196,1),
(197,1),
(198,1),
(199,1),
(200,1),
(201,1),
(202,1),
(203,1),
(204,1),
(205,1),
(206,1),
(207,1),
(208,1),
(209,1),
(210,1),
(211,1),
(212,1),
(213,1),
(214,1),
(215,1),
(216,1),
(217,1),
(218,1),
(219,1),
(220,1),
(221,1),
(222,1),
(223,1),
(224,1),
(225,1),
(226,1),
(227,1),
(228,1),
(229,1),
(230,1),
(231,1),
(232,1),
(233,1),
(234,1),
(235,1),
(236,1),
(237,1),
(238,1),
(239,1),
(240,1),
(241,1),
(242,1),
(243,1),
(244,1),
(245,1),
(246,1),
(247,1),
(248,1),
(249,1),
(250,1),
(251,1),
(252,1),
(253,1),
(254,1),
(255,1),
(256,1),
(257,1),
(258,1),
(259,1),
(260,1),
(261,1),
(262,1),
(263,1),
(264,1),
(265,1),
(266,1),
(267,1),
(268,1),
(269,1),
(270,1),
(271,1),
(272,1),
(273,1),
(274,1),
(275,1),
(276,1),
(277,1),
(278,1),
(279,1),
(280,1),
(281,1),
(282,1),
(283,1),
(284,1),
(285,1),
(286,1),
(287,1),
(288,1),
(289,1),
(290,1),
(291,1),
(292,1),
(293,1),
(294,1),
(295,1),
(296,1),
(297,1),
(298,1),
(299,1),
(300,1),
(301,1),
(302,1),
(303,1),
(304,1),
(305,1),
(306,1),
(307,1),
(308,1),
(309,1),
(310,1),
(311,1),
(312,1),
(313,1),
(314,1),
(315,1),
(316,1),
(317,1),
(318,1),
(319,1),
(320,1),
(321,1),
(322,1),
(323,1),
(324,1);
/*!40000 ALTER TABLE `role_has_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES
(1,'Admin','web',NULL,'2023-12-05 13:25:46'),
(2,'Editor','web','2023-12-05 14:36:14','2023-12-05 14:36:14'),
(3,'Author','web','2023-12-05 14:36:34','2023-12-05 14:36:34');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` VALUES
('GpQHrfZTmAN1RJCoVXclskzlaLwftGmUliXzlH7r',2,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36','YTo1OntzOjY6Il90b2tlbiI7czo0MDoicU5VRzJORHBvbXd1MFlmUG5VM2JGRDdHSGFuYlpIWWVoekdsanhaVCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDg6Imh0dHBzOi8vbGFyYXZlbC1saXZld2lyZS1ibG9nLnRlc3QvYWRtaW4vdXNlcnMvMiI7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjI7czoxNzoicGFzc3dvcmRfaGFzaF93ZWIiO3M6NjA6IiQyeSQxMCRZZXI5TkI3ZldoSHEzYWt4d3BRQkgubkhnLnBvNFhXM1h1WlJsdW90c3AwSTVqNXJFOGtMUyI7fQ==',1701816517);
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `socials`
--

DROP TABLE IF EXISTS `socials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `socials` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `facebook` varchar(2000) DEFAULT NULL,
  `instagram` varchar(2000) DEFAULT NULL,
  `linkedin` varchar(2000) DEFAULT NULL,
  `threads` varchar(2000) DEFAULT NULL,
  `x` varchar(2000) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `socials_user_id_foreign` (`user_id`),
  CONSTRAINT `socials_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `socials`
--

LOCK TABLES `socials` WRITE;
/*!40000 ALTER TABLE `socials` DISABLE KEYS */;
INSERT INTO `socials` VALUES
(1,1,'ndachimugo','ndachimugo','ndachimugo','ndachimugo','ndachimugo','2023-12-05 14:51:29','2023-12-05 14:51:29'),
(2,2,'admin','admin','admin','admin','admin','2023-12-05 22:34:44','2023-12-05 22:34:44');
/*!40000 ALTER TABLE `socials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subs`
--

DROP TABLE IF EXISTS `subs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `sub` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `category_id` bigint(20) unsigned NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `subs_category_id_foreign` (`category_id`),
  CONSTRAINT `subs_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subs`
--

LOCK TABLES `subs` WRITE;
/*!40000 ALTER TABLE `subs` DISABLE KEYS */;
/*!40000 ALTER TABLE `subs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `team_invitations`
--

DROP TABLE IF EXISTS `team_invitations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `team_invitations` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `team_id` bigint(20) unsigned NOT NULL,
  `email` varchar(255) NOT NULL,
  `role` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `team_invitations_team_id_email_unique` (`team_id`,`email`),
  CONSTRAINT `team_invitations_team_id_foreign` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `team_invitations`
--

LOCK TABLES `team_invitations` WRITE;
/*!40000 ALTER TABLE `team_invitations` DISABLE KEYS */;
/*!40000 ALTER TABLE `team_invitations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `team_user`
--

DROP TABLE IF EXISTS `team_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `team_user` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `team_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `role` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `team_user_team_id_user_id_unique` (`team_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `team_user`
--

LOCK TABLES `team_user` WRITE;
/*!40000 ALTER TABLE `team_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `team_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teams`
--

DROP TABLE IF EXISTS `teams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `teams` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `personal_team` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `teams_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teams`
--

LOCK TABLES `teams` WRITE;
/*!40000 ALTER TABLE `teams` DISABLE KEYS */;
INSERT INTO `teams` VALUES
(1,1,'Ndachi\'s Team',1,'2023-12-05 11:47:44','2023-12-05 11:47:44'),
(2,2,'Admin\'s Team',1,'2023-12-05 22:28:56','2023-12-05 22:28:56');
/*!40000 ALTER TABLE `teams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `text_widgets`
--

DROP TABLE IF EXISTS `text_widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `text_widgets` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) NOT NULL,
  `title` varchar(2048) NOT NULL,
  `content` longtext DEFAULT NULL,
  `active` tinyint(1) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `text_widgets_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `text_widgets`
--

LOCK TABLES `text_widgets` WRITE;
/*!40000 ALTER TABLE `text_widgets` DISABLE KEYS */;
INSERT INTO `text_widgets` VALUES
(1,'header','Blog','<p>Laravel Livewire Blog</p>',1,NULL,'2023-12-05 14:45:30','2023-12-05 14:45:30'),
(2,'about-us-page','About Us',NULL,1,NULL,'2023-12-05 14:46:03','2023-12-05 14:46:03'),
(3,'terms-and-conditions-page','Terms & Conditions',NULL,1,NULL,'2023-12-05 14:46:54','2023-12-05 14:46:54'),
(4,'privacy-policy-page','Privacy Policy',NULL,1,NULL,'2023-12-05 14:47:39','2023-12-05 14:47:39');
/*!40000 ALTER TABLE `text_widgets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `upvote_downvotes`
--

DROP TABLE IF EXISTS `upvote_downvotes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `upvote_downvotes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `is_upvote` tinyint(1) NOT NULL,
  `article_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `upvote_downvotes_article_id_foreign` (`article_id`),
  KEY `upvote_downvotes_user_id_foreign` (`user_id`),
  CONSTRAINT `upvote_downvotes_article_id_foreign` FOREIGN KEY (`article_id`) REFERENCES `articles` (`id`) ON DELETE CASCADE,
  CONSTRAINT `upvote_downvotes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `upvote_downvotes`
--

LOCK TABLES `upvote_downvotes` WRITE;
/*!40000 ALTER TABLE `upvote_downvotes` DISABLE KEYS */;
INSERT INTO `upvote_downvotes` VALUES
(1,1,1,1,'2023-12-05 14:53:30','2023-12-05 14:53:30'),
(2,0,1,2,'2023-12-05 22:45:53','2023-12-05 22:45:56'),
(3,1,2,2,'2023-12-05 22:46:09','2023-12-05 22:46:09');
/*!40000 ALTER TABLE `upvote_downvotes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `two_factor_secret` text DEFAULT NULL,
  `two_factor_recovery_codes` text DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `current_team_id` bigint(20) unsigned DEFAULT NULL,
  `profile_photo_path` varchar(2048) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `bio` longtext DEFAULT NULL,
  `avatar_url` varchar(255) DEFAULT NULL,
  `links` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`links`)),
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES
(1,'Ndachi Mugo','info@ndachi.dev','ndachi-mugo','2023-12-05 11:48:20','$2y$10$J.J2x0LQnKNR27oFg3Jyk.jWShUIHEJ0rbp/zt7GPCHd62BzzSxp.',NULL,NULL,NULL,NULL,NULL,NULL,'2023-12-05 11:47:44','2023-12-05 11:48:20',NULL,NULL,NULL,NULL),
(2,'Admin','admin@admin.dev','admin','2023-12-05 22:30:00','$2y$10$Yer9NB7fWhHq3akxwpQBH.nHg.po4XW3XuZRluotsp0I5j5rE8kLS',NULL,NULL,NULL,NULL,NULL,NULL,'2023-12-05 22:28:56','2023-12-05 22:34:44',NULL,'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer quis est porta, lobortis urna et, posuere nibh. Praesent id elit eget lacus eleifend malesuada. Curabitur venenatis leo vel mauris aliquet elementum. Morbi aliquet aliquam lectus non consequat. Praesent tristique tellus lacus, ac hendrerit ligula interdum id. Duis id rutrum tellus. Suspendisse nulla leo, venenatis sit amet vehicula nec, tempus ut diam. Nam tempus tortor non magna aliquam congue. Pellentesque ornare turpis et enim ullamcorper, quis dignissim tellus molestie. Nullam pulvinar dolor in bibendum laoreet. Nullam pellentesque gravida nisi, id ullamcorper dolor accumsan nec.</p>',NULL,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-06  1:50:07
