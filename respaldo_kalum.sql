-- MySQL dump 10.13  Distrib 8.0.36, for Linux (x86_64)
--
-- Host: localhost    Database: kinal
-- ------------------------------------------------------
-- Server version	8.0.36

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `alumno`
--

DROP TABLE IF EXISTS `alumno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alumno` (
  `carne` varchar(8) NOT NULL,
  `apellidos` varchar(128) NOT NULL,
  `nombres` varchar(128) NOT NULL,
  `direccion` varchar(128) NOT NULL,
  `telefono` varchar(64) NOT NULL,
  `email` varchar(64) NOT NULL,
  PRIMARY KEY (`carne`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alumno`
--

LOCK TABLES `alumno` WRITE;
/*!40000 ALTER TABLE `alumno` DISABLE KEYS */;
INSERT INTO `alumno` VALUES ('20240001','Pinto','Karla','CR','43523123','zdg3de@tg.com'),('20240002','Pinto','Karla','CR','43523123','zdg3de@tg.com'),('20240003','Pinto','Karla','CR','43523123','zdg3de@tg.com');
/*!40000 ALTER TABLE `alumno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aspirante`
--

DROP TABLE IF EXISTS `aspirante`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aspirante` (
  `no_expediente` varchar(128) NOT NULL,
  `apellidos` varchar(128) NOT NULL,
  `nombres` varchar(128) NOT NULL,
  `direccion` varchar(128) NOT NULL,
  `telefono` varchar(64) NOT NULL,
  `email` varchar(128) NOT NULL,
  `estatus` varchar(32) DEFAULT 'NO ASIGNADO',
  `examen_id` varchar(128) NOT NULL,
  `carrera_id` varchar(128) NOT NULL,
  `jornada_id` varchar(128) NOT NULL,
  PRIMARY KEY (`no_expediente`),
  UNIQUE KEY `email` (`email`),
  KEY `FK_ASPIRANTE_EXAMEN` (`examen_id`),
  KEY `FK_ASPIRANTE_CARRERA` (`carrera_id`),
  KEY `FK_ASPIRANTE_JORNADA` (`jornada_id`),
  CONSTRAINT `FK_ASPIRANTE_CARRERA` FOREIGN KEY (`carrera_id`) REFERENCES `carrera_tecnica` (`carrera_id`),
  CONSTRAINT `FK_ASPIRANTE_EXAMEN` FOREIGN KEY (`examen_id`) REFERENCES `examen_admision` (`examen_id`),
  CONSTRAINT `FK_ASPIRANTE_JORNADA` FOREIGN KEY (`jornada_id`) REFERENCES `jornada` (`jornada_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aspirante`
--

LOCK TABLES `aspirante` WRITE;
/*!40000 ALTER TABLE `aspirante` DISABLE KEYS */;
INSERT INTO `aspirante` VALUES ('EXP-2024003','Donis','Leonardo','Pinula','12345678','jlfs@tigo.com.gt','NO ASIGNADO','acea5e7e-e965-11ee-885a-0242ac110002','4b72a847-e956-11ee-885a-0242ac110002','8a51f158-e965-11ee-885a-0242ac110002'),('EXP-2024004','Celeste','Dania','Guatemala','43124312','cjuarezd@gmail.com','NO ASIGNADO','acea5e7e-e965-11ee-885a-0242ac110002','4645c0df-e956-11ee-885a-0242ac110002','8a51f158-e965-11ee-885a-0242ac110002'),('EXP-2024005','miau','Miau','Guatemala','43124312','cjrezd@gmail.com','NO ASIGNADO','acea5e7e-e965-11ee-885a-0242ac110002','4645c0df-e956-11ee-885a-0242ac110002','8a51f158-e965-11ee-885a-0242ac110002'),('EXP-2024006','Pinto','Karla','CR','43523123','zdge@tg.com','NO ASIGNADO','acea5e7e-e965-11ee-885a-0242ac110002','4b72a847-e956-11ee-885a-0242ac110002','8a51f158-e965-11ee-885a-0242ac110002'),('EXP-2024007','Pinto','Karla','CR','43523123','zdgde@tg.com','NO ASIGNADO','acea5e7e-e965-11ee-885a-0242ac110002','4b72a847-e956-11ee-885a-0242ac110002','8a51f158-e965-11ee-885a-0242ac110002'),('EXP-2024008','Pinto','Karla','CR','43523123','zdg3de@tg.com','INSCRITO','acea5e7e-e965-11ee-885a-0242ac110002','4b72a847-e956-11ee-885a-0242ac110002','8a51f158-e965-11ee-885a-0242ac110002'),('EXP-2024009','Pinto','Karla','CR','43523123','zddg3de@tg.com','NO ASIGNADO','acea5e7e-e965-11ee-885a-0242ac110002','4b72a847-e956-11ee-885a-0242ac110002','8a51f158-e965-11ee-885a-0242ac110002');
/*!40000 ALTER TABLE `aspirante` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cargo`
--

DROP TABLE IF EXISTS `cargo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cargo` (
  `cargo_id` varchar(128) NOT NULL,
  `descripcion` varchar(128) NOT NULL,
  `prefijo` varchar(64) NOT NULL,
  `monton` decimal(10,2) NOT NULL,
  `genera_mora` bit(1) NOT NULL,
  `porcentaje_mora` int NOT NULL,
  PRIMARY KEY (`cargo_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cargo`
--

LOCK TABLES `cargo` WRITE;
/*!40000 ALTER TABLE `cargo` DISABLE KEYS */;
/*!40000 ALTER TABLE `cargo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `carrera_tecnica`
--

DROP TABLE IF EXISTS `carrera_tecnica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `carrera_tecnica` (
  `carrera_id` varchar(128) NOT NULL,
  `carrera_tecnica` varchar(128) NOT NULL,
  PRIMARY KEY (`carrera_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carrera_tecnica`
--

LOCK TABLES `carrera_tecnica` WRITE;
/*!40000 ALTER TABLE `carrera_tecnica` DISABLE KEYS */;
INSERT INTO `carrera_tecnica` VALUES ('2dc82d7b-09bd-11ef-a61e-0242ac110003','Nueva'),('4645c0df-e956-11ee-885a-0242ac110002','Desarrollador Fullstack en java'),('4b72a847-e956-11ee-885a-0242ac110002','Desarrollador Frontend con Reac'),('c5af730f-09bc-11ef-a61e-0242ac110003','SuperMiau');
/*!40000 ALTER TABLE `carrera_tecnica` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `insert_guid_carrera_tecnica` BEFORE INSERT ON `carrera_tecnica` FOR EACH ROW BEGIN 
    SET NEW.carrera_id = UUID(); 
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `cuenta_x_cobrar`
--

DROP TABLE IF EXISTS `cuenta_x_cobrar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cuenta_x_cobrar` (
  `cargo` varchar(128) NOT NULL,
  `anio` varchar(4) NOT NULL,
  `carne` varchar(8) NOT NULL,
  `cargo_id` varchar(128) NOT NULL,
  `descripcion` varchar(128) NOT NULL,
  `fecha_cargo` datetime NOT NULL,
  `fecha_aplica` datetime NOT NULL,
  `monto` decimal(10,2) NOT NULL,
  `mora` decimal(10,2) NOT NULL,
  `descuento` decimal(10,2) NOT NULL,
  PRIMARY KEY (`cargo`,`anio`),
  KEY `FK_CUENTAS_X_COBRAR_ALUMNO` (`carne`),
  KEY `FK_CUENTAS_X_COBRAR_CARGO` (`cargo_id`),
  CONSTRAINT `FK_CUENTAS_X_COBRAR_ALUMNO` FOREIGN KEY (`carne`) REFERENCES `alumno` (`carne`),
  CONSTRAINT `FK_CUENTAS_X_COBRAR_CARGO` FOREIGN KEY (`cargo_id`) REFERENCES `cargo` (`cargo_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cuenta_x_cobrar`
--

LOCK TABLES `cuenta_x_cobrar` WRITE;
/*!40000 ALTER TABLE `cuenta_x_cobrar` DISABLE KEYS */;
/*!40000 ALTER TABLE `cuenta_x_cobrar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `examen_admision`
--

DROP TABLE IF EXISTS `examen_admision`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `examen_admision` (
  `examen_id` varchar(128) NOT NULL,
  `fecha_examen` datetime NOT NULL,
  PRIMARY KEY (`examen_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `examen_admision`
--

LOCK TABLES `examen_admision` WRITE;
/*!40000 ALTER TABLE `examen_admision` DISABLE KEYS */;
INSERT INTO `examen_admision` VALUES ('acea5e7e-e965-11ee-885a-0242ac110002','2024-03-23 22:35:39');
/*!40000 ALTER TABLE `examen_admision` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inscripcion`
--

DROP TABLE IF EXISTS `inscripcion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inscripcion` (
  `inscripcion_id` varchar(128) DEFAULT NULL,
  `carne` varchar(8) NOT NULL,
  `carrera_id` varchar(128) NOT NULL,
  `jornada_id` varchar(128) NOT NULL,
  `ciclo` varchar(4) NOT NULL,
  `fecha_inscripcion` datetime NOT NULL,
  PRIMARY KEY (`carne`),
  KEY `FK_INSCRIPCION_CARRERA` (`carrera_id`),
  KEY `FK_INSCRIPCION_JORNADA` (`jornada_id`),
  CONSTRAINT `FK_INSCRIPCION_ALUMNO` FOREIGN KEY (`carne`) REFERENCES `alumno` (`carne`),
  CONSTRAINT `FK_INSCRIPCION_CARRERA` FOREIGN KEY (`carrera_id`) REFERENCES `carrera_tecnica` (`carrera_id`),
  CONSTRAINT `FK_INSCRIPCION_JORNADA` FOREIGN KEY (`jornada_id`) REFERENCES `jornada` (`jornada_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inscripcion`
--

LOCK TABLES `inscripcion` WRITE;
/*!40000 ALTER TABLE `inscripcion` DISABLE KEYS */;
/*!40000 ALTER TABLE `inscripcion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inscripcion_pago`
--

DROP TABLE IF EXISTS `inscripcion_pago`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inscripcion_pago` (
  `boleta_pago` varchar(128) NOT NULL,
  `no_expediente` varchar(12) NOT NULL,
  `anio` varchar(4) NOT NULL,
  `fecha_pago` datetime(6) DEFAULT NULL,
  `monto` double DEFAULT NULL,
  PRIMARY KEY (`boleta_pago`,`no_expediente`,`anio`),
  KEY `FK_INSCRIPCION_PAGO_ASPIRANTE` (`no_expediente`),
  CONSTRAINT `FK_INSCRIPCION_PAGO_ASPIRANTE` FOREIGN KEY (`no_expediente`) REFERENCES `aspirante` (`no_expediente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inscripcion_pago`
--

LOCK TABLES `inscripcion_pago` WRITE;
/*!40000 ALTER TABLE `inscripcion_pago` DISABLE KEYS */;
INSERT INTO `inscripcion_pago` VALUES ('894f0e45-3654-11ef-be6a-0242ac110004','EXP-2024003','2024','2024-06-29 20:16:58.000000',323.21),('BOL-010103','EXP-2024003','2024','2024-06-28 18:00:00.000000',230);
/*!40000 ALTER TABLE `inscripcion_pago` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inversion_carrera_tecnica`
--

DROP TABLE IF EXISTS `inversion_carrera_tecnica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inversion_carrera_tecnica` (
  `inversion_id` varchar(128) NOT NULL,
  `carrera_id` varchar(128) NOT NULL,
  `monto_inscripcion` decimal(10,2) NOT NULL,
  `numeros_pagos` int NOT NULL,
  `monto_pago` decimal(10,2) NOT NULL,
  PRIMARY KEY (`inversion_id`),
  KEY `FK_INVERSION_CARRERA_CARRERA` (`carrera_id`),
  CONSTRAINT `FK_INVERSION_CARRERA_CARRERA` FOREIGN KEY (`carrera_id`) REFERENCES `carrera_tecnica` (`carrera_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inversion_carrera_tecnica`
--

LOCK TABLES `inversion_carrera_tecnica` WRITE;
/*!40000 ALTER TABLE `inversion_carrera_tecnica` DISABLE KEYS */;
INSERT INTO `inversion_carrera_tecnica` VALUES ('9420b07c-e956-11ee-885a-0242ac110002','4645c0df-e956-11ee-885a-0242ac110002',850.00,10,650.00),('da860549-e956-11ee-885a-0242ac110002','4b72a847-e956-11ee-885a-0242ac110002',550.00,5,500.00);
/*!40000 ALTER TABLE `inversion_carrera_tecnica` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jornada`
--

DROP TABLE IF EXISTS `jornada`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jornada` (
  `jornada_id` varchar(128) NOT NULL,
  `jornada` varchar(2) NOT NULL,
  `descripcion` varchar(128) NOT NULL,
  PRIMARY KEY (`jornada_id`),
  UNIQUE KEY `jornada` (`jornada`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jornada`
--

LOCK TABLES `jornada` WRITE;
/*!40000 ALTER TABLE `jornada` DISABLE KEYS */;
INSERT INTO `jornada` VALUES ('8a51f158-e965-11ee-885a-0242ac110002','JM','Jornada Matutina');
/*!40000 ALTER TABLE `jornada` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resultado_examen_admision`
--

DROP TABLE IF EXISTS `resultado_examen_admision`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `resultado_examen_admision` (
  `no_expediente` varchar(128) NOT NULL,
  `anio` varchar(4) NOT NULL,
  `descripcion` varchar(128) NOT NULL,
  `nota` int DEFAULT '0',
  PRIMARY KEY (`no_expediente`,`anio`),
  CONSTRAINT `FK_RESULTADO_EXAMEN_EXPEDIENTE` FOREIGN KEY (`no_expediente`) REFERENCES `aspirante` (`no_expediente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resultado_examen_admision`
--

LOCK TABLES `resultado_examen_admision` WRITE;
/*!40000 ALTER TABLE `resultado_examen_admision` DISABLE KEYS */;
/*!40000 ALTER TABLE `resultado_examen_admision` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `tg_update_estatus_aspirante` AFTER INSERT ON `resultado_examen_admision` FOR EACH ROW BEGIN 
	
	declare _no_expediente varchar(128);
	declare _nota int;

	set _no_expediente = NEW.no_expediente;
	set _nota = new.nota;

	if _nota <70 then
	
	
	update aspirante set estatus = 'NO SIGUE PROCESO DE ADMISION' where no_expediente =_no_expediente;

	else
	
	update aspirante set estatus = 'SIGUE PROCESO DE ADMISION' where no_expediente =_no_expediente;
	
	
	end if;

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `tg_delete_resultado_examen_admision` BEFORE DELETE ON `resultado_examen_admision` FOR EACH ROW BEGIN 
	
	declare _no_expediente varchar(128);


	set _no_expediente = OLD.no_expediente;
	
	update aspirante set estatus = 'NO ASIGNADO' where no_expediente =_no_expediente;


END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Temporary view structure for view `vw_inversion_total_carrera`
--

DROP TABLE IF EXISTS `vw_inversion_total_carrera`;
/*!50001 DROP VIEW IF EXISTS `vw_inversion_total_carrera`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_inversion_total_carrera` AS SELECT 
 1 AS `carrera`,
 1 AS `numeros_pagos`,
 1 AS `monto_total`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `vw_inversion_total_carrera`
--

/*!50001 DROP VIEW IF EXISTS `vw_inversion_total_carrera`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_inversion_total_carrera` AS select `ct`.`carrera_tecnica` AS `carrera`,`it`.`numeros_pagos` AS `numeros_pagos`,(`it`.`monto_pago` * `it`.`numeros_pagos`) AS `monto_total` from (`carrera_tecnica` `ct` join `inversion_carrera_tecnica` `it` on((`it`.`carrera_id` = `ct`.`carrera_id`))) */;
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

-- Dump completed on 2024-08-03 23:32:48
