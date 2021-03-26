-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: localhost    Database: cts
-- ------------------------------------------------------
-- Server version	8.0.23

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
-- Table structure for table `missionprocess`
--

DROP TABLE IF EXISTS `missionprocess`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `missionprocess` (
  `id_employee` int DEFAULT NULL,
  `id_mission` int DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `id_process` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_process`),
  KEY `fk_id1miss_idx` (`id_mission`),
  KEY `fk_id1empl` (`id_employee`),
  CONSTRAINT `fk_id1empl` FOREIGN KEY (`id_employee`) REFERENCES `employee` (`id_employee`),
  CONSTRAINT `fk_id1miss` FOREIGN KEY (`id_mission`) REFERENCES `mission` (`id_mission`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `missionprocess`
--

LOCK TABLES `missionprocess` WRITE;
/*!40000 ALTER TABLE `missionprocess` DISABLE KEYS */;
INSERT INTO `missionprocess` VALUES (1,1,'Đang làm',1),(2,1,'Hoàn thành',2),(2,4,'Đang làm',5),(4,2,'Hoàn thành',6),(4,1,'Hoàn thành',7),(1,4,'Đang làm',8),(1,4,'Đang làm',9);
/*!40000 ALTER TABLE `missionprocess` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-23 10:33:58
