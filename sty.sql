-- MySQL dump 10.13  Distrib 5.7.21, for Linux (x86_64)
--
-- Host: localhost    Database: sty
-- ------------------------------------------------------
-- Server version	5.7.21-0ubuntu0.16.04.1

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
-- Table structure for table `expenses`
--

DROP TABLE IF EXISTS `expenses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `expenses` (
  `srNo` int(11) NOT NULL,
  `month` varchar(45) NOT NULL,
  `stationary` double NOT NULL,
  `rental` double NOT NULL,
  `payments` double NOT NULL,
  `others` double NOT NULL,
  `total` double DEFAULT NULL,
  PRIMARY KEY (`srNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expenses`
--

LOCK TABLES `expenses` WRITE;
/*!40000 ALTER TABLE `expenses` DISABLE KEYS */;
INSERT INTO `expenses` VALUES (1,'Jan',1200,1100,6000,4000,12300),(2,'Feb',2000,3200,4000,4000,13200);
/*!40000 ALTER TABLE `expenses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nonteachingstaff`
--

DROP TABLE IF EXISTS `nonteachingstaff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nonteachingstaff` (
  `id` int(11) NOT NULL,
  `firstName` varchar(45) NOT NULL,
  `lastName` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `subject` varchar(45) NOT NULL,
  `joiningDate` date NOT NULL,
  `contact` varchar(45) NOT NULL,
  `paid` varchar(45) NOT NULL,
  `pending` varchar(45) NOT NULL,
  `department` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nonteachingstaff`
--

LOCK TABLES `nonteachingstaff` WRITE;
/*!40000 ALTER TABLE `nonteachingstaff` DISABLE KEYS */;
INSERT INTO `nonteachingstaff` VALUES (1,'Abhishek','Tripathi','None','None','2016-03-10','9323055049','5000','8000','Accounts'),(2,'Kush','Trivedi','None','None','2016-04-27','9323055049','4000','5000','Assitant');
/*!40000 ALTER TABLE `nonteachingstaff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payment` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `jan` double DEFAULT NULL,
  `feb` double DEFAULT NULL,
  `mar` double DEFAULT NULL,
  `apr` double DEFAULT NULL,
  `may` double DEFAULT NULL,
  `june` double DEFAULT NULL,
  `july` double DEFAULT NULL,
  `aug` double DEFAULT NULL,
  `sept` double DEFAULT NULL,
  `oct` double DEFAULT NULL,
  `nov` double DEFAULT NULL,
  `dec` double DEFAULT NULL,
  `mode` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
INSERT INTO `payment` VALUES (1,'AshokThakur',2000,3000,500,1000,5000,4000,NULL,NULL,NULL,NULL,NULL,NULL,'Cash'),(2,'AmitYadav',1000,2000,500,400,1200,9660,NULL,NULL,NULL,NULL,NULL,NULL,'Cheque'),(3,'DeepakSharma',4000,100,1000,1200,1988,2000,NULL,NULL,NULL,NULL,NULL,NULL,'Cash'),(4,'AbhishekTripathi',2000,1000,100,1000,2000,3000,NULL,NULL,NULL,NULL,NULL,NULL,'Cash');
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teachingstaff`
--

DROP TABLE IF EXISTS `teachingstaff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `teachingstaff` (
  `id` int(11) NOT NULL,
  `firstName` varchar(45) NOT NULL,
  `lastName` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `subject` varchar(45) NOT NULL,
  `joiningDate` date NOT NULL,
  `contact` varchar(45) NOT NULL,
  `paid` varchar(45) NOT NULL,
  `pending` varchar(45) NOT NULL,
  `department` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teachingstaff`
--

LOCK TABLES `teachingstaff` WRITE;
/*!40000 ALTER TABLE `teachingstaff` DISABLE KEYS */;
INSERT INTO `teachingstaff` VALUES (1,'Ashok','Thakur','iashok180@gmail.com','Physics','2016-04-12','9323055049','6000','9000','None'),(2,'Amit','Yadav','amit1@gmail.com','Maths','2016-03-30','9323055049','6000','9000','None'),(3,'Deepak','Sharma','deepak1@gmail.com','Physics','2016-04-18','9323055049','7000','5000','None');
/*!40000 ALTER TABLE `teachingstaff` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-03-06 11:58:05
