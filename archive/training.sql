-- CREATING DATABASE:
create database training_institution;

-- USING DATABASE:
use training_institution;

-- CREATING TABLES:

create table institute(
instituteID int primary key,
instituteName varchar(50) unique not null,
institutePassword varchar(15) unique not null,
affiliationDate date not null,
address varchar(100) not null,
seats int not null
);

create table admin(
adminID varchar(20) primary key DEFAULT 'admin' ,
adminPassword varchar(15) unique not null DEFAULT 'admin123'
);

create table student(
userID varchar(20) primary key,
emailID varchar(20) unique not null,
studentName varchar(40) not null,
qualification varchar(20) not null,
studentPassword varchar(15) unique not null,
number varchar(13) unique not null,
address varchar(100) not null
);

create table feedback(
feedbackID int primary key auto_increment,
userID varchar(20),
FOREIGN KEY (userID) REFERENCES student(userID),
instituteID int,
FOREIGN KEY (instituteID) REFERENCES institute(instituteID),
description varchar(200),
feedbackDate date
);

create table faculty(
facultyID int primary key auto_increment,
facultyName varchar(20) not null,
instituteID int,
FOREIGN KEY (instituteID) REFERENCES institute(instituteID)
);

create table course(
courseID int primary key auto_increment,
courseName varchar(20) unique not null,
instituteID int,
FOREIGN KEY (instituteID) REFERENCES institute(instituteID)
);

create table admissionrequest(
requestID int primary key auto_increment,
userID varchar(20),
FOREIGN KEY (userID) REFERENCES student(userID),
courseID int,
FOREIGN KEY (courseID) REFERENCES course(courseID),
requestDate date,
status boolean 
);

-- INSERTING VALUES INTO TABLES:

insert into admin values
("admin","admin123");

insert into institute(instituteID, instituteName, institutePassword, affiliationDate, address, seats)
values
(1, "AIT", "AIT123",  "1975-07-29", "Soladevanahalli", 80),
(2, "NHCE", "NHCE123", "1980-01-17", "Kadubisanahalli", 50),
(3, "KSIT", "KSIT123", "1985-02-26", "Vajarahalli", 70),
(4, "KSSEM", "KSSEM123", "1990-03-03", "Kanakpura", 60),
(5, "GNIT", "GNIT123", "1995-03-25", "Noida", 90),
(6, "SIT", "SIT123", "2000-04-02", "Tumkur", 20),
(7, "RVCE", "RVCE123", "1997-01-13", "RR Nagar", 40)
;

insert into student (userID, emailID, studentName, qualification, studentPassword, number, address)
values
("kish123", "kishore@gmail.com", "Kishore Prashanth", "CSE Graduate", "kishore123", "+919845611328", "TR Nagar"),
("pras123", "prashwitha@gmail.com", "Prashwitha S", "CSE Graduate", "pras123", "+918618774672", "Bank Colony"),
("prat123", "prathiksha@gmail.com", "Prathiksha SP", "CSE Graduate", "prat123", "+917259659515", "Shivmogga"),
("shilp123", "shilpa@gmail.com", "Shilpa S", "IT Graduate", "shilp123", "+917678280123", "Noida"),
("shubha123", "shubha@gmail.com", "Shubha Y", "ECE Graduate", "shubha123", "+918618060496", "Tumkur")
;


-- 	SELECTING VALUES FROM TABLES

select * from admissionrequest;

select * from course;

select * from institute;

select * from student;

select * from admin;

select * from feedback;

select * from faculty;

select * from course c, institute i, admissionrequest a, student s where c.instituteid = i.instituteid and c.courseid = a.courseid and a.userid = s.userid and a.courseid= 2;








