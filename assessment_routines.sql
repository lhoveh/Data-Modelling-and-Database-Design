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
-- Dumping events for database 'assessment'
--

--
-- Dumping routines for database 'assessment'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-25 16:12:31
