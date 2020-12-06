-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: localhost    Database: campus_eats_fall2020
-- ------------------------------------------------------
-- Server version	8.0.21

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
-- Table structure for table `faculty`
--

DROP TABLE IF EXISTS `faculty`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faculty` (
  `faculty_id` int NOT NULL AUTO_INCREMENT,
  `person_id` int NOT NULL,
  `title` varchar(75) DEFAULT NULL,
  `degree_college` varchar(75) DEFAULT NULL,
  `highest_degree` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`faculty_id`),
  KEY `fk_F_person_id` (`person_id`),
  CONSTRAINT `fk_F_person_id` FOREIGN KEY (`person_id`) REFERENCES `person` (`person_id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faculty`
--

LOCK TABLES `faculty` WRITE;
/*!40000 ALTER TABLE `faculty` DISABLE KEYS */;
INSERT INTO `faculty` VALUES (1,8,'Assistant Professor','UF','PhD'),(2,11,'Professor','SJSU','Master'),(3,21,'Adjunct Professor','UNCC','Master'),(4,16,'Assistant Professor','UF','Bachelor'),(5,6,'Assistant Professor','Yale','Master'),(6,4,'Professor','CMU','PhD'),(7,15,'Assistant Professor','Duke','PhD'),(8,12,'Professor','NCSU','Master'),(9,10,'Adjunct Professor','Stanford','Bachelor'),(10,7,'Assistant Professor','Duke','PhD'),(11,14,'Assistant Professor','CMU','Bachelor'),(12,3,'Adjunct Professor','UNCC','Bachelor'),(13,1,'Assistant Professor','Harvard','Bachelor'),(14,22,'Assistant Professor','NCSU','PhD'),(15,9,'Assistant Professor','Harvard','Bachelor'),(16,25,'Adjunct Professor','Harvard','Bachelor'),(17,17,'Adjunct Professor','Stanford','Master'),(18,18,'Assistant Professor','UNCC','PhD'),(19,24,'Assistant Professor','CMU','Bachelor'),(20,23,'Adjunct Professor','Stanford','PhD'),(21,19,'Assistant Professor','CMU','PhD'),(22,20,'Professor','Stanford','PhD'),(23,13,'Adjunct Professor','NCSU','PhD'),(24,2,'Assistant Professor','Duke','Master'),(25,5,'Adjunct Professor','SJSU','Master'),(26,205,'Assistant Professor','UCLA','PhD');
/*!40000 ALTER TABLE `faculty` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-05 19:39:51
