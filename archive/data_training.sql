-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: localhost    Database: training_institution
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
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `adminID` varchar(20) NOT NULL DEFAULT 'admin',
  `adminPassword` varchar(15) NOT NULL DEFAULT 'admin123',
  PRIMARY KEY (`adminID`),
  UNIQUE KEY `adminPassword` (`adminPassword`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES ('admin','admin123');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admissionrequest`
--

DROP TABLE IF EXISTS `admissionrequest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admissionrequest` (
  `requestID` int NOT NULL AUTO_INCREMENT,
  `userID` varchar(20) DEFAULT NULL,
  `courseID` int DEFAULT NULL,
  `requestDate` date DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`requestID`),
  KEY `userID` (`userID`),
  KEY `courseID` (`courseID`),
  CONSTRAINT `admissionrequest_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `student` (`userID`),
  CONSTRAINT `admissionrequest_ibfk_2` FOREIGN KEY (`courseID`) REFERENCES `course` (`courseID`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admissionrequest`
--

LOCK TABLES `admissionrequest` WRITE;
/*!40000 ALTER TABLE `admissionrequest` DISABLE KEYS */;
INSERT INTO `admissionrequest` VALUES (11,'pras123',2,'2021-10-12',1),(15,'prat123',3,'2021-10-29',0),(16,'shubha123',3,'2021-11-02',0),(23,'shilp123',6,'2021-10-04',1);
/*!40000 ALTER TABLE `admissionrequest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course`
--

DROP TABLE IF EXISTS `course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `course` (
  `courseID` int NOT NULL AUTO_INCREMENT,
  `courseName` varchar(20) NOT NULL,
  `instituteID` int DEFAULT NULL,
  PRIMARY KEY (`courseID`),
  UNIQUE KEY `courseName` (`courseName`),
  KEY `instituteID` (`instituteID`),
  CONSTRAINT `course_ibfk_1` FOREIGN KEY (`instituteID`) REFERENCES `institute` (`instituteID`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course`
--

LOCK TABLES `course` WRITE;
/*!40000 ALTER TABLE `course` DISABLE KEYS */;
INSERT INTO `course` VALUES (1,'ECE',1),(2,'CSE',2),(3,'IS',3),(4,'EEE',4),(5,'MECH',5),(6,'CIVIL',6),(7,'TC',7),(8,'MECHATRONICS',8),(9,'AERONAUTICS',9),(10,'BIOTECH',10),(11,'CHEMICAL',11),(12,'AI',12);
/*!40000 ALTER TABLE `course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faculty`
--

DROP TABLE IF EXISTS `faculty`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faculty` (
  `facultyID` int NOT NULL AUTO_INCREMENT,
  `facultyName` varchar(20) NOT NULL,
  `instituteID` int DEFAULT NULL,
  PRIMARY KEY (`facultyID`),
  KEY `instituteID` (`instituteID`),
  CONSTRAINT `faculty_ibfk_1` FOREIGN KEY (`instituteID`) REFERENCES `institute` (`instituteID`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faculty`
--

LOCK TABLES `faculty` WRITE;
/*!40000 ALTER TABLE `faculty` DISABLE KEYS */;
INSERT INTO `faculty` VALUES (1,'Ratna',1),(2,'Geetha',2),(3,'Lakshmi',3),(4,'Vandana',4),(5,'Durgesh',5),(6,'Uma',6),(7,'Srikala',7),(9,'Rani',8),(10,'Shailesh',10),(11,'Abhiram',11),(12,'Abhimanyu',12);
/*!40000 ALTER TABLE `faculty` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `feedback` (
  `feedbackID` int NOT NULL AUTO_INCREMENT,
  `userID` varchar(20) DEFAULT NULL,
  `instituteID` int DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `feedbackDate` date DEFAULT NULL,
  PRIMARY KEY (`feedbackID`),
  KEY `userID` (`userID`),
  KEY `instituteID` (`instituteID`),
  CONSTRAINT `feedback_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `student` (`userID`),
  CONSTRAINT `feedback_ibfk_2` FOREIGN KEY (`instituteID`) REFERENCES `institute` (`instituteID`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedback`
--

LOCK TABLES `feedback` WRITE;
/*!40000 ALTER TABLE `feedback` DISABLE KEYS */;
INSERT INTO `feedback` VALUES (1,'shubha123',1,'Good infrastructure & great learning environment','2021-07-27'),(2,'prat123',2,'Amazing fests & diversified campus','2021-08-01'),(3,'kish123',3,'Good set of teachers, easily accessible','2021-05-05'),(4,'pras123',4,'Very clean canteen faciliity','2021-10-25'),(5,'shilp123',5,'Vast campus, eco-friendly campus','2021-12-06'),(6,'amogh123',6,'Worst canteen, unhygenic','2021-08-19'),(7,'purshu123',7,'Bad teachers, no subject knowledge','2021-07-26'),(8,'karan123',8,'No play area','2021-05-05'),(9,'sumith123',9,'Secluded area no transport facility','2021-04-21');
/*!40000 ALTER TABLE `feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `institute`
--

DROP TABLE IF EXISTS `institute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `institute` (
  `instituteID` int NOT NULL,
  `instituteName` varchar(50) DEFAULT NULL,
  `institutePassword` varchar(15) NOT NULL,
  `affiliationDate` date NOT NULL,
  `address` varchar(100) NOT NULL,
  `seats` int NOT NULL,
  PRIMARY KEY (`instituteID`),
  UNIQUE KEY `institutePassword` (`institutePassword`),
  UNIQUE KEY `instituteName` (`instituteName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `institute`
--

LOCK TABLES `institute` WRITE;
/*!40000 ALTER TABLE `institute` DISABLE KEYS */;
INSERT INTO `institute` VALUES (1,'AIT','ait123','1975-07-29','Mekhri Circle',20),(2,'NHCE','NHCE123','1980-01-17','Kadubeesanahalli',50),(3,'KSIT','KSIT123','1985-02-26','Vajarahalli',70),(4,'KSSEM','KSSEM123','1990-03-03','Kanakpura',60),(5,'GNIT','GNIT123','1995-03-25','Noida',90),(6,'SIT','SIT123','2000-04-02','Tumkur',20),(7,'RVCE','RVCE123','1997-01-13','RR Nagar',40),(8,'BNMIT','bnmit123','1984-06-18','Banshankari',27),(9,'BMS','BMS123','1935-01-29','Basvangudi',100),(10,'DSU','DSU123','1963-11-04','ISRO Layout',30),(11,'JGI','JGI123','1975-03-02','VV Puram',80),(12,'MSRIT','MSRIT123','1962-02-17','Mekhri Circle',70),(13,'JNNCE','JNNCE123','1943-08-06','Shivmogga',120),(14,'PES','PES123','1970-03-25','Nice Road',110),(15,'JSS','JSS123','1979-11-14','Mysore',180);
/*!40000 ALTER TABLE `institute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student` (
  `userID` varchar(20) NOT NULL,
  `emailID` varchar(20) NOT NULL,
  `studentName` varchar(40) NOT NULL,
  `qualification` varchar(20) NOT NULL,
  `studentPassword` varchar(15) NOT NULL,
  `number` varchar(13) NOT NULL,
  `address` varchar(100) NOT NULL,
  PRIMARY KEY (`userID`),
  UNIQUE KEY `emailID` (`emailID`),
  UNIQUE KEY `studentPassword` (`studentPassword`),
  UNIQUE KEY `number` (`number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES ('abc123','abc@gmail.com','abc','AI','abc123','+859988556612','bangalore'),('amogh123','amogh@gmail.com','Amogh R','CSE Graduate','amogh123','+987465413218','Kormangala'),('ganesh123','ganesh@gmail.com','Ganesh M','CSE Graduate','ganesh123','+915864987235','Jaynagar'),('karan123','karan@gmail.com','Karan R','CSE Graduate','karan123','+916547893545','Brigade'),('kish123','kishore@gmail.com','Kishore Prashanth','CSE Graduate','kishore123','+919845611328','TR Nagar'),('pras123','prashwitha@gmail.com','Prashwitha S','CSE Graduate','pras123','+918618774672','Bank Colony'),('prat123','prathiksha@gmail.com','Prathiksha SP','CSE Graduate','prat123','+917259659515','Shivmogga'),('purshu123','purshu@hotmail.com','Purshotham','ECE Graduate','purshu123','+874692123565','BTM'),('shailesh123','shailesh@gmail.com','Shailesh P','Java Certified','shailesh123','+918542365478','Mumbai'),('shilp123','shilpa@gmail.com','Shilpa S','IT Graduate','shilp123','+917678280123','Noida'),('shubha123','shubha@gmail.com','Shubha Y','ECE Graduate','shubha123','+918618060496','Tumkur'),('sumith123','sumith@yahoo.com','Sumith Shetty','IS Graduate','sumith123','+694578813328','Bank Colony');
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

-- Dump completed on 2021-11-05 11:08:29
