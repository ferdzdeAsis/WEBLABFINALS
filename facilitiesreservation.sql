-- MySQL dump 10.13  Distrib 5.7.21, for Win64 (x86_64)
--
-- Host: localhost    Database: facilityReservation
-- ------------------------------------------------------
-- Server version	5.7.21

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `eqpmntsreservation`
--

DROP TABLE IF EXISTS `eqpmntsreservation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eqpmntsreservation` (
  `eqpmntID` int(11) NOT NULL,
  `eqpmntQntty` int(11) DEFAULT NULL,
  `eqpmntName` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`eqpmntID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eqpmntsreservation`
--

LOCK TABLES `eqpmntsreservation` WRITE;
/*!40000 ALTER TABLE `eqpmntsreservation` DISABLE KEYS */;
INSERT INTO `eqpmntsreservation` VALUES (1,20,'Bench\r'),(2,300,'Chair\r'),(3,5,'Platform\r'),(4,10,'Table\r'),(5,5,'Triboard\r'),(6,5,'Divider\r'),(7,8,'Microphone\r'),(8,8,'Mic Stand\r'),(9,3,'Karaoke\r'),(10,7,'Projector\r'),(11,5,'Sound System\r'),(12,5,'TV/DVD\r');
/*!40000 ALTER TABLE `eqpmntsreservation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `facilities`
--

DROP TABLE IF EXISTS `facilities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `facilities` (
  `facilitiesID` int(11) NOT NULL,
  `facilityName` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`facilitiesID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facilities`
--

LOCK TABLES `facilities` WRITE;
/*!40000 ALTER TABLE `facilities` DISABLE KEYS */;
INSERT INTO `facilities` VALUES (1,'Devesse AVR\r'),(2,'Maryheights Oval\r'),(3,'Maryheights Swimming Pool\r'),(4,'Maryheights Amphi Theatre\r'),(5,'Maryheights Bascketball Court\r'),(6,'Maryheights Volleyball Court\r'),(7,'Devesse Plaza\r'),(8,'D501\r'),(9,'D502\r'),(10,'D503\r'),(11,'D504\r'),(12,'D505\r'),(13,'D506\r'),(14,'D507\r'),(15,'D508\r'),(16,'D509\r'),(17,'D510\r'),(18,'D511\r'),(19,'D512\r'),(20,'D513\r'),(21,'D514\r'),(22,'D515\r'),(23,'D516\r'),(24,'D517\r'),(25,'D518\r'),(26,'D519\r'),(27,'D520\r'),(28,'D521\r'),(29,'D522\r'),(30,'D523\r'),(31,'D524\r'),(32,'D525\r'),(33,'D526\r'),(34,'D401\r'),(35,'D402\r'),(36,'D403\r'),(37,'D404\r'),(38,'D405\r'),(39,'D406\r'),(40,'D407\r'),(41,'D408\r'),(42,'D409\r'),(43,'D410\r'),(44,'D411\r'),(45,'D412\r'),(46,'D413\r'),(47,'D414\r'),(48,'D415\r'),(49,'D416\r'),(50,'D417\r'),(51,'D418\r'),(52,'D419\r'),(53,'D420\r'),(54,'D421\r'),(55,'D422\r'),(56,'D423\r'),(57,'D424\r'),(58,'D425\r'),(59,'D401\r'),(60,'D301\r'),(61,'D302\r'),(62,'D303\r'),(63,'D304\r'),(64,'D305\r'),(65,'D306\r'),(66,'D307\r'),(67,'D308\r'),(68,'D309\r'),(69,'D310\r'),(70,'D311\r'),(71,'D312\r'),(72,'D313\r'),(73,'D314\r'),(74,'D315\r'),(75,'D316\r'),(76,'D317\r'),(77,'D318\r'),(78,'D319\r'),(79,'D320\r'),(80,'D321\r'),(81,'D322\r'),(82,'D323\r'),(83,'D324\r'),(84,'D325\r'),(85,'D326\r');
/*!40000 ALTER TABLE `facilities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reservationfacilities`
--

DROP TABLE IF EXISTS `reservationfacilities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reservationfacilities` (
  `facilitiesID` int(11) NOT NULL,
  `userID` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `timeStart` time DEFAULT NULL,
  `timeEnd` time DEFAULT NULL,
  `OGC` varchar(45) DEFAULT NULL,
  `adviser` varchar(45) DEFAULT NULL,
  `participants` int(11) DEFAULT NULL,
  `staffID` int(11) DEFAULT NULL,
  `staffIn` time DEFAULT NULL,
  `staffOut` time DEFAULT NULL,
  PRIMARY KEY (`facilitiesID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservationfacilities`
--

LOCK TABLES `reservationfacilities` WRITE;
/*!40000 ALTER TABLE `reservationfacilities` DISABLE KEYS */;
/*!40000 ALTER TABLE `reservationfacilities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff`
--

DROP TABLE IF EXISTS `staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `staff` (
  `staffID` int(11) NOT NULL,
  `staffType` varchar(45) DEFAULT NULL,
  `staffName` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`staffID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff`
--

LOCK TABLES `staff` WRITE;
/*!40000 ALTER TABLE `staff` DISABLE KEYS */;
INSERT INTO `staff` VALUES (12341,'Security Guard','Jomari Obra\r'),(12342,'Security Guard','Erl Ducas\r'),(12343,'Janitor','Paul Perez\r'),(12344,'Janitor','Ivan Perez\r'),(12345,'Staff','Nikki De Leon\r'),(12346,'Staff','Irriz Madriaga\r');
/*!40000 ALTER TABLE `staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `userID` varchar(45) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`userID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('2156095@slu.edu.ph','John Daniel Peralta\r'),('2160290@slu.edu.ph','Ferdinand De Asis II');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-05-06 15:30:28
