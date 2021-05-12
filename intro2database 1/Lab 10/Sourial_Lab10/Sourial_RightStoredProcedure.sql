-- MySQL dump 10.13  Distrib 5.7.19, for Win64 (x86_64)
--
-- Host: localhost    Database: lab7
-- ------------------------------------------------------
-- Server version	5.7.19-log

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
-- Table structure for table `professor`
--

DROP TABLE IF EXISTS `professor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `professor` (
  `ProfessorId` int(11) NOT NULL AUTO_INCREMENT,
  `ProfessorProgram` varchar(255) DEFAULT NULL,
  `PhoneNo` int(10) DEFAULT NULL,
  `Age` int(11) DEFAULT NULL,
  `ProfessorName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ProfessorId`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `professor`
--

LOCK TABLES `professor` WRITE;
/*!40000 ALTER TABLE `professor` DISABLE KEYS */;
INSERT INTO `professor` VALUES (1,'Computer Science',123456789,30,'Ted'),(2,'Computer Programmer',987654321,32,'Joey'),(3,'Business Management',456789123,35,'Mina'),(4,'Business Accounting',123789456,31,'Monica'),(5,'Computer Systems',114477985,33,'Jack'),(6,'Computer Technician',654788978,55,'Ellie');
/*!40000 ALTER TABLE `professor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student` (
  `﻿StudentNo` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `StudentProgram` varchar(255) NOT NULL,
  `PhoneNo` int(11) NOT NULL,
  `Age` int(11) NOT NULL,
  `FirstName` text NOT NULL,
  `LastName` text NOT NULL,
  PRIMARY KEY (`﻿StudentNo`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES (1,'Computer Science',147258963,42,'Vicky','Khanna'),(2,'Computer Science',147852369,25,'Anita','Arora'),(3,'Computer Programmer',123741852,45,'Natasha','Smith'),(4,'Business Accounting',235478914,33,'Raj','Kapoor'),(5,'Business Management',324718964,21,'Frank','Tribiani'),(6,'Business Accounting',122134567,33,'George','Kapoor'),(7,'Business Management',112366547,35,'Stan','Smith'),(8,'Computer Programmer',998754126,20,'Steve','Smith'),(9,'Business Intelligence',112201245,29,'Amanda','Kapoor'),(10,'Computer Technician',558877414,36,'Joseph','Gong'),(11,'Computer Science',854777896,33,'David','Kapoor'),(12,'Business Management',854777896,21,'Dennis','Smith'),(13,'Business Management',154777896,45,'Robert','Johnson'),(14,'Business Management',254778960,45,'George','Davis'),(15,'Computer Science',347778960,51,'Jeffrey','Williams'),(16,'Computer Programmer',447778960,57,'Eric','Smith'),(17,'Computer Science',554778960,22,'Ron','Davis'),(18,'Computer Science',654778960,25,'Robert','Smith'),(19,'Computer Science',754778960,28,'Jennifer','Wilson'),(20,'Computer Science',854778960,31,'John','Davis'),(21,'Business Accounting',954778960,34,'Alex','Browm'),(22,'Business Intelligence',847778960,37,'Chris','Smith'),(23,'Business Intelligence',154778960,40,'Elen','Watson'),(24,'Business Intelligence',247778960,43,'Jimmy','Cox'),(25,'Business Accounting',154778960,19,'Jared','James'),(26,'Business Accounting',157778960,23,'John','Hughes'),(27,'Computer Technician',541178960,27,'Jack','Davis'),(28,'Photography',416477960,31,'David','Cox'),(29,'Photography',547778960,35,'Dennis','Wilson'),(30,'Photography',154778960,39,'Robert','Kapoor'),(31,'Photography',157778960,43,'George','James'),(32,'Computer Technician',247778960,47,'Jeffrey','Gray'),(33,'Computer Technician',214777960,22,'John','Cox'),(34,'Computer Technician',254778960,20,'Jack','Davis'),(35,'Computer Technician',547778960,25,'Jefferey','Collins'),(36,'Computer Science',247778960,28,'Jack','Gray'),(37,'Business Management',554777890,28,'Alice','Cox'),(38,'Photography',265478960,24,'Lester','James'),(39,'Business Management',254778960,28,'Alex','Gray'),(40,'Photography',257778960,28,'Jack','Smith');
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_professor`
--

DROP TABLE IF EXISTS `student_professor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student_professor` (
  `student_professor_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ProfessorId` int(11) NOT NULL,
  `StudentNo` int(11) unsigned NOT NULL,
  PRIMARY KEY (`student_professor_id`),
  KEY `ProfessorId_idx` (`ProfessorId`),
  KEY `StudentNo_idx` (`StudentNo`),
  CONSTRAINT `ProfessorId` FOREIGN KEY (`ProfessorId`) REFERENCES `professor` (`ProfessorId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `StudentNo` FOREIGN KEY (`StudentNo`) REFERENCES `student` (`﻿StudentNo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_professor`
--

LOCK TABLES `student_professor` WRITE;
/*!40000 ALTER TABLE `student_professor` DISABLE KEYS */;
/*!40000 ALTER TABLE `student_professor` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-04-14 17:16:59
DELIMITER $$
CREATE PROCEDURE `RightJoinStudent`()
BEGIN
select FirstName, ProfessorName, StudentProgram, ProfessorProgram from professor 
right outer join student 
 on professorprogram = studentprogram ;
END$$
DELIMITER ;

call RightJoinStudent 

 