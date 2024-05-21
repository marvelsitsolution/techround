-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: contact
-- ------------------------------------------------------
-- Server version	5.7.36

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
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contacts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `added_by` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `contacts_added_by_foreign` (`added_by`),
  CONSTRAINT `contacts_added_by_foreign` FOREIGN KEY (`added_by`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
INSERT INTO `contacts` VALUES (1,'Kunal Gandhi','9773304416','kunal_coolness@yahoo.co.in','2024-05-17 06:31:20','2024-05-19 06:17:43',NULL),(2,'Steven Ked','764673008','steven.kerr@gmail.com','2024-05-20 16:41:36','2024-05-20 18:03:01',1),(3,'Andrew Burgess','8555884854','andrew.burgess@gmail.com','2024-05-20 16:41:36','2024-05-20 16:41:36',1),(4,'Kylie McGrath','2970559834','kylie.mcgrath@gmail.com','2024-05-20 16:41:36','2024-05-20 16:41:36',1),(5,'Madeleine Rees','4316460090','madeleine.rees@gmail.com','2024-05-20 16:41:36','2024-05-20 16:41:36',1),(6,'Paul Bower','2305103767','paul.bower@gmail.com','2024-05-20 16:41:36','2024-05-20 16:41:36',1),(7,'Sue Mills','5002145095','sue.mills@gmail.com','2024-05-20 16:41:36','2024-05-20 16:41:36',1),(8,'Molly Knox','8725789182','molly.knox@gmail.com','2024-05-20 16:41:36','2024-05-20 16:41:36',1),(9,'Alexander Brown','3713525746','alexander.brown@gmail.com','2024-05-20 16:41:36','2024-05-20 16:41:36',1),(10,'Anthony Harris','9035198000','anthony.harris@gmail.com','2024-05-20 16:41:36','2024-05-20 16:41:36',1),(11,'Theresa Campbell','7947675116','theresa.campbell@gmail.com','2024-05-20 16:41:36','2024-05-20 16:41:36',1),(12,'Blake Martin','2485553579','blake.martin@gmail.com','2024-05-20 16:41:36','2024-05-20 16:41:36',1),(13,'Oliver Peake','8625978370','oliver.peake@gmail.com','2024-05-20 16:41:36','2024-05-20 16:41:36',1),(14,'Fiona Sutherland','7660213618','fiona.sutherland@gmail.com','2024-05-20 16:41:36','2024-05-20 16:41:36',1),(15,'Joan Kerr','3470002688','joan.kerr@gmail.com','2024-05-20 16:41:36','2024-05-20 16:41:36',1),(16,'Jasmine Arnold','5753237411','jasmine.arnold@gmail.com','2024-05-20 16:41:36','2024-05-20 16:41:36',1),(17,'Jane Mills','6390271712','jane.mills@gmail.com','2024-05-20 16:41:36','2024-05-20 16:41:36',1),(18,'Colin Randall','7963698137','colin.randall@gmail.com','2024-05-20 16:41:36','2024-05-20 16:41:36',1),(19,'Carl Langdon','6588155636','carl.langdon@gmail.com','2024-05-20 16:41:36','2024-05-20 16:41:36',1),(20,'Keith Payne','4537666109','keith.payne@gmail.com','2024-05-20 16:41:36','2024-05-20 16:41:36',1),(21,'Sonia Taylor','1086586930','sonia.taylor@gmail.com','2024-05-20 16:41:36','2024-05-20 16:41:36',1),(22,'Carol Payne','2940862982','carol.payne@gmail.com','2024-05-20 16:41:36','2024-05-20 16:41:36',1),(23,'Stephen Bell','9906373790','stephen.bell@gmail.com','2024-05-20 16:41:36','2024-05-20 16:41:36',1),(24,'Steven King','7088340812','steven.king@gmail.com','2024-05-20 16:41:36','2024-05-20 16:41:36',1),(25,'Rachel Wallace','6154292826','rachel.wallace@gmail.com','2024-05-20 16:41:36','2024-05-20 16:41:36',1),(26,'Julian Sanderson','197270353','julian.sanderson@gmail.com','2024-05-20 16:41:36','2024-05-20 16:41:36',1),(27,'Dominic Short','7409698288','dominic.short@gmail.com','2024-05-20 16:41:36','2024-05-20 16:41:36',1),(28,'Anne Campbell','161170054','anne.campbell@gmail.com','2024-05-20 16:41:36','2024-05-20 16:41:36',1),(29,'Michael Vance','3232111855','michael.vance@gmail.com','2024-05-20 16:41:36','2024-05-20 16:41:36',1),(30,'Samantha Mackay','3201679031','samantha.mackay@gmail.com','2024-05-20 16:41:36','2024-05-20 16:41:36',1),(31,'Jake Davidson','8647116527','jake.davidson@gmail.com','2024-05-20 16:41:36','2024-05-20 16:41:36',1),(32,'Sebastian Mitchell','6009670624','sebastian.mitchell@gmail.com','2024-05-20 16:41:36','2024-05-20 16:41:36',1),(33,'Kevin Langdon','4037875266','kevin.langdon@gmail.com','2024-05-20 16:41:36','2024-05-20 16:41:36',1),(34,'Adrian Parr','9525237236','adrian.parr@gmail.com','2024-05-20 16:41:36','2024-05-20 16:41:36',1),(35,'Sean Sharp','5202696257','sean.sharp@gmail.com','2024-05-20 16:41:36','2024-05-20 16:41:36',1),(36,'Amanda Walker','540136155','amanda.walker@gmail.com','2024-05-20 16:41:36','2024-05-20 16:41:36',1),(37,'Amanda Peake','4163294071','amanda.peake@gmail.com','2024-05-20 16:41:36','2024-05-20 16:41:36',1),(38,'Joe Bower','8985875595','joe.bower@gmail.com','2024-05-20 16:41:36','2024-05-20 16:41:36',1),(39,'Karen Davidson','1535282684','karen.davidson@gmail.com','2024-05-20 16:41:36','2024-05-20 16:41:36',1),(40,'Alan Blake','5698380598','alan.blake@gmail.com','2024-05-20 16:41:36','2024-05-20 16:41:36',1),(41,'Jake Lee','6234002996','jake.lee@gmail.com','2024-05-20 16:41:36','2024-05-20 16:41:36',1),(42,'Sonia Burgess','6954054919','sonia.burgess@gmail.com','2024-05-20 16:41:36','2024-05-20 16:41:36',1),(43,'Irene Knox','139139901','irene.knox@gmail.com','2024-05-20 16:41:36','2024-05-20 16:41:36',1),(44,'Frank Mitchell','3396319271','frank.mitchell@gmail.com','2024-05-20 16:41:36','2024-05-20 16:41:36',1),(45,'Kimberly Smith','4947594160','kimberly.smith@gmail.com','2024-05-20 16:41:36','2024-05-20 16:41:36',1),(46,'Dylan McGrath','8343361581','dylan.mcgrath@gmail.com','2024-05-20 16:41:36','2024-05-20 16:41:36',1),(47,'Anne McDonald','5340017955','anne.mcdonald@gmail.com','2024-05-20 16:41:36','2024-05-20 16:41:36',1),(48,'Joan Peake','5211045781','joan.peake@gmail.com','2024-05-20 16:41:36','2024-05-20 16:41:36',1),(49,'Eric Short','1914587706','eric.short@gmail.com','2024-05-20 16:41:36','2024-05-20 16:41:36',1),(50,'Alexandra White','649076962','alexandra.white@gmail.com','2024-05-20 16:41:36','2024-05-20 16:41:36',1),(51,'Rebecca Morrison','3342354654','rebecca.morrison@gmail.com','2024-05-20 16:41:36','2024-05-20 16:41:36',1),(52,'Austin Mills','8754651370','austin.mills@gmail.com','2024-05-20 16:41:36','2024-05-20 16:41:36',1),(53,'Victoria Gray','293464772','victoria.gray@gmail.com','2024-05-20 16:41:36','2024-05-20 16:41:36',1),(54,'Trevor Taylor','469734475','trevor.taylor@gmail.com','2024-05-20 16:41:36','2024-05-20 16:41:36',1),(55,'Dorothy Lambert','2747575775','dorothy.lambert@gmail.com','2024-05-20 16:41:36','2024-05-20 16:41:36',1),(56,'Colin Welch','7418647570','colin.welch@gmail.com','2024-05-20 16:41:36','2024-05-20 16:41:36',1),(57,'Brandon Hodges','2930861831','brandon.hodges@gmail.com','2024-05-20 16:41:36','2024-05-20 16:41:36',1),(58,'Piers North','3177357641','piers.north@gmail.com','2024-05-20 16:41:36','2024-05-20 16:41:36',1),(59,'Lisa Metcalfe','349642699','lisa.metcalfe@gmail.com','2024-05-20 16:41:36','2024-05-20 16:41:36',1),(60,'Amanda Simpson','101486220','amanda.simpson@gmail.com','2024-05-20 16:41:36','2024-05-20 16:41:36',1),(61,'Nathan Poole','6698509253','nathan.poole@gmail.com','2024-05-20 16:41:36','2024-05-20 16:41:36',1),(62,'Carol Gill','7272965062','carol.gill@gmail.com','2024-05-20 16:41:36','2024-05-20 16:41:36',1),(63,'Luke Clarkson','9009995279','luke.clarkson@gmail.com','2024-05-20 16:41:36','2024-05-20 16:41:36',1),(64,'Lucas McGrath','238694412','lucas.mcgrath@gmail.com','2024-05-20 16:41:36','2024-05-20 16:41:36',1),(65,'Elizabeth Lambert','4553846644','elizabeth.lambert@gmail.com','2024-05-20 16:41:36','2024-05-20 16:41:36',1),(66,'Charles Nolan','3214539436','charles.nolan@gmail.com','2024-05-20 16:41:36','2024-05-20 16:41:36',1),(67,'Tracey MacLeod','3740645781','tracey.macleod@gmail.com','2024-05-20 16:41:36','2024-05-20 16:41:36',1),(68,'Austin Dickens','3749975201','austin.dickens@gmail.com','2024-05-20 16:41:36','2024-05-20 16:41:36',1),(69,'John Bailey','94048526','john.bailey@gmail.com','2024-05-20 16:41:36','2024-05-20 16:41:36',1),(70,'Brandon Stewart','1288663512','brandon.stewart@gmail.com','2024-05-20 16:41:36','2024-05-20 16:41:36',1),(71,'Una Murray','4080463038','una.murray@gmail.com','2024-05-20 16:41:36','2024-05-20 16:41:36',1),(72,'Tim Wallace','9107769388','tim.wallace@gmail.com','2024-05-20 16:41:36','2024-05-20 16:41:36',1),(73,'Boris Mackay','2482947934','boris.mackay@gmail.com','2024-05-20 16:41:36','2024-05-20 16:41:36',1),(74,'Joe Arnold','663840153','joe.arnold@gmail.com','2024-05-20 16:41:36','2024-05-20 16:41:36',1),(75,'Jennifer Allan','8936775026','jennifer.allan@gmail.com','2024-05-20 16:41:36','2024-05-20 16:41:36',1),(76,'Oliver Alsop','5730746536','oliver.alsop@gmail.com','2024-05-20 16:41:36','2024-05-20 16:41:36',1),(77,'Oliver Wilkins','377394189','oliver.wilkins@gmail.com','2024-05-20 16:41:36','2024-05-20 16:41:36',1),(78,'Austin Berry','5203986162','austin.berry@gmail.com','2024-05-20 16:41:36','2024-05-20 16:41:36',1),(79,'Hannah Terry','8371192845','hannah.terry@gmail.com','2024-05-20 16:41:36','2024-05-20 16:41:36',1),(80,'Ryan Paterson','4604736690','ryan.paterson@gmail.com','2024-05-20 16:41:36','2024-05-20 16:41:36',1),(81,'Jane Hunter','433860621','jane.hunter@gmail.com','2024-05-20 16:41:36','2024-05-20 16:41:36',1),(82,'Olivia Welch','2417321112','olivia.welch@gmail.com','2024-05-20 16:41:36','2024-05-20 16:41:36',1),(83,'Jane Lewis','6520642406','jane.lewis@gmail.com','2024-05-20 16:41:36','2024-05-20 16:41:36',1),(84,'Luke McDonald','5685381179','luke.mcdonald@gmail.com','2024-05-20 16:41:36','2024-05-20 16:41:36',1),(85,'Wendy MacDonald','9199843732','wendy.macdonald@gmail.com','2024-05-20 16:41:36','2024-05-20 16:41:36',1),(86,'Phil Campbell','1994215313','phil.campbell@gmail.com','2024-05-20 16:41:36','2024-05-20 16:41:36',1),(87,'Jake Parr','1150564759','jake.parr@gmail.com','2024-05-20 16:41:36','2024-05-20 16:41:36',1),(88,'Sean Cameron','9529499554','sean.cameron@gmail.com','2024-05-20 16:41:36','2024-05-20 16:41:36',1),(89,'Wanda Baker','4135467824','wanda.baker@gmail.com','2024-05-20 16:41:36','2024-05-20 16:41:36',1),(90,'Dan Clark','3448798708','dan.clark@gmail.com','2024-05-20 16:41:36','2024-05-20 16:41:36',1),(91,'Piers Rutherford','22478544','piers.rutherford@gmail.com','2024-05-20 16:41:36','2024-05-20 16:41:36',1),(92,'Audrey McLean','8842550960','audrey.mclean@gmail.com','2024-05-20 16:41:36','2024-05-20 16:41:36',1),(93,'Jonathan Hart','392857371','jonathan.hart@gmail.com','2024-05-20 16:41:36','2024-05-20 16:41:36',1),(94,'Victor North','518210866','victor.north@gmail.com','2024-05-20 16:41:36','2024-05-20 16:41:36',1),(95,'Adrian Short','7813922062','adrian.short@gmail.com','2024-05-20 16:41:36','2024-05-20 16:41:36',1),(96,'Thomas Robertson','772660882','thomas.robertson@gmail.com','2024-05-20 16:41:36','2024-05-20 16:41:36',1),(97,'Stewart Tucker','6815174980','stewart.tucker@gmail.com','2024-05-20 16:41:36','2024-05-20 16:41:36',1),(98,'Boris Kerr','2858696117','boris.kerr@gmail.com','2024-05-20 16:41:36','2024-05-20 16:41:36',1),(99,'Samantha Paterson','7879601103','samantha.paterson@gmail.com','2024-05-20 16:41:36','2024-05-20 16:41:36',1),(100,'Luke Piper','8667233257','luke.piper@gmail.com','2024-05-20 16:41:36','2024-05-20 16:41:36',1),(101,'Ryan Mackenzie','8511599217','ryan.mackenzie@gmail.com','2024-05-20 16:41:36','2024-05-20 16:41:36',1);
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts_group`
--

DROP TABLE IF EXISTS `contacts_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contacts_group` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `group_id` bigint(20) unsigned DEFAULT NULL,
  `contacts_id` bigint(20) unsigned DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `group_contacts_group_id_foreign` (`group_id`),
  KEY `group_contacts_contacts_id_foreign` (`contacts_id`),
  CONSTRAINT `group_contacts_contacts_id_foreign` FOREIGN KEY (`contacts_id`) REFERENCES `contacts` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `group_contacts_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `group` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts_group`
--

LOCK TABLES `contacts_group` WRITE;
/*!40000 ALTER TABLE `contacts_group` DISABLE KEYS */;
INSERT INTO `contacts_group` VALUES (1,2,1,NULL),(2,2,2,NULL),(3,2,4,NULL),(4,4,38,NULL),(5,4,50,NULL),(6,4,60,NULL),(7,4,65,NULL),(8,5,1,NULL),(9,5,8,NULL),(10,5,33,NULL);
/*!40000 ALTER TABLE `contacts_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `connection` text COLLATE utf8_unicode_ci NOT NULL,
  `queue` text COLLATE utf8_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
INSERT INTO `failed_jobs` VALUES (1,'ded416f3-62d7-4298-8895-444a186cbb6d','redis','emails','{\"uuid\":\"ded416f3-62d7-4298-8895-444a186cbb6d\",\"displayName\":\"App\\\\Jobs\\\\SendEmail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendEmail\",\"command\":\"O:18:\\\"App\\\\Jobs\\\\SendEmail\\\":2:{s:7:\\\"\\u0000*\\u0000user\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:19:\\\"App\\\\Models\\\\Contacts\\\";s:2:\\\"id\\\";i:2;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:5:\\\"queue\\\";s:6:\\\"emails\\\";}\"},\"id\":\"004bHA2T7f0DdkBTFR7sKst416wwOJzC\",\"attempts\":0}','Error: Class \"App\\Jobs\\Mail\" not found in C:\\marvelsworking\\sai\\contact\\app\\Jobs\\SendEmail.php:32\nStack trace:\n#0 C:\\marvelsworking\\sai\\contact\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): App\\Jobs\\SendEmail->handle()\n#1 C:\\marvelsworking\\sai\\contact\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#2 C:\\marvelsworking\\sai\\contact\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#3 C:\\marvelsworking\\sai\\contact\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#4 C:\\marvelsworking\\sai\\contact\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(662): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#5 C:\\marvelsworking\\sai\\contact\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(128): Illuminate\\Container\\Container->call(Array)\n#6 C:\\marvelsworking\\sai\\contact\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(144): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(App\\Jobs\\SendEmail))\n#7 C:\\marvelsworking\\sai\\contact\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(119): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\SendEmail))\n#8 C:\\marvelsworking\\sai\\contact\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#9 C:\\marvelsworking\\sai\\contact\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(124): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(App\\Jobs\\SendEmail), false)\n#10 C:\\marvelsworking\\sai\\contact\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(144): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(App\\Jobs\\SendEmail))\n#11 C:\\marvelsworking\\sai\\contact\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(119): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\SendEmail))\n#12 C:\\marvelsworking\\sai\\contact\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(126): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#13 C:\\marvelsworking\\sai\\contact\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(70): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\RedisJob), Object(App\\Jobs\\SendEmail))\n#14 C:\\marvelsworking\\sai\\contact\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(102): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\RedisJob), Array)\n#15 C:\\marvelsworking\\sai\\contact\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(439): Illuminate\\Queue\\Jobs\\Job->fire()\n#16 C:\\marvelsworking\\sai\\contact\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(389): Illuminate\\Queue\\Worker->process(\'redis\', Object(Illuminate\\Queue\\Jobs\\RedisJob), Object(Illuminate\\Queue\\WorkerOptions))\n#17 C:\\marvelsworking\\sai\\contact\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(176): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\RedisJob), \'redis\', Object(Illuminate\\Queue\\WorkerOptions))\n#18 C:\\marvelsworking\\sai\\contact\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(138): Illuminate\\Queue\\Worker->daemon(\'redis\', \'emails\', Object(Illuminate\\Queue\\WorkerOptions))\n#19 C:\\marvelsworking\\sai\\contact\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(121): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'redis\', \'emails\')\n#20 C:\\marvelsworking\\sai\\contact\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#21 C:\\marvelsworking\\sai\\contact\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#22 C:\\marvelsworking\\sai\\contact\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#23 C:\\marvelsworking\\sai\\contact\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#24 C:\\marvelsworking\\sai\\contact\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(662): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#25 C:\\marvelsworking\\sai\\contact\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(211): Illuminate\\Container\\Container->call(Array)\n#26 C:\\marvelsworking\\sai\\contact\\vendor\\symfony\\console\\Command\\Command.php(326): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#27 C:\\marvelsworking\\sai\\contact\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(181): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#28 C:\\marvelsworking\\sai\\contact\\vendor\\symfony\\console\\Application.php(1096): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#29 C:\\marvelsworking\\sai\\contact\\vendor\\symfony\\console\\Application.php(324): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#30 C:\\marvelsworking\\sai\\contact\\vendor\\symfony\\console\\Application.php(175): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#31 C:\\marvelsworking\\sai\\contact\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(201): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#32 C:\\marvelsworking\\sai\\contact\\artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#33 {main}','2024-05-20 18:08:26');
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `group`
--

DROP TABLE IF EXISTS `group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `group` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `group`
--

LOCK TABLES `group` WRITE;
/*!40000 ALTER TABLE `group` DISABLE KEYS */;
INSERT INTO `group` VALUES (2,'Group 1','2024-05-20 16:46:46','2024-05-20 16:46:46'),(4,'Group 2','2024-05-20 18:37:06','2024-05-20 18:37:06'),(5,'group 3','2024-05-20 18:39:50','2024-05-20 18:39:50');
/*!40000 ALTER TABLE `group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_reset_tokens_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1),(4,'2019_12_14_000001_create_personal_access_tokens_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Kunal Gandhi','admin@gmail.com',NULL,'$2y$12$mdETAehy0Sm1loqnTGTUSuPFiodV7LH/o.8Nw7LxFXE5Oa4J6IDzy',NULL,'2024-05-15 08:26:35','2024-05-15 08:26:35');
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

-- Dump completed on 2024-05-21  6:16:16
