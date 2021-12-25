-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: localhost    Database: assessment
-- ------------------------------------------------------
-- Server version	8.0.26

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
-- Table structure for table `contract`
--

DROP TABLE IF EXISTS `contract`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contract` (
  `Contract_ID` int unsigned NOT NULL AUTO_INCREMENT,
  `Expiry date` date DEFAULT NULL,
  PRIMARY KEY (`Contract_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contract`
--

LOCK TABLES `contract` WRITE;
/*!40000 ALTER TABLE `contract` DISABLE KEYS */;
INSERT INTO `contract` VALUES (1,'2021-12-28'),(2,'2022-06-25'),(3,'2022-03-25'),(4,'2021-11-26'),(5,'2022-04-26');
/*!40000 ALTER TABLE `contract` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `device`
--

DROP TABLE IF EXISTS `device`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `device` (
  `asset_id` int NOT NULL,
  `device_type` varchar(30) NOT NULL,
  `device_name` varchar(30) NOT NULL,
  `staff_id` int DEFAULT NULL,
  PRIMARY KEY (`asset_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `device`
--

LOCK TABLES `device` WRITE;
/*!40000 ALTER TABLE `device` DISABLE KEYS */;
INSERT INTO `device` VALUES (1,'notebook','Notebook Asus 01',1),(2,'desktop','HP Desktop 01',1),(3,'notebook','MaxBook pro 01',2),(4,'destktop','HP All-inOne 01',2),(5,'tablet','iPad 01',2),(6,'notebook','MacBoom Pro 02',3),(7,'netbook','Apple Netbook',7),(8,'desktop','Lenovo All-in-One',7);
/*!40000 ALTER TABLE `device` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `device_per_employee`
--

DROP TABLE IF EXISTS `device_per_employee`;
/*!50001 DROP VIEW IF EXISTS `device_per_employee`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `device_per_employee` AS SELECT 
 1 AS `Name`,
 1 AS `Device`,
 1 AS `Software Installed`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `device_per_staff`
--

DROP TABLE IF EXISTS `device_per_staff`;
/*!50001 DROP VIEW IF EXISTS `device_per_staff`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `device_per_staff` AS SELECT 
 1 AS `device_type`,
 1 AS `staff_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `license`
--

DROP TABLE IF EXISTS `license`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `license` (
  `license_id` int unsigned NOT NULL AUTO_INCREMENT,
  `SKU` varchar(3) DEFAULT NULL,
  `contract_id` varchar(3) DEFAULT NULL,
  `asset_id` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`license_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `license`
--

LOCK TABLES `license` WRITE;
/*!40000 ALTER TABLE `license` DISABLE KEYS */;
INSERT INTO `license` VALUES (1,'1','01','1'),(2,'1','01','2'),(3,'2','2','1'),(4,'2','2','2'),(5,'2','9','1'),(6,'2','9','2'),(7,'3','6','1'),(8,'3','6','2'),(9,'3','6','3'),(10,'3','6','4'),(11,'3','7','5'),(12,'3','7','6');
/*!40000 ALTER TABLE `license` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `licensed_software`
--

DROP TABLE IF EXISTS `licensed_software`;
/*!50001 DROP VIEW IF EXISTS `licensed_software`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `licensed_software` AS SELECT 
 1 AS `device_name`,
 1 AS `license_id`,
 1 AS `software_name`,
 1 AS `Expiry date`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `licenses_installed`
--

DROP TABLE IF EXISTS `licenses_installed`;
/*!50001 DROP VIEW IF EXISTS `licenses_installed`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `licenses_installed` AS SELECT 
 1 AS `device_name`,
 1 AS `license_id`,
 1 AS `Expiry date`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `manager`
--

DROP TABLE IF EXISTS `manager`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `manager` (
  `manager_id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`manager_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manager`
--

LOCK TABLES `manager` WRITE;
/*!40000 ALTER TABLE `manager` DISABLE KEYS */;
INSERT INTO `manager` VALUES (1,'Allan Amorim'),(2,'Will Camara');
/*!40000 ALTER TABLE `manager` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `software`
--

DROP TABLE IF EXISTS `software`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `software` (
  `SKU` int unsigned NOT NULL AUTO_INCREMENT,
  `software_name` varchar(30) NOT NULL,
  `vendor_id` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`SKU`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `software`
--

LOCK TABLES `software` WRITE;
/*!40000 ALTER TABLE `software` DISABLE KEYS */;
INSERT INTO `software` VALUES (1,'Snagit','01'),(2,'Photoshop','02'),(3,'Autocad','03'),(4,'Database11g','04'),(5,'Database12c','04'),(6,'Windows8','05'),(7,'Windows10','05'),(8,'Office2016','05'),(9,'Lightroom','02'),(10,'Antivirus','06'),(11,'Financials','07'),(12,'Beyond Compare','08'),(13,'Linux 5.0','09'),(14,'BRIEF','10');
/*!40000 ALTER TABLE `software` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff`
--

DROP TABLE IF EXISTS `staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staff` (
  `staff_id` int unsigned NOT NULL AUTO_INCREMENT,
  `staff_name` varchar(30) DEFAULT NULL,
  `staff_manager_id` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`staff_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff`
--

LOCK TABLES `staff` WRITE;
/*!40000 ALTER TABLE `staff` DISABLE KEYS */;
INSERT INTO `staff` VALUES (1,'Allan Amorim','1'),(2,'Will Camara','2'),(3,'Lisa Malady','1'),(4,'Matt Sauerbrown','1'),(5,'Brian Adams','2'),(6,'Gabriel Kalliman','2');
/*!40000 ALTER TABLE `staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendor`
--

DROP TABLE IF EXISTS `vendor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vendor` (
  `vendor_name` varchar(30) NOT NULL,
  `vendor_id` varchar(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendor`
--

LOCK TABLES `vendor` WRITE;
/*!40000 ALTER TABLE `vendor` DISABLE KEYS */;
INSERT INTO `vendor` VALUES ('Techsmith','1'),('Adobe','2'),('Autodesk','3'),('Oracle','4'),('Microsoft','5'),('Kasperski','6'),('SAP','7'),('Scooter Software','8'),('Rehat','9'),('Underware','10');
/*!40000 ALTER TABLE `vendor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'assessment'
--

--
-- Dumping routines for database 'assessment'
--

--
-- Final view structure for view `device_per_employee`
--

/*!50001 DROP VIEW IF EXISTS `device_per_employee`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `device_per_employee` AS select `staff`.`staff_name` AS `Name`,`device`.`device_name` AS `Device`,`software`.`software_name` AS `Software Installed` from (((`staff` join `license`) join `device`) join `software`) where ((`staff`.`staff_id` = `device`.`staff_id`) and (`device`.`asset_id` = `license`.`asset_id`) and (`license`.`SKU` = `software`.`SKU`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `device_per_staff`
--

/*!50001 DROP VIEW IF EXISTS `device_per_staff`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `device_per_staff` AS select `device`.`device_type` AS `device_type`,`staff`.`staff_name` AS `staff_name` from (`device` join `staff` on((`device`.`staff_id` = `staff`.`staff_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `licensed_software`
--

/*!50001 DROP VIEW IF EXISTS `licensed_software`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `licensed_software` AS select `device`.`device_name` AS `device_name`,`license`.`license_id` AS `license_id`,`software`.`software_name` AS `software_name`,`contract`.`Expiry date` AS `Expiry date` from (((`device` join `license`) join `software`) join `contract`) where (`license`.`SKU` = `software`.`SKU`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `licenses_installed`
--

/*!50001 DROP VIEW IF EXISTS `licenses_installed`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `licenses_installed` AS select `device`.`device_name` AS `device_name`,`license`.`license_id` AS `license_id`,`contract`.`Expiry date` AS `Expiry date` from ((`device` join `license` on((`device`.`asset_id` = `license`.`asset_id`))) join `contract` on((`license`.`contract_id` = `contract`.`Contract_ID`))) order by `contract`.`Expiry date` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-25 16:09:36
