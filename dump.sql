-- MariaDB dump 10.19  Distrib 10.4.28-MariaDB, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: laravel_r1
-- ------------------------------------------------------
-- Server version	10.4.28-MariaDB

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
-- Table structure for table `cars`
--

DROP TABLE IF EXISTS `cars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cars` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `cartitle` varchar(100) NOT NULL,
  `price` double(8,2) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(100) NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT 1,
  `category_id` bigint(20) unsigned NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cars_category_id_foreign` (`category_id`),
  CONSTRAINT `cars_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cars`
--

LOCK TABLES `cars` WRITE;
/*!40000 ALTER TABLE `cars` DISABLE KEYS */;
INSERT INTO `cars` VALUES (1,'Corkery-Kessler',6196.00,'Sint et sit sed. Voluptatem blanditiis veniam id quaerat. Mollitia consequatur aperiam quia commodi expedita et. Sit recusandae aperiam consectetur ratione nobis sint officia.','1701878277.png',1,4,NULL,'2024-01-03 14:54:57','2024-01-03 14:54:57'),(2,'Waelchi Ltd',7600.00,'Tempore sunt doloribus ipsum quasi. Sit animi aut ipsa exercitationem est illum autem. Sit quam in tempora. Tempore consectetur sed ut nam similique.','1701878277.png',1,1,NULL,'2024-01-03 14:54:57','2024-01-03 14:54:57'),(3,'Kuphal Group',9276.00,'Ad sequi qui amet rerum. In ratione dignissimos quas. Optio dicta qui blanditiis culpa nihil. Voluptatem voluptatum neque hic explicabo et aliquam.','1702136138.jpg',1,5,NULL,'2024-01-03 14:54:58','2024-01-03 14:54:58'),(4,'Von, Johns and Schoen',7957.00,'Sit illo voluptatem ipsum vitae quo doloremque nostrum. Qui sit deserunt aut repellat placeat earum. Debitis exercitationem nulla illo autem perferendis non.','1701827314.png',1,1,NULL,'2024-01-03 14:54:58','2024-01-03 14:54:58'),(5,'Leuschke, Adams and O\'Connell',8239.00,'Aut veniam vitae quo laboriosam. Inventore a magnam consequatur et soluta. Consequuntur qui vitae optio modi sunt explicabo in. Repudiandae ut autem officia nihil ipsum quo similique.','1702136138.jpg',1,4,NULL,'2024-01-03 14:54:58','2024-01-03 14:54:58'),(6,'Lehner-Howe',9077.00,'Ipsam est modi ut eveniet in sed nobis. Pariatur cum odio sequi sit est neque molestiae.','1702130377.png',1,2,NULL,'2024-01-03 14:54:58','2024-01-03 14:54:58'),(7,'Stoltenberg, Yost and Brown',11072.00,'Voluptas voluptatem qui maiores tempore velit tenetur sit. Minus et aut perspiciatis est. Eos qui error soluta aut. Perspiciatis minima quos officia rerum quo aut corporis cum.','1701878277.png',1,1,NULL,'2024-01-03 14:54:58','2024-01-03 14:54:58'),(8,'Jacobs LLC',8223.00,'Placeat nemo dolor et et quia labore aut. Minus delectus iusto laborum repudiandae. Et quod est autem et natus aut ea ullam. Maxime provident numquam doloribus voluptatem.','1701878376.jpg',1,2,NULL,'2024-01-03 14:54:58','2024-01-03 14:54:58'),(9,'O\'Reilly, Bogisich and Hodkiewicz',10508.00,'Libero quam voluptatem mollitia nostrum totam iure modi. Ut qui qui sit rerum tenetur est.','1701878277.png',1,3,NULL,'2024-01-03 14:54:58','2024-01-03 14:54:58'),(10,'Schiller, Rogahn and Wiegand',10762.00,'Qui sit eum quaerat perferendis est ratione id. Velit exercitationem nam officiis facilis veritatis perspiciatis. Nobis aut numquam placeat ipsum voluptas reiciendis aliquam.','1702136138.jpg',1,5,NULL,'2024-01-03 14:54:58','2024-01-03 14:54:58');
/*!40000 ALTER TABLE `cars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `category_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Johnson-Mills','2024-01-03 14:54:55','2024-01-03 14:54:55'),(2,'Mosciski PLC','2024-01-03 14:54:55','2024-01-03 14:54:55'),(3,'Rice and Sons','2024-01-03 14:54:55','2024-01-03 14:54:55'),(4,'McGlynn PLC','2024-01-03 14:54:56','2024-01-03 14:54:56'),(5,'Beier Group','2024-01-03 14:54:57','2024-01-03 14:54:57');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_reset_tokens_table',1),(3,'2014_10_12_100000_create_password_resets_table',1),(4,'2019_08_19_000000_create_failed_jobs_table',1),(5,'2019_12_14_000001_create_personal_access_tokens_table',1),(6,'2022_12_13_154149_create_categories_table',1),(7,'2023_11_15_194627_create_cars_table',1),(8,'2023_11_21_161836_create_news_table',1),(9,'2023_12_09_142833_create_places_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `author` varchar(100) NOT NULL,
  `content` text NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT 1,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
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
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
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
-- Table structure for table `places`
--

DROP TABLE IF EXISTS `places`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `places` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `price_from` double(8,2) NOT NULL,
  `price_to` double(8,2) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(100) NOT NULL,
  `published` tinyint(1) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `places`
--

LOCK TABLES `places` WRITE;
/*!40000 ALTER TABLE `places` DISABLE KEYS */;
INSERT INTO `places` VALUES (1,'Bernicefort',449.00,1749.00,'Cupiditate quo et illum et et cum. Quia expedita et sed error officiis maxime.','1702142756.jpg',0,NULL,'2023-08-31 20:43:36','2024-01-03 14:54:59'),(2,'East Flavie',221.00,2664.00,'Minima totam dolorum est eius voluptatem qui. Rerum repudiandae veniam quos blanditiis ut quam.','1702415226.jpg',0,NULL,'2023-08-23 11:50:52','2024-01-03 14:54:59'),(3,'Wilmachester',276.00,1405.00,'Et at velit fugit qui. Ut est dicta minus ut. Rerum corporis corporis dolor architecto omnis.','1702415226.jpg',1,NULL,'2023-05-18 20:25:56','2024-01-03 14:54:59'),(4,'West Brockview',345.00,2363.00,'Tempore eligendi assumenda omnis enim iste in porro sed. Dolorem saepe illum eum occaecati quo eos.','1702142756.jpg',1,NULL,'2023-07-11 13:09:11','2024-01-03 14:54:59'),(5,'Jacobsonborough',268.00,2553.00,'Est mollitia qui sint repellat quia. In aut doloremque fugit dignissimos nam qui.','1702143200.jpg',0,NULL,'2023-01-19 03:56:00','2024-01-03 14:54:59'),(6,'Skilesburgh',274.00,1074.00,'Itaque et quaerat architecto voluptas cum. Velit reprehenderit cumque aperiam cumque.','1702142648.jpg',1,NULL,'2023-01-27 04:06:58','2024-01-03 14:54:59'),(7,'Hettiemouth',372.00,2515.00,'Aut voluptatem quam rem ut. Est vitae excepturi autem iure corrupti.','1702142756.jpg',1,NULL,'2023-01-18 23:27:09','2024-01-03 14:54:59'),(8,'Schoenmouth',491.00,1638.00,'Quidem sunt reiciendis unde sed. Nostrum sed enim sed quod occaecati voluptas.','1702142756.jpg',1,NULL,'2023-04-02 06:03:12','2024-01-03 14:54:59'),(9,'West Dortha',497.00,2761.00,'Soluta provident eaque molestiae iure culpa quo. Et quo delectus ipsa qui deserunt placeat.','1702143200.jpg',0,NULL,'2023-05-01 04:20:57','2024-01-03 14:54:59'),(10,'East Archibald',104.00,1230.00,'Dolore nulla qui voluptatem facere. Non omnis eum quia in ullam quia quod. Qui autem placeat error.','1702142510.jpg',0,NULL,'2023-12-27 21:36:46','2024-01-03 14:55:00'),(11,'South Jaleelville',415.00,2470.00,'Non porro animi blanditiis quod. Corporis cum quae explicabo. Ipsum amet esse dolore dignissimos.','1702142756.jpg',0,NULL,'2023-01-26 12:57:57','2024-01-03 14:55:00'),(12,'Kayceeborough',307.00,2254.00,'Esse debitis autem aspernatur et. Sint accusantium architecto autem quod quas et distinctio.','1702142510.jpg',1,NULL,'2023-01-06 23:07:44','2024-01-03 14:55:00'),(13,'Lake Biankaton',123.00,2929.00,'Aut cumque laborum impedit cumque. Laudantium nam harum earum delectus quasi.','1702415256.jpg',1,NULL,'2023-06-14 16:44:33','2024-01-03 14:55:01'),(14,'Sengershire',297.00,1956.00,'Quam nihil quia aut quia. Animi nihil soluta nulla. Quis deleniti sit nostrum corrupti cum rerum.','1702415226.jpg',0,NULL,'2023-11-06 16:24:34','2024-01-03 14:55:01'),(15,'Lake Kara',307.00,2965.00,'Et sunt modi delectus minima beatae sit. Dicta aliquam earum voluptatem non aut totam.','1702143200.jpg',0,NULL,'2023-12-12 18:04:49','2024-01-03 14:55:01'),(16,'Strosinchester',229.00,2496.00,'Tempora quas quidem error ut. Ut quos officiis voluptatibus inventore ipsa ut.','1702142648.jpg',1,NULL,'2023-09-26 12:22:19','2024-01-03 14:55:01'),(17,'East Stevie',136.00,2775.00,'Consectetur repudiandae incidunt et ipsam. Totam delectus cupiditate esse quasi et delectus.','1702415226.jpg',1,NULL,'2023-05-10 12:36:32','2024-01-03 14:55:01'),(18,'West Bernhard',469.00,1371.00,'Assumenda ea omnis minima reprehenderit. Placeat quo illum a dolor. Numquam omnis eos et aut.','1702142756.jpg',1,NULL,'2023-09-15 13:19:40','2024-01-03 14:55:01'),(19,'Alejandraberg',130.00,1556.00,'Nisi autem molestiae quia aut animi. Beatae unde itaque sed quo tenetur dolorem consequatur.','1702142756.jpg',1,NULL,'2023-11-01 12:12:00','2024-01-03 14:55:01'),(20,'Oberbrunnerland',329.00,1092.00,'Magnam quia quis in. Minima quia enim ex commodi possimus. In vero aut aut sunt est sunt.','1702142510.jpg',0,NULL,'2023-04-26 13:16:25','2024-01-03 14:55:02'),(21,'Heatherstad',315.00,2474.00,'Sunt facere ullam ex. Quo id qui assumenda quia. Voluptatem neque eum ut sint placeat.','1702142510.jpg',1,NULL,'2023-02-22 06:07:49','2024-01-03 14:55:02'),(22,'Gulgowskihaven',426.00,1367.00,'Quos qui quisquam harum ut inventore. Assumenda maxime dicta qui repudiandae et minima maiores.','1702415226.jpg',0,NULL,'2023-12-02 19:36:02','2024-01-03 14:55:02'),(23,'East Dion',312.00,2393.00,'Inventore aliquam quos quae ut consequatur praesentium repellat. Reiciendis velit animi et.','1702415256.jpg',1,NULL,'2023-02-09 22:26:29','2024-01-03 14:55:02'),(24,'Kadenmouth',125.00,2155.00,'Sit est dolor ut porro dignissimos. Est a omnis sit dolor itaque doloribus voluptas quas.','1702415256.jpg',0,NULL,'2023-10-26 19:09:19','2024-01-03 14:55:02'),(25,'New Arlostad',311.00,1237.00,'Ut ut quo quaerat distinctio cumque. Sequi reprehenderit cum laudantium est sapiente modi.','1702142510.jpg',0,NULL,'2023-05-23 18:54:35','2024-01-03 14:55:02'),(26,'Dudleybury',160.00,2048.00,'Doloribus nihil sed impedit qui ut id. Nisi sint nam sit ut in nulla.','1702142648.jpg',1,NULL,'2023-08-31 23:11:57','2024-01-03 14:55:03'),(27,'Lake Ivy',471.00,2750.00,'Enim facere in a deserunt atque. Quibusdam ipsa asperiores occaecati doloremque.','1702415226.jpg',0,NULL,'2023-02-27 18:17:39','2024-01-03 14:55:04'),(28,'Port Urban',118.00,2572.00,'Porro modi eius dolorem veritatis ut ab quae. Sit tenetur non qui porro.','1702142648.jpg',0,NULL,'2023-03-18 09:57:20','2024-01-03 14:55:04'),(29,'Parkertown',499.00,1326.00,'Aliquid est sint quis aut ipsa exercitationem. Laboriosam dolorum eveniet qui architecto magni.','1702143200.jpg',0,NULL,'2023-04-19 20:14:30','2024-01-03 14:55:04'),(30,'Buckridgeville',443.00,1581.00,'Et ad nemo inventore sit. Doloremque ut quisquam quisquam blanditiis ullam repellendus aperiam.','1702142756.jpg',0,NULL,'2023-08-01 20:15:10','2024-01-03 14:55:04'),(31,'Calistashire',410.00,2375.00,'Est omnis vel vel aut et provident. Et odit placeat atque minus libero.','1702415226.jpg',0,NULL,'2023-12-12 17:10:43','2024-01-03 14:55:04'),(32,'Wittingside',192.00,2324.00,'Ad velit ea nihil facilis excepturi dolor. Soluta quaerat consequatur quos eligendi amet.','1702142756.jpg',1,NULL,'2023-04-04 14:47:09','2024-01-03 14:55:05'),(33,'New Wade',500.00,1458.00,'Quia libero voluptas dolor tenetur eaque. Itaque deleniti hic rerum debitis sit tempore qui.','1702415226.jpg',0,NULL,'2023-09-19 03:19:12','2024-01-03 14:55:05'),(34,'New Darian',381.00,2608.00,'Veniam aspernatur magnam nisi quisquam. Accusantium labore maiores architecto dolores est.','1702142510.jpg',0,NULL,'2023-10-20 05:16:13','2024-01-03 14:55:05'),(35,'New Antonia',218.00,2148.00,'Veniam dignissimos sint ullam veniam fugiat debitis. Dolore nam autem reiciendis dolor.','1702415256.jpg',1,NULL,'2023-05-19 02:15:23','2024-01-03 14:55:05'),(36,'New Efrenton',381.00,2090.00,'Et rerum repellendus deserunt. Atque ipsum reiciendis modi hic. Vitae provident dicta aut eligendi.','1702142510.jpg',1,NULL,'2023-11-10 15:51:17','2024-01-03 14:55:05'),(37,'Laronbury',262.00,1489.00,'Temporibus eos veritatis quaerat quo similique culpa. Aut recusandae officiis quia quo accusamus.','1702142756.jpg',1,NULL,'2023-12-09 13:07:58','2024-01-03 14:55:06'),(38,'New Marlontown',278.00,2165.00,'Non perferendis corporis optio sit quis ut adipisci. Quos expedita dolorum perferendis ducimus.','1702142510.jpg',1,NULL,'2023-12-20 22:18:14','2024-01-03 14:55:06'),(39,'New Carroll',236.00,2485.00,'Quasi dicta rerum non. Non perspiciatis quis rerum. Voluptatem non officiis rem minima sint ut.','1702415256.jpg',1,NULL,'2023-07-01 02:59:10','2024-01-03 14:55:06'),(40,'Port Shanon',359.00,1043.00,'Perferendis quam aliquam aut ipsa eos. Incidunt minima aut qui consequuntur.','1702142510.jpg',1,NULL,'2023-02-09 16:04:21','2024-01-03 14:55:06'),(41,'Leannonhaven',463.00,2990.00,'Fuga cum corrupti deserunt. Labore tenetur iste rem. Saepe id cumque fuga quas ullam dolorum.','1702142756.jpg',0,NULL,'2023-05-17 02:13:28','2024-01-03 14:55:06'),(42,'Grimesmouth',131.00,2966.00,'Iusto optio molestiae commodi. Ad molestiae eius iusto officia beatae nihil dolores.','1702143200.jpg',1,NULL,'2023-03-26 01:05:44','2024-01-03 14:55:07'),(43,'South Marciabury',470.00,2930.00,'Quo rerum eaque sed nulla qui. Qui et aut est ut eum velit in odit.','1702415256.jpg',0,NULL,'2023-03-11 04:43:20','2024-01-03 14:55:07'),(44,'Harveyburgh',167.00,2733.00,'Ipsa laboriosam nemo fugit. Culpa unde illo quo a. Doloremque fugiat et sed soluta consequuntur.','1702143200.jpg',1,NULL,'2023-03-28 03:03:38','2024-01-03 14:55:07'),(45,'Port Katrinechester',464.00,1952.00,'Atque placeat harum et. Ex ut qui dolor nisi. Quam repellendus quia sunt.','1702142648.jpg',0,NULL,'2023-08-28 12:57:20','2024-01-03 14:55:08'),(46,'Darronhaven',121.00,2651.00,'Voluptas placeat porro quia odio dolorem voluptatem. Saepe aut quibusdam eligendi aliquid.','1702142648.jpg',1,NULL,'2023-03-04 02:56:57','2024-01-03 14:55:09'),(47,'Berenicetown',205.00,1339.00,'Aut qui magni alias est veniam. Sit placeat quis quod. Qui ut qui laudantium nobis aliquid.','1702143200.jpg',1,NULL,'2023-06-20 05:47:46','2024-01-03 14:55:09'),(48,'New Alicestad',420.00,1955.00,'Sunt facilis minus eius ullam aliquam. Dolorem itaque est sit.','1702415226.jpg',1,NULL,'2023-06-26 00:58:55','2024-01-03 14:55:09'),(49,'D\'Amoreburgh',379.00,2612.00,'Animi porro ad est ea sequi odit. Et ea accusamus eum nisi eveniet illo.','1702415226.jpg',1,NULL,'2023-05-05 01:17:12','2024-01-03 14:55:09'),(50,'West Tara',135.00,2925.00,'Omnis quas eum aut repudiandae amet hic. Voluptas suscipit dolor animi est.','1702415256.jpg',1,NULL,'2023-07-16 18:53:39','2024-01-03 14:55:09'),(51,'Marcellechester',418.00,2587.00,'Ullam molestiae voluptatem quas et. Velit soluta repellendus similique sapiente quasi.','1702142510.jpg',0,NULL,'2023-10-15 15:56:25','2024-01-03 14:55:09'),(52,'Beattyborough',116.00,1918.00,'Ut sed suscipit facere nulla. Consequatur iure omnis aliquid rerum perspiciatis vitae eveniet.','1702143200.jpg',0,NULL,'2023-11-26 13:27:26','2024-01-03 14:55:09'),(53,'Jonatanmouth',434.00,2173.00,'Ea dolore aperiam cumque alias. Dolores voluptates ut aliquid consequatur at saepe.','1702415256.jpg',1,NULL,'2023-01-19 05:12:33','2024-01-03 14:55:09'),(54,'South Tyree',375.00,2814.00,'Porro fugit expedita eius quia. Ex qui autem vero a.','1702415226.jpg',0,NULL,'2023-03-20 18:46:25','2024-01-03 14:55:10'),(55,'West Rudy',448.00,2037.00,'Iusto inventore laborum omnis. Possimus ipsam tempore molestiae. Ea aut beatae est quas fugiat.','1702142510.jpg',1,NULL,'2023-09-14 17:27:59','2024-01-03 14:55:10'),(56,'Stantonbury',305.00,2970.00,'Et ut vitae recusandae et dolor possimus voluptas. Consequatur maxime odio velit.','1702415256.jpg',1,NULL,'2023-01-04 08:36:59','2024-01-03 14:55:10'),(57,'Lake Lillianaberg',129.00,1070.00,'Non delectus cum dicta. Perferendis reprehenderit ut sed sequi.','1702142648.jpg',0,NULL,'2023-08-07 19:35:42','2024-01-03 14:55:11'),(58,'West Esther',181.00,1925.00,'Provident magnam non qui eaque aut et. Illo et dolores dolore eveniet. Modi dolor ea illum aut et.','1702415226.jpg',1,NULL,'2023-02-20 18:15:36','2024-01-03 14:55:11'),(59,'Electashire',254.00,1217.00,'Quia qui qui minus. Aut saepe at ut cum in fugit laborum. Excepturi possimus illo quibusdam vitae.','1702142648.jpg',1,NULL,'2023-07-29 18:43:07','2024-01-03 14:55:11'),(60,'Kuhnmouth',197.00,2374.00,'Molestiae sequi et quo quo iusto. Pariatur qui quia esse.','1702142756.jpg',0,NULL,'2023-01-22 21:17:49','2024-01-03 14:55:11'),(61,'Destineyview',100.00,1814.00,'Unde amet nulla occaecati veniam. Aliquam temporibus sed vel natus. Qui possimus sed ut qui fugiat.','1702142756.jpg',1,NULL,'2023-04-05 06:01:38','2024-01-03 14:55:11'),(62,'Lake Kristyview',211.00,2631.00,'Eius fugiat quia ea ipsum unde quo necessitatibus. Quia quod sed sint.','1702415256.jpg',0,NULL,'2023-04-25 11:31:18','2024-01-03 14:55:11'),(63,'Valentinafurt',153.00,1113.00,'Rerum magni optio fugiat aut et. Ea perspiciatis vitae et et.','1702142510.jpg',0,NULL,'2023-06-22 22:23:10','2024-01-03 14:55:11'),(64,'Murazikhaven',211.00,2536.00,'Delectus porro accusantium doloribus sapiente fuga id. Ab molestiae quam ducimus.','1702142510.jpg',0,NULL,'2023-08-18 08:33:32','2024-01-03 14:55:11'),(65,'Michalemouth',253.00,1895.00,'Commodi cum sed minima praesentium. Temporibus amet adipisci et id.','1702143200.jpg',1,NULL,'2023-08-25 17:16:09','2024-01-03 14:55:12'),(66,'VonRuedenhaven',386.00,2124.00,'Qui optio necessitatibus omnis corrupti. Harum sunt sed eum. Ab in earum et optio autem.','1702142648.jpg',0,NULL,'2023-02-02 10:41:00','2024-01-03 14:55:12'),(67,'Rempelburgh',482.00,1805.00,'Nemo rerum quam nam praesentium. Qui ut maiores sint at.','1702142648.jpg',1,NULL,'2023-04-07 04:25:19','2024-01-03 14:55:12'),(68,'Lake Doyle',187.00,2025.00,'Ratione ut quam aut ut. Alias doloribus non eos assumenda accusamus.','1702415226.jpg',1,NULL,'2023-03-10 23:42:21','2024-01-03 14:55:12'),(69,'East Albina',119.00,2509.00,'Eaque harum corporis sapiente ullam quae. Praesentium harum minus a impedit reprehenderit maxime.','1702142510.jpg',1,NULL,'2023-09-20 15:15:26','2024-01-03 14:55:13'),(70,'Port Roscoe',290.00,2232.00,'Impedit qui voluptatem hic non quo aut aliquid. Est reiciendis et veritatis unde.','1702142510.jpg',1,NULL,'2023-09-09 15:58:29','2024-01-03 14:55:13'),(71,'O\'Connellton',310.00,2465.00,'Consectetur voluptatem unde quia ratione. Consequatur voluptatem ea ut.','1702142756.jpg',1,NULL,'2023-06-19 19:23:32','2024-01-03 14:55:13'),(72,'South Jewell',462.00,2792.00,'Atque laborum ullam in ea. Quae reprehenderit nulla et sed. Dolores corrupti aut quis facere.','1702415226.jpg',1,NULL,'2023-03-04 15:47:00','2024-01-03 14:55:13'),(73,'Lake Sonya',293.00,2583.00,'Corporis rem et autem. Nisi saepe eligendi et. Corporis saepe nulla recusandae.','1702415256.jpg',0,NULL,'2023-03-21 10:12:31','2024-01-03 14:55:13'),(74,'Port Vincentton',462.00,2646.00,'Aut ducimus non aliquid. Est cum magnam labore. Non alias doloribus sunt similique quasi ipsam qui.','1702143200.jpg',0,NULL,'2023-03-31 07:16:35','2024-01-03 14:55:14'),(75,'Filibertoport',291.00,1770.00,'Molestiae earum ut illum. Voluptatem sit a maiores ut reiciendis.','1702142756.jpg',1,NULL,'2023-12-07 04:22:55','2024-01-03 14:55:15'),(76,'West Kylee',325.00,2828.00,'Eveniet eligendi voluptatem enim tempore vel. Aut reprehenderit numquam eligendi voluptas.','1702415256.jpg',0,NULL,'2023-04-22 14:57:38','2024-01-03 14:55:16'),(77,'Lake Jordon',363.00,1581.00,'Sunt omnis sint et veritatis commodi iure commodi. Et vel maiores consectetur.','1702415256.jpg',0,NULL,'2023-08-21 12:29:19','2024-01-03 14:55:16'),(78,'North Garnetland',487.00,2420.00,'Rem eligendi atque aut. Eos maiores nisi natus quia earum odit. Autem nam quidem mollitia quasi.','1702415226.jpg',0,NULL,'2023-09-19 14:07:00','2024-01-03 14:55:17'),(79,'East Warren',108.00,2099.00,'Et quo consequatur ut est exercitationem qui. Labore eaque dolore et. Placeat sit et iure tempora.','1702415256.jpg',1,NULL,'2023-07-17 05:45:36','2024-01-03 14:55:17'),(80,'Borismouth',475.00,1385.00,'Alias iure necessitatibus ea voluptate modi dolor molestias. Id autem eum cum fuga facere.','1702415226.jpg',0,NULL,'2023-08-14 22:25:21','2024-01-03 14:55:17'),(81,'Port Lizeth',428.00,1970.00,'Et omnis nihil sed voluptas possimus. Ipsum natus ratione neque quia sint quibusdam.','1702415226.jpg',1,NULL,'2023-03-16 19:06:09','2024-01-03 14:55:17'),(82,'East Friedrichstad',198.00,2853.00,'Ipsam corporis debitis asperiores aut et dolor et dolorum. Veniam et ex dolorem velit et.','1702142648.jpg',0,NULL,'2023-01-12 21:07:39','2024-01-03 14:55:17'),(83,'Briellefort',216.00,1806.00,'Est doloremque voluptatum iusto molestias alias. Eum error et et. Optio id sed eum quibusdam modi.','1702142756.jpg',1,NULL,'2023-10-25 22:45:01','2024-01-03 14:55:17'),(84,'Romagueraburgh',315.00,2630.00,'Alias commodi quidem praesentium. Ipsum est quas dolore amet nam.','1702142510.jpg',1,NULL,'2023-10-20 08:29:24','2024-01-03 14:55:17'),(85,'South Montanaview',349.00,2713.00,'Aut fugit aut beatae aut quisquam. Explicabo doloremque sit sint eveniet.','1702142756.jpg',0,NULL,'2023-06-17 03:52:47','2024-01-03 14:55:18'),(86,'Ciaraview',495.00,1257.00,'Est qui quas enim tempore qui et alias at. Ex dignissimos aperiam labore autem consequuntur.','1702143200.jpg',1,NULL,'2023-07-10 00:37:33','2024-01-03 14:55:18'),(87,'Brandtville',438.00,1227.00,'Et est facilis inventore deleniti. Cupiditate sed dolor minima qui qui soluta minima laborum.','1702415256.jpg',1,NULL,'2023-03-21 06:17:48','2024-01-03 14:55:18'),(88,'Kilbacktown',412.00,2998.00,'Eum et sint id. Doloremque officiis laboriosam ea praesentium.','1702143200.jpg',0,NULL,'2023-09-16 09:06:14','2024-01-03 14:55:18'),(89,'Gustaveshire',370.00,1298.00,'Sunt omnis ad tenetur corporis sit et temporibus. Exercitationem non explicabo iste nemo.','1702415256.jpg',0,NULL,'2023-04-09 01:05:16','2024-01-03 14:55:18'),(90,'New Casey',168.00,2642.00,'Quisquam non voluptas praesentium consectetur. Accusamus aut ab doloremque velit est animi.','1702415256.jpg',1,NULL,'2023-07-03 05:12:25','2024-01-03 14:55:18'),(91,'East Savannahville',307.00,2100.00,'Consequatur repellendus sit id optio. Natus cupiditate omnis cupiditate ullam.','1702142510.jpg',0,NULL,'2023-02-26 21:07:16','2024-01-03 14:55:18'),(92,'Jenniferchester',385.00,2965.00,'Ut sed non aut voluptatem. Quis voluptatum quia provident nihil et. Quas sit qui non.','1702142756.jpg',0,NULL,'2023-11-29 02:07:46','2024-01-03 14:55:19'),(93,'Kassandraburgh',213.00,1531.00,'Eaque nihil cum et ex illo ipsam. Corporis corporis ipsam quis. Nihil dolor nisi ab.','1702143200.jpg',1,NULL,'2023-06-07 15:01:56','2024-01-03 14:55:19'),(94,'South Brantborough',167.00,2305.00,'Facere dignissimos voluptatem et rerum voluptatem et. Incidunt minima blanditiis ipsum.','1702415256.jpg',0,NULL,'2023-06-02 02:54:03','2024-01-03 14:55:20'),(95,'South Naomi',332.00,2904.00,'Est quam numquam enim. Blanditiis praesentium maxime est delectus cupiditate sit ex et.','1702415226.jpg',1,NULL,'2023-09-02 20:54:33','2024-01-03 14:55:20'),(96,'West Alyceport',237.00,1798.00,'Ut tempore inventore inventore. Ut tenetur aut magni quia ut aut eum.','1702143200.jpg',0,NULL,'2023-02-02 00:00:30','2024-01-03 14:55:21'),(97,'West Jasperville',168.00,1269.00,'Impedit natus placeat ab quia necessitatibus tempora aut. Qui praesentium fugit quod et rerum.','1702142756.jpg',0,NULL,'2023-08-04 04:48:01','2024-01-03 14:55:21'),(98,'North Julesview',274.00,1489.00,'Eum dolorem dolor odio commodi architecto nulla. Sed iste distinctio eos ut vel.','1702142510.jpg',1,NULL,'2023-09-27 07:41:15','2024-01-03 14:55:21'),(99,'East Omaside',186.00,2472.00,'Repellat sequi non deserunt commodi sit. Voluptate commodi quo sequi quia.','1702415226.jpg',1,NULL,'2023-03-16 13:25:49','2024-01-03 14:55:21'),(100,'Ankundingburgh',259.00,2011.00,'Repudiandae voluptas omnis odio eveniet. Porro minus eum error cum. Voluptate sint minus delectus.','1702143200.jpg',0,NULL,'2023-07-22 19:03:21','2024-01-03 14:55:22');
/*!40000 ALTER TABLE `places` ENABLE KEYS */;
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
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `expired` tinyint(1) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Prof. Deonte Mueller DVM','ptromp@example.com','2024-01-03 14:54:50','$2y$12$3h8ebBa048ibiYsdKdszLunj2bbkfeok766Vkkrna4lCpX7M0LGym','+13607884555',1,'VbpPEtyMt2','2024-01-03 14:54:50','2024-01-03 14:54:50'),(2,'Lenna Dibbert I','dgulgowski@example.org','2024-01-03 14:54:50','$2y$12$3h8ebBa048ibiYsdKdszLunj2bbkfeok766Vkkrna4lCpX7M0LGym','332-399-4517',1,'q8CdmBNaHe','2024-01-03 14:54:51','2024-01-03 16:01:01'),(3,'Dr. Wilber Johnston','ylehner@example.org','2024-01-03 14:54:50','$2y$12$3h8ebBa048ibiYsdKdszLunj2bbkfeok766Vkkrna4lCpX7M0LGym','1-402-762-1062',1,'mgwddT1Vc1','2024-01-03 14:54:53','2024-01-03 16:01:01'),(4,'Miss Elizabeth White','aconnelly@example.org','2024-01-03 14:54:50','$2y$12$3h8ebBa048ibiYsdKdszLunj2bbkfeok766Vkkrna4lCpX7M0LGym','+1.985.656.5496',1,'FAfLQqeO3C','2024-01-03 14:54:53','2024-01-03 14:54:53'),(5,'Selina Batz PhD','kole.corwin@example.com','2024-01-03 14:54:50','$2y$12$3h8ebBa048ibiYsdKdszLunj2bbkfeok766Vkkrna4lCpX7M0LGym','+1 (541) 461-5764',1,'fw6QZ1ngsk','2024-01-03 14:54:54','2024-01-03 16:01:02'),(6,'Dr. Amalia Gerhold MD','miller.gloria@example.org','2024-01-03 14:54:50','$2y$12$3h8ebBa048ibiYsdKdszLunj2bbkfeok766Vkkrna4lCpX7M0LGym','(936) 807-1565',1,'tfbR2iQUkr','2024-01-03 14:54:54','2024-01-03 14:54:54'),(7,'Cathy Senger Sr.','kane30@example.com','2024-01-03 14:54:50','$2y$12$3h8ebBa048ibiYsdKdszLunj2bbkfeok766Vkkrna4lCpX7M0LGym','+19562990953',1,'ZzPKWfpiSu','2024-01-03 14:54:54','2024-01-03 16:01:02'),(8,'Ashly King','jordan.miller@example.com','2024-01-03 14:54:50','$2y$12$3h8ebBa048ibiYsdKdszLunj2bbkfeok766Vkkrna4lCpX7M0LGym','224.961.9778',1,'D1cO0jdkte','2024-01-03 14:54:54','2024-01-03 14:54:54'),(9,'Erick Cartwright DVM','jsenger@example.org','2024-01-03 14:54:50','$2y$12$3h8ebBa048ibiYsdKdszLunj2bbkfeok766Vkkrna4lCpX7M0LGym','+1 (682) 342-7401',1,'WfqHpbikC8','2024-01-03 14:54:54','2024-01-03 16:01:02'),(10,'Maida Fritsch','qkrajcik@example.com','2024-01-03 14:54:50','$2y$12$3h8ebBa048ibiYsdKdszLunj2bbkfeok766Vkkrna4lCpX7M0LGym','1-310-715-9616',1,'sWw1ww3Pug','2024-01-03 14:54:55','2024-01-03 14:54:55'),(11,'sara','sara@gmail.com',NULL,'$2y$12$tUVxrNm70Y267dJLViUi/eyDyTit7wexW1doY6i9BF2tQJAXeHvRC','0110210347',1,NULL,'2024-01-03 15:02:50','2024-01-03 16:01:02'),(12,'Ali','ali@gmail.com',NULL,'$2y$12$EEzVf66pMM7m7lXu1TF2PemmxrVNPBNowYBU8rmmLNPy3bqAaNpsW','0100230059',1,NULL,'2024-01-03 16:09:11','2024-01-03 16:11:46'),(13,'Salma','salma@gmail.com',NULL,'$2y$12$ZmZYLVDDsxTX1UjBjI5w/Opn1KID2CG2HLzU5B/W7Zsy5B6Hq0w/.','012098764673',1,NULL,'2024-01-03 16:14:28','2024-01-03 16:16:13');
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

-- Dump completed on 2024-01-10  1:29:47
