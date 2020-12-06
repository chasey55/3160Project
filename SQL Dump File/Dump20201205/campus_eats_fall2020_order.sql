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
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order` (
  `order_id` int NOT NULL AUTO_INCREMENT,
  `person_id` int NOT NULL,
  `delivery_id` int NOT NULL,
  `location_id` int NOT NULL,
  `driver_id` int NOT NULL,
  `restaurant_id` int NOT NULL,
  `total_price` float NOT NULL,
  `delivery_charge` float DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  KEY `fk_O_person_id` (`person_id`),
  KEY `fk_O_delivery_id` (`delivery_id`),
  KEY `fk_O_location_id` (`location_id`),
  KEY `fk_O_driver_id` (`driver_id`),
  KEY `fk_O_restaurant_id` (`restaurant_id`),
  CONSTRAINT `fk_O_delivery_id` FOREIGN KEY (`delivery_id`) REFERENCES `delivery` (`delivery_id`),
  CONSTRAINT `fk_O_driver_id` FOREIGN KEY (`driver_id`) REFERENCES `driver` (`driver_id`),
  CONSTRAINT `fk_O_location_id` FOREIGN KEY (`location_id`) REFERENCES `location` (`location_id`),
  CONSTRAINT `fk_O_person_id` FOREIGN KEY (`person_id`) REFERENCES `person` (`person_id`),
  CONSTRAINT `fk_O_restaurant_id` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurant` (`restaurant_id`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
INSERT INTO `order` VALUES (1,1,1,1,1,1,15.63,6.63),(2,2,2,2,2,2,18.03,9.43),(3,3,3,3,3,3,11.91,7.42),(4,4,4,4,4,4,19.13,6.26),(5,5,5,5,5,5,13.76,6.24),(6,6,6,6,6,1,5.4,4.83),(7,7,7,7,7,2,14.05,8.57),(8,8,8,8,8,3,3.81,2.38),(9,9,9,9,1,4,17.1,6.72),(10,10,10,10,2,5,12.71,1.82),(11,11,11,11,3,1,3.9,7.26),(12,12,12,12,4,2,6.82,7.4),(13,13,13,13,5,3,4.73,7.43),(14,14,14,14,6,4,12.08,1.21),(15,15,15,15,7,5,3.83,4.77),(16,16,16,16,8,1,12.43,2.76),(17,17,17,17,1,2,6.61,4.85),(18,18,18,18,2,3,7.89,5.69),(19,19,19,19,3,4,16.54,4.88),(20,20,20,20,4,5,3.21,4.98),(21,21,21,21,5,1,5.19,4.17),(22,22,22,22,6,2,19,1.39),(23,23,23,23,7,3,14.5,3.28),(24,24,24,24,8,4,11.81,2.71),(25,25,25,25,1,5,6.83,4.85),(26,26,26,26,2,1,7.24,5.65),(27,27,27,27,3,2,10.56,1.73),(28,28,28,28,4,3,4.25,4.98),(29,29,29,29,5,4,6.68,8.66),(30,30,30,30,6,5,14.5,6.47),(31,31,31,31,7,1,14.92,9.53),(32,32,32,32,8,2,4.12,9.42),(33,33,33,33,1,3,7.02,7.99),(34,34,34,34,2,4,8.6,6.69),(35,35,35,35,3,5,8.98,4.72),(36,36,36,36,4,1,7.94,4.78),(37,37,37,37,5,2,14.8,2.13),(38,38,38,38,6,3,19.05,6.61),(39,39,39,39,7,4,12.49,5.97),(40,40,40,40,8,5,15.56,6.01),(41,41,41,41,1,1,8.85,7.06),(42,42,42,42,2,2,12.28,5.52),(43,43,43,43,3,3,9.28,9.63),(44,44,44,44,4,4,9.78,8),(45,45,45,45,5,5,12.43,5.11),(46,46,46,46,6,1,4.11,9.65),(47,47,47,47,7,2,14.29,6.65),(48,48,48,48,8,3,5.69,3.31),(49,49,49,49,1,4,12.52,6.38),(50,50,50,50,2,5,8.84,9.92),(51,51,51,51,3,1,5.69,1.5),(52,52,52,52,4,2,14.53,4.58),(53,53,53,53,5,3,10.23,3.61),(54,54,54,54,6,4,10.7,7.36),(55,55,55,55,7,5,14.03,8.66),(56,56,56,56,8,1,13.46,1.26),(57,57,57,57,1,2,13.98,8.85),(58,58,58,58,2,3,15.21,6.59),(59,59,59,59,3,4,4.6,8.25),(60,60,60,60,4,5,3.27,6.39),(61,61,61,61,5,1,9.39,2.63),(62,62,62,62,6,2,3.7,2.47),(63,63,63,63,7,3,18.49,7.01),(64,64,64,64,8,4,15.51,8.26),(65,65,65,65,1,5,6.8,9.41),(66,66,66,66,2,1,12.57,1.88),(67,67,67,67,3,2,8.69,6.21),(68,68,68,68,4,3,9.38,9.56),(69,69,69,69,5,4,18.23,3.89),(70,70,70,70,6,5,13.39,9.65),(71,71,71,71,7,1,17.71,3.01),(72,72,72,72,8,2,10.59,2.03),(73,73,73,73,1,3,6.99,9.8),(74,74,74,74,2,4,14.14,3.98),(75,75,75,75,3,5,16.73,7.27),(76,76,76,76,4,1,6.64,5.09),(77,77,77,77,5,2,16.48,1.15),(78,78,78,78,6,3,18.61,6.49),(79,79,79,79,7,4,18.66,8.19),(80,80,80,80,8,5,7.6,9.54),(81,81,81,81,1,1,16.72,4.05),(82,82,82,82,2,2,5.64,7.18),(83,83,83,83,3,3,7.39,9.14),(84,84,84,84,4,4,11.61,1.57),(85,85,85,85,5,5,16.74,8.84),(86,86,86,86,6,1,19.88,2.43),(87,87,87,87,7,2,7.52,4.32),(88,88,88,88,8,3,14.63,4.4),(89,89,89,89,1,4,19.45,9.89),(90,90,90,90,2,5,12.5,8.23),(91,91,91,91,3,1,10.34,3.69),(92,92,92,92,4,2,11.34,6.34),(93,93,93,93,5,3,15.05,8.26),(94,94,94,94,6,4,7.89,7.05),(95,95,95,95,7,5,16.69,9.19),(96,96,96,96,8,1,5.71,8.39),(97,97,97,97,1,2,16.9,9.15),(98,98,98,98,2,3,15.63,8.92),(99,99,99,99,3,4,3.71,2.53),(100,100,100,100,4,5,5.08,2.74),(101,1,2,3,4,5,6,1);
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
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
