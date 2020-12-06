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
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student` (
  `student_id` int NOT NULL AUTO_INCREMENT,
  `person_id` int NOT NULL,
  `graduation_year` int DEFAULT NULL,
  `major` varchar(75) DEFAULT NULL,
  `type` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`student_id`),
  KEY `fk_St_person_id` (`person_id`),
  CONSTRAINT `fk_St_person_id` FOREIGN KEY (`person_id`) REFERENCES `person` (`person_id`)
) ENGINE=InnoDB AUTO_INCREMENT=152 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES (1,101,1987,'Philosophy','Undergraduate'),(2,141,1986,'Accounts','Undergraduate'),(3,92,1978,'Electronics','Graduate'),(4,85,2008,'Computer Science','Graduate'),(5,66,1979,'Accounts','Graduate'),(6,164,2019,'Accounts','Graduate'),(7,110,1989,'Philosophy','Undergraduate'),(8,137,1987,'Accounts','Undergraduate'),(9,140,1975,'Data Science','Graduate'),(10,107,1985,'Data Science','Graduate'),(11,55,2017,'Electrical','Undergraduate'),(12,91,2006,'Electrical','Undergraduate'),(13,144,2008,'Cyber Security','Graduate'),(14,58,2005,'Mechanical','Graduate'),(15,191,2015,'Accounts','Undergraduate'),(16,190,2011,'Biotechnology','Undergraduate'),(17,60,1990,'Cyber Security','Undergraduate'),(18,59,1987,'Environmental','Undergraduate'),(19,114,1999,'Data Science','Graduate'),(20,185,1986,'Electrical','Graduate'),(21,61,2006,'Electrical','Undergraduate'),(22,117,1984,'Data Science','Undergraduate'),(23,73,2004,'Chemical','Graduate'),(24,170,1976,'Chemical','Undergraduate'),(25,146,1997,'Computer Science','Graduate'),(26,143,1977,'Chemical','Undergraduate'),(27,108,1995,'Mechanical','Undergraduate'),(28,198,2000,'Mechanical','Graduate'),(29,94,2013,'Accounts','Graduate'),(30,172,2005,'Philosophy','Graduate'),(31,68,1981,'Chemical','Graduate'),(32,111,1991,'Environmental','Undergraduate'),(33,165,1983,'Cyber Security','Undergraduate'),(34,155,1993,'Environmental','Graduate'),(35,163,2013,'Accounts','Undergraduate'),(36,71,2002,'Accounts','Undergraduate'),(37,194,2013,'Data Science','Graduate'),(38,125,1983,'Chemical','Undergraduate'),(39,126,1980,'Chemical','Graduate'),(40,168,2014,'Electrical','Undergraduate'),(41,106,2010,'Data Science','Graduate'),(42,112,1990,'Accounts','Graduate'),(43,93,1975,'Philosophy','Graduate'),(44,195,2016,'Mechanical','Undergraduate'),(45,69,1975,'Philosophy','Graduate'),(46,180,1972,'Accounts','Undergraduate'),(47,56,1990,'Computer Science','Undergraduate'),(48,57,1982,'Accounts','Graduate'),(49,193,2012,'Accounts','Graduate'),(50,100,1988,'Civil','Graduate'),(51,78,1999,'Mechanical','Graduate'),(52,63,1989,'Mechanical','Undergraduate'),(53,153,1978,'Philosophy','Undergraduate'),(54,65,1985,'Cyber Security','Graduate'),(55,118,2010,'Biotechnology','Graduate'),(56,169,1981,'Chemical','Undergraduate'),(57,184,1980,'Chemical','Graduate'),(58,51,2001,'Accounts','Graduate'),(59,130,1993,'Data Science','Graduate'),(60,80,2005,'Chemical','Graduate'),(61,134,1994,'Chemical','Graduate'),(62,142,1979,'Accounts','Graduate'),(63,97,1988,'Data Science','Graduate'),(64,148,1998,'Biotechnology','Undergraduate'),(65,166,1980,'Civil','Undergraduate'),(66,116,1970,'Accounts','Undergraduate'),(67,138,2014,'Chemical','Graduate'),(68,113,1997,'Data Science','Undergraduate'),(69,70,2006,'Mechanical','Graduate'),(70,173,1975,'Cyber Security','Graduate'),(71,182,1984,'Accounts','Undergraduate'),(72,160,1974,'Cyber Security','Undergraduate'),(73,128,1972,'Environmental','Undergraduate'),(74,99,2009,'Environmental','Graduate'),(75,147,1971,'Mechanical','Graduate'),(76,81,1994,'Cyber Security','Graduate'),(77,177,1999,'Electronics','Graduate'),(78,90,1978,'Computer Science','Graduate'),(79,158,1985,'Computer Science','Graduate'),(80,79,2004,'Environmental','Graduate'),(81,119,1989,'Biotechnology','Graduate'),(82,171,2019,'Electronics','Undergraduate'),(83,77,1989,'Electronics','Undergraduate'),(84,186,1973,'Mechanical','Undergraduate'),(85,105,2011,'Chemical','Undergraduate'),(86,149,1971,'Mechanical','Undergraduate'),(87,133,1978,'Mechanical','Undergraduate'),(88,174,2010,'Environmental','Graduate'),(89,95,1994,'Mechanical','Undergraduate'),(90,72,2019,'Environmental','Undergraduate'),(91,76,1978,'Data Science','Graduate'),(92,123,2008,'Philosophy','Undergraduate'),(93,188,1979,'Data Science','Graduate'),(94,132,2001,'Data Science','Graduate'),(95,183,1983,'Data Science','Graduate'),(96,179,1973,'Data Science','Graduate'),(97,129,2000,'Accounts','Graduate'),(98,115,2015,'Philosophy','Undergraduate'),(99,200,1986,'Electronics','Undergraduate'),(100,84,2009,'Cyber Security','Undergraduate'),(101,54,1984,'Chemical','Graduate'),(102,102,2000,'Biotechnology','Undergraduate'),(103,152,2003,'Data Science','Graduate'),(104,176,1985,'Cyber Security','Graduate'),(105,120,2019,'Environmental','Graduate'),(106,53,1992,'Chemical','Graduate'),(107,178,1971,'Cyber Security','Graduate'),(108,122,1998,'Electronics','Graduate'),(109,86,2011,'Electrical','Graduate'),(110,136,2016,'Electronics','Graduate'),(111,151,1981,'Chemical','Undergraduate'),(112,196,1992,'Philosophy','Undergraduate'),(113,161,1994,'Computer Science','Undergraduate'),(114,83,2004,'Biotechnology','Undergraduate'),(115,98,1985,'Civil','Graduate'),(116,139,1979,'Accounts','Undergraduate'),(117,181,1977,'Mechanical','Graduate'),(118,197,1973,'Accounts','Undergraduate'),(119,135,1998,'Electronics','Undergraduate'),(120,109,2002,'Cyber Security','Undergraduate'),(121,159,1976,'Chemical','Graduate'),(122,67,1971,'Chemical','Undergraduate'),(123,199,2019,'Computer Science','Graduate'),(124,64,1992,'Accounts','Undergraduate'),(125,74,2002,'Data Science','Graduate'),(126,175,1987,'Environmental','Undergraduate'),(127,157,2017,'Biotechnology','Undergraduate'),(128,62,1971,'Biotechnology','Undergraduate'),(129,103,1993,'Cyber Security','Graduate'),(130,131,1972,'Environmental','Graduate'),(131,87,1989,'Electrical','Undergraduate'),(132,150,1984,'Cyber Security','Graduate'),(133,75,1988,'Accounts','Graduate'),(134,82,2018,'Civil','Graduate'),(135,124,2016,'Computer Science','Undergraduate'),(136,88,1989,'Biotechnology','Undergraduate'),(137,167,1991,'Data Science','Undergraduate'),(138,127,2013,'Chemical','Undergraduate'),(139,89,1986,'Electronics','Undergraduate'),(140,189,1995,'Environmental','Graduate'),(141,192,1972,'Philosophy','Graduate'),(142,145,1981,'Computer Science','Graduate'),(143,156,1996,'Environmental','Undergraduate'),(144,162,1999,'Cyber Security','Undergraduate'),(145,154,2009,'Biotechnology','Undergraduate'),(146,104,2006,'Electronics','Graduate'),(147,96,1985,'Mechanical','Graduate'),(148,187,2002,'Cyber Security','Undergraduate'),(149,52,1995,'Cyber Security','Undergraduate'),(150,121,1994,'Mechanical','Graduate'),(151,204,2019,'graduate','Graduate');
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
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
