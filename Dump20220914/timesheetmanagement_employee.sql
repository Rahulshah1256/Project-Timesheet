-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: timesheetmanagement
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(250) DEFAULT NULL,
  `contactNumber` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(250) DEFAULT NULL,
  `status` varchar(250) DEFAULT NULL,
  `role` varchar(20) DEFAULT NULL,
  `iv` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (31,'sanu','3256325632','sanu@gmail.com','QbhWIRMEGKI+Rs1NsCQSqv05c56zxHHCNFVvLteNS/8=','true','user',NULL),(32,'bhanu','4512574124','bhanu@gmail.com','XKRis8q9K35zXOzHrWfBY73x7fJqqQStJB/qmAtPc3k=','true','user',NULL),(35,'Admin','9089765476','admin@gmail.com','admin','true','admin',NULL),(37,'rajesh','4521452145','rajesh@gmail.com','IWv67yk6olE8ARwmQ7JT8ooLCqwgp2nLKhVRj7HPPn8=','true','user',NULL),(38,'kajal','4523652365','kajal@gmail.com','P0XdOXV7iFpmiJEPSWAVelM6lZAj877eVt9pm1eZszM=','true','user',NULL),(39,'rahul','4523658965','rahul@gmail.com','aH9tog3lkJHmf1lIJ83uJoEl/rOu0cO6130PZ2HrGYo=','true','user',NULL),(42,'admin','4521487452','pan@gmail.com','QSSPEQvCADreJ72xtRaUaDoNF1qLBCEXqCx4DnoinNA=','false','user',NULL),(53,'rohit','7896541258','rohit@gmail.com','62736d7f95abd8a7','true','user',NULL),(54,'champa','9856412578','champa@gmail.com','2581734dc7aabfcca5','true','user',NULL),(55,'gulshan','7856985236','gulshan@gmail.com','07504413cd6b5a063c30','true','user',NULL),(62,'vimu','4523698563','vimu@gmail.com','f979a6b93e3e0b','false','user','12eb6d5fdba2560e7712c385c79e71e9'),(63,'raj','4521589654','raj@gmail.com','0716bcea0468','false','user','68db19bbcbb26d40746c5591106017dc'),(64,'vicky','6527896541','vicky@gmail.com','528717414abb6cd4','false','user','52def7a4465dab6a2daf6d403165aad8'),(65,'rok','4589658745','rok@gmail.com','5c0a99fdc68c','false','user','d2e24142a198644bbc8e11ff1931d996'),(66,'sem','7845896523','sem@gmail.com','1fcad521c500','false','user','c00902e937e8cdfe60f1b7d11c9b595c'),(67,'joy','4589658745','joy@gmail.com','31e176573791','false','user','cb85e61a75c65f331594f294597c443c'),(68,'panu','4589658745','panu@gmail.com','13bda8a2dcfcfa','false','user','79e87e0456132e9815cf4f9295f6f541');
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-09-14 19:12:40
