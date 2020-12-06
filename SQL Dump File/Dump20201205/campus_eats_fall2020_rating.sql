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
-- Table structure for table `rating`
--

DROP TABLE IF EXISTS `rating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rating` (
  `rating_id` int NOT NULL AUTO_INCREMENT,
  `person_id` int NOT NULL,
  `restaurant_id` int NOT NULL,
  `driver_id` int NOT NULL,
  `score` float DEFAULT NULL,
  `description` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`rating_id`),
  KEY `fk_rating_person1_idx` (`person_id`),
  KEY `fk_rating_restaurant1_idx` (`restaurant_id`),
  KEY `fk_rating_driver1_idx` (`driver_id`),
  CONSTRAINT `fk_rating_driver1` FOREIGN KEY (`driver_id`) REFERENCES `driver` (`driver_id`),
  CONSTRAINT `fk_rating_person1` FOREIGN KEY (`person_id`) REFERENCES `person` (`person_id`),
  CONSTRAINT `fk_rating_restaurant1` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurant` (`restaurant_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1000 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rating`
--

LOCK TABLES `rating` WRITE;
/*!40000 ALTER TABLE `rating` DISABLE KEYS */;
INSERT INTO `rating` VALUES (1,24,1,6,3,'metus. Aenean sed pede'),(2,115,3,6,6,'sapien, cursus in, hendrerit consectetuer, cursus et, magna.'),(3,98,4,2,1,'laoreet, libero et'),(4,96,3,4,2,'semper et, lacinia vitae, sodales at,'),(5,163,3,6,1,'leo'),(6,5,5,6,5,'pede sagittis'),(7,67,1,3,10,'velit eu sem. Pellentesque ut ipsum ac mi'),(8,137,4,8,4,'pharetra ut, pharetra sed, hendrerit a, arcu.'),(9,185,3,1,7,'nulla. Donec'),(10,58,3,2,10,'Donec est. Nunc ullamcorper, velit in aliquet'),(11,113,4,7,1,'nisl sem, consequat nec, mollis vitae,'),(12,119,1,6,1,'Mauris'),(13,125,3,8,0,'non, dapibus rutrum, justo. Praesent luctus.'),(14,183,1,3,8,'mollis'),(15,192,4,3,10,'molestie'),(16,150,5,4,9,'nulla. Integer urna. Vivamus molestie dapibus ligula. Aliquam'),(17,77,1,4,9,'quis massa. Mauris vestibulum, neque sed dictum'),(18,200,1,6,9,'sit amet, dapibus id, blandit at,'),(19,102,2,8,6,'tellus. Suspendisse sed dolor.'),(20,180,2,3,8,'lorem semper auctor. Mauris vel turpis. Aliquam adipiscing'),(21,201,5,5,0,'consequat purus. Maecenas'),(22,53,4,8,4,'nunc'),(23,174,3,5,7,'Proin mi. Aliquam gravida'),(24,116,2,4,7,'netus et malesuada fames ac turpis'),(25,64,2,4,7,'dignissim magna'),(26,102,4,6,10,'posuere vulputate,'),(27,103,3,4,8,'ut, nulla.'),(28,179,5,2,1,'quis, pede. Suspendisse dui.'),(29,4,1,3,4,'nec, euismod in,'),(30,6,2,4,10,'nisl elementum purus, accumsan interdum libero'),(31,53,3,3,5,'nonummy ultricies ornare, elit elit fermentum risus,'),(32,51,1,4,8,'sit amet massa. Quisque'),(33,52,1,7,2,'ante dictum cursus. Nunc'),(34,47,4,8,9,'lobortis ultrices. Vivamus rhoncus. Donec est. Nunc'),(35,48,5,1,10,'velit. Cras lorem lorem, luctus ut, pellentesque'),(36,195,1,7,0,'vehicula aliquet'),(37,30,2,2,7,'in aliquet lobortis, nisi nibh lacinia'),(38,129,3,7,5,'arcu. Curabitur ut'),(39,5,5,7,8,'quam dignissim pharetra. Nam ac nulla.'),(40,27,2,6,9,'Donec fringilla.'),(41,100,2,2,2,'diam vel arcu. Curabitur'),(42,68,2,5,6,'commodo ipsum. Suspendisse'),(43,80,4,3,0,'mattis semper, dui lectus rutrum'),(44,45,2,3,8,'aliquam adipiscing'),(45,144,5,8,9,'ultricies dignissim lacus. Aliquam'),(46,134,1,4,10,'ac mi eleifend egestas. Sed pharetra,'),(47,178,3,6,6,'ullamcorper. Duis cursus, diam at pretium aliquet,'),(48,153,1,6,5,'tincidunt, neque vitae semper'),(49,133,1,2,8,'odio. Etiam ligula tortor, dictum eu,'),(50,99,1,4,10,'nonummy ut, molestie in,'),(51,114,3,6,5,'gravida mauris ut mi. Duis'),(52,172,5,2,8,'Nullam vitae diam. Proin dolor. Nulla semper tellus'),(53,51,1,4,3,'aliquet nec, imperdiet nec, leo. Morbi neque tellus,'),(54,181,2,8,6,'Cum sociis natoque penatibus et magnis dis parturient'),(55,142,2,1,2,'sodales nisi magna sed dui. Fusce aliquam, enim'),(56,20,2,4,3,'vulputate dui, nec tempus mauris'),(57,163,2,6,9,'in,'),(58,24,1,4,4,'Quisque imperdiet, erat'),(59,74,5,4,8,'magna'),(60,119,2,1,5,'odio semper cursus. Integer mollis. Integer'),(61,116,4,2,0,'Mauris'),(62,203,2,1,2,'amet orci. Ut sagittis lobortis mauris.'),(63,68,3,7,0,'arcu. Aliquam ultrices iaculis odio. Nam'),(64,16,1,4,4,'vel pede blandit congue.'),(65,23,4,3,2,'arcu. Vestibulum ante ipsum primis in faucibus orci'),(66,2,2,2,6,'vel, convallis in, cursus'),(67,200,1,1,4,'venenatis a, magna. Lorem ipsum dolor'),(68,145,3,6,7,'ac ipsum.'),(69,169,1,3,0,'Duis volutpat nunc'),(70,60,3,1,5,'vestibulum.'),(71,55,5,3,7,'dolor. Fusce feugiat. Lorem ipsum dolor sit amet,'),(72,44,3,7,6,'Sed'),(73,105,4,7,0,'enim. Curabitur massa.'),(74,170,5,6,1,'Etiam bibendum fermentum metus. Aenean sed pede'),(75,120,4,1,5,'lectus sit amet'),(76,17,4,6,4,'egestas. Aliquam nec enim.'),(77,36,3,3,2,'pharetra sed, hendrerit a, arcu.'),(78,203,1,7,9,'sit amet, consectetuer adipiscing elit. Aliquam'),(79,139,1,4,9,'mollis non, cursus'),(80,177,1,3,1,'Pellentesque'),(81,177,4,3,2,'nec'),(82,58,2,5,2,'tincidunt aliquam'),(83,169,4,1,6,'malesuada. Integer id magna et ipsum cursus'),(84,204,4,3,3,'leo. Cras vehicula aliquet libero. Integer in'),(85,22,4,1,1,'lobortis quis, pede. Suspendisse dui. Fusce'),(86,142,3,5,1,'semper auctor. Mauris vel turpis. Aliquam'),(87,193,1,2,3,'interdum ligula eu enim. Etiam imperdiet dictum'),(88,22,3,2,7,'Duis'),(89,90,3,3,2,'sagittis. Duis gravida. Praesent eu nulla at sem'),(90,2,4,8,8,'ipsum leo elementum sem,'),(91,152,1,2,5,'enim. Etiam imperdiet dictum magna. Ut tincidunt'),(92,168,5,6,10,'penatibus'),(93,29,3,7,2,'urna, nec luctus felis purus ac tellus. Suspendisse'),(94,28,5,2,4,'Ut tincidunt orci quis'),(95,66,3,4,4,'lacinia. Sed congue, elit sed consequat auctor, nunc'),(96,50,3,5,5,'ac, fermentum'),(97,152,5,4,6,'Suspendisse commodo tincidunt'),(98,149,1,1,0,'amet nulla. Donec non justo.'),(99,175,5,4,2,'dis parturient montes, nascetur ridiculus mus.'),(100,66,2,8,7,'quis diam luctus lobortis. Class aptent');
/*!40000 ALTER TABLE `rating` ENABLE KEYS */;
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
