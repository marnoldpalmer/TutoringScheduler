DROP DATABASE TutoringScheduler;

CREATE DATABASE IF NOT EXISTS TutoringScheduler;
GRANT ALL PRIVILEGES ON TutoringScheduler.* to 'tUser'@'localhost'
identified by 'tPasswd';
USE TutoringScheduler;

CREATE TABLE IF NOT EXISTS users
(
	numId INT NOT NULL auto_increment,
	firstname varchar(50) NOT NULL,
	lastname varchar(50) NOT NULL,
	email varchar(50) NOT NULL,
	password varchar(228) NOT NULL,
	accountStatus int(5) NOT NULL,
	classes varchar(228),
  PRIMARY KEY (numId),
  INDEX (classes)
);

CREATE TABLE IF NOT EXISTS appointments
(
	numId INT NOT NULL AUTO_INCREMENT,
	PRIMARY KEY (numId),
	/*datenum DATE(20) NOT NULL,
	appointmenttime TIME(30) NOT NULL,*/
	class varchar(15) NOT NULL,
	studentId int(100) NOT NULL,
	tutorId int(100) NOT NULL,
  INDEX (tutorId)
);

CREATE TABLE IF NOT EXISTS classes
(
	numId INT NOT NULL auto_increment,
	PRIMARY KEY (numId),
	class varchar(15),
	subject varchar(15),
  INDEX (subject)
);
