-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: sbn
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Table structure for table `employees1`
--

DROP TABLE IF EXISTS `employees1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employees1` (
  `emp_id` int DEFAULT NULL,
  `dept_id` int DEFAULT NULL,
  `first_name` varchar(20) DEFAULT NULL,
  `last_name` varchar(40) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `phn_num` int DEFAULT NULL,
  `hire_date` date DEFAULT NULL,
  `job_id` int DEFAULT NULL,
  `department` varchar(30) DEFAULT NULL,
  `salary` varchar(30) DEFAULT NULL,
  KEY `dept_id` (`dept_id`),
  CONSTRAINT `employees1_ibfk_1` FOREIGN KEY (`dept_id`) REFERENCES `department1` (`dept_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees1`
--

LOCK TABLES `employees1` WRITE;
/*!40000 ALTER TABLE `employees1` DISABLE KEYS */;
INSERT INTO `employees1` VALUES (1,1,'SBN','TK','SBNTK@GMAIL.COM',8156,'2023-02-01',1,'CM','1000'),(2,2,'GBN','TK','GBNTK@GMAIL.COM',2255,'2023-02-05',2,'HT','2000'),(3,3,'AMJ','P','AMJP@GMAIL.COM',8665,'2022-05-10',3,'LG','4000'),(4,4,'BZI','Y','BZIY@GMAIL.COM',9946,'2019-12-16',4,'SC','3000'),(5,5,'MNU','OV','MNU@GMAIL.COM',68769,'2020-10-22',5,'CM','8000'),(6,6,'SRND','EEP','SRNDEP@GMAIL.COM',9975,'2011-11-06',6,'KT','6000');
/*!40000 ALTER TABLE `employees1` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-26  9:08:35
