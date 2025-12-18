-- ============================================
-- Training Institute - Complete Database Setup
-- For TiDB Cloud / MySQL 8.0+
-- ============================================
-- This file contains the complete database schema and sample data
-- Run this in TiDB Cloud SQL Editor to set up the entire database

SET FOREIGN_KEY_CHECKS=0;

-- Drop existing tables
DROP TABLE IF EXISTS feedback;
DROP TABLE IF EXISTS admissionrequest;
DROP TABLE IF EXISTS faculty;
DROP TABLE IF EXISTS course;
DROP TABLE IF EXISTS student;
DROP TABLE IF EXISTS institute;
DROP TABLE IF EXISTS admin;

SET FOREIGN_KEY_CHECKS=1;

-- ============================================
-- Table: admin
-- ============================================
CREATE TABLE admin (
  adminID varchar(20) NOT NULL,
  adminPassword varchar(15) NOT NULL,
  PRIMARY KEY (adminID)
);

INSERT INTO admin VALUES ('admin','admin123');

-- ============================================
-- Table: institute
-- ============================================
CREATE TABLE institute (
  instituteID int NOT NULL,
  instituteName varchar(50) DEFAULT NULL,
  institutePassword varchar(15) NOT NULL,
  affiliationDate varchar(20) NOT NULL,
  address varchar(100) NOT NULL,
  seats int NOT NULL,
  PRIMARY KEY (instituteID)
);

INSERT INTO institute VALUES 
(1,'AIT','ait123','1975-07-29','Mekhri Circle',20),
(2,'NHCE','NHCE123','1980-01-17','Kadubeesanahalli',50),
(3,'KSIT','KSIT123','1985-02-26','Vajarahalli',70),
(4,'KSSEM','KSSEM123','1990-03-03','Kanakpura',60),
(5,'GNIT','GNIT123','1995-03-25','Noida',90),
(6,'SIT','SIT123','2000-04-02','Tumkur',20),
(7,'RVCE','RVCE123','1997-01-13','RR Nagar',40),
(8,'BNMIT','bnmit123','1984-06-18','Banshankari',27),
(9,'BMS','BMS123','1935-01-29','Basvangudi',100),
(10,'DSU','DSU123','1963-11-04','ISRO Layout',30),
(11,'JGI','JGI123','1975-03-02','VV Puram',80),
(12,'MSRIT','MSRIT123','1962-02-17','Mekhri Circle',70);

-- ============================================
-- Table: student
-- ============================================
CREATE TABLE student (
  userID varchar(20) NOT NULL,
  emailID varchar(20) NOT NULL,
  studentName varchar(40) NOT NULL,
  qualification varchar(20) NOT NULL,
  studentPassword varchar(15) NOT NULL,
  number varchar(13) NOT NULL,
  address varchar(100) NOT NULL,
  PRIMARY KEY (userID)
);

INSERT INTO student VALUES 
('kish123','kishore@gmail.com','Kishore Prashanth','CSE Graduate','kishore123','+919845611328','TR Nagar'),
('prat123','prathiksha@gmail.com','Prathiksha SP','CSE Graduate','prat123','+917259659515','Shivmogga'),
('shubha123','shubha@gmail.com','Shubha Y','ECE Graduate','shubha123','+918618060496','Tumkur'),
('pras123','prashwitha@gmail.com','Prashwitha S','CSE Graduate','pras123','+918618774672','Bank Colony'),
('amogh123','amogh@gmail.com','Amogh R','CSE Graduate','amogh123','+987465413218','Kormangala'),
('ganesh123','ganesh@gmail.com','Ganesh M','CSE Graduate','ganesh123','+915864987235','Jaynagar'),
('karan123','karan@gmail.com','Karan R','CSE Graduate','karan123','+916547893545','Brigade'),
('purshu123','purshu@hotmail.com','Purshotham','ECE Graduate','purshu123','+874692123565','BTM'),
('shailesh123','shailesh@gmail.com','Shailesh P','Java Certified','shailesh123','+918542365478','Mumbai'),
('shilp123','shilpa@gmail.com','Shilpa S','IT Graduate','shilp123','+917678280123','Noida'),
('sumith123','sumith@yahoo.com','Sumith Shetty','IS Graduate','sumith123','+694578813328','Bank Colony');

-- ============================================
-- Table: course
-- ============================================
CREATE TABLE course (
  courseID int NOT NULL AUTO_INCREMENT,
  courseName varchar(20) NOT NULL,
  instituteID int DEFAULT NULL,
  PRIMARY KEY (courseID),
  KEY instituteID (instituteID),
  CONSTRAINT course_ibfk_1 FOREIGN KEY (instituteID) REFERENCES institute (instituteID)
);

INSERT INTO course VALUES 
(1,'ECE',1),(2,'CSE',2),(3,'IS',3),(4,'EEE',4),(5,'MECH',5),
(6,'CIVIL',6),(7,'TC',7),(8,'MECHATRONICS',8),(9,'AERONAUTICS',9),
(10,'BIOTECH',10),(11,'CHEMICAL',11),(12,'AI',12);

-- ============================================
-- Table: faculty
-- ============================================
CREATE TABLE faculty (
  facultyID int NOT NULL AUTO_INCREMENT,
  facultyName varchar(20) NOT NULL,
  instituteID int DEFAULT NULL,
  PRIMARY KEY (facultyID),
  KEY instituteID (instituteID),
  CONSTRAINT faculty_ibfk_1 FOREIGN KEY (instituteID) REFERENCES institute (instituteID)
);

INSERT INTO faculty VALUES 
(1,'Ratna',1),(2,'Geetha',2),(3,'Lakshmi',3),(4,'Vandana',4),
(5,'Durgesh',5),(6,'Uma',6),(7,'Srikala',7),(9,'Rani',8),
(10,'Shailesh',10),(11,'Abhiram',11),(12,'Abhimanyu',12);

-- ============================================
-- Table: admissionrequest
-- ============================================
CREATE TABLE admissionrequest (
  requestID int NOT NULL AUTO_INCREMENT,
  userID varchar(20) DEFAULT NULL,
  courseID int DEFAULT NULL,
  requestDate date DEFAULT NULL,
  status tinyint(1) DEFAULT NULL,
  PRIMARY KEY (requestID),
  KEY userID (userID),
  KEY courseID (courseID),
  CONSTRAINT admissionrequest_ibfk_1 FOREIGN KEY (userID) REFERENCES student (userID),
  CONSTRAINT admissionrequest_ibfk_2 FOREIGN KEY (courseID) REFERENCES course (courseID)
);

INSERT INTO admissionrequest VALUES 
(11,'kish123',2,'2021-10-12',1),
(15,'prat123',3,'2021-10-29',0),
(16,'shubha123',3,'2021-11-02',0);

-- ============================================
-- Table: feedback
-- ============================================
CREATE TABLE feedback (
  feedbackID int NOT NULL AUTO_INCREMENT,
  userID varchar(20) DEFAULT NULL,
  instituteID int DEFAULT NULL,
  description varchar(200) DEFAULT NULL,
  feedbackDate date DEFAULT NULL,
  PRIMARY KEY (feedbackID),
  KEY userID (userID),
  KEY instituteID (instituteID),
  CONSTRAINT feedback_ibfk_1 FOREIGN KEY (userID) REFERENCES student (userID),
  CONSTRAINT feedback_ibfk_2 FOREIGN KEY (instituteID) REFERENCES institute (instituteID)
);

INSERT INTO feedback VALUES 
(1,'shubha123',1,'Good infrastructure & great learning environment','2021-07-27'),
(2,'prat123',2,'Amazing fests & diversified campus','2021-08-01'),
(3,'kish123',3,'Good set of teachers, easily accessible','2021-05-05');

-- ============================================
-- Verification Queries
-- ============================================
-- Run these to verify the data was inserted correctly:
-- SELECT COUNT(*) FROM admin;           -- Should be 1
-- SELECT COUNT(*) FROM institute;       -- Should be 12
-- SELECT COUNT(*) FROM student;         -- Should be 11
-- SELECT COUNT(*) FROM course;          -- Should be 12
-- SELECT COUNT(*) FROM faculty;         -- Should be 11
-- SELECT COUNT(*) FROM admissionrequest; -- Should be 3
-- SELECT COUNT(*) FROM feedback;        -- Should be 3

-- ============================================
-- Login Credentials for Testing
-- ============================================
-- Admin:     admin / admin123
-- Student:   kish123 / kishore123
-- Institute: 1 / ait123
-- ============================================
