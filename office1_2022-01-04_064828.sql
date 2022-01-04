/*!40101 SET NAMES utf8 */;
/*!40014 SET FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/ office1 /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE office1;

DROP TABLE IF EXISTS designation;
CREATE TABLE `designation` (
  `eid` int NOT NULL,
  `post` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`eid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

DROP TABLE IF EXISTS employee;
CREATE TABLE `employee` (
  `eid` int NOT NULL,
  `ename` varchar(10) DEFAULT NULL,
  `address` varchar(10) DEFAULT NULL,
  `salary` int DEFAULT NULL,
  PRIMARY KEY (`eid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

DROP TABLE IF EXISTS project;
CREATE TABLE `project` (
  `eid` int NOT NULL,
  `pid` varchar(5) DEFAULT NULL,
  `pname` varchar(10) DEFAULT NULL,
  `plocation` varchar(10) DEFAULT NULL,
  KEY `eid` (`eid`),
  CONSTRAINT `project_ibfk_1` FOREIGN KEY (`eid`) REFERENCES `employee` (`eid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

DROP TABLE IF EXISTS students;
CREATE TABLE `students` (
  `sname` varchar(10) DEFAULT NULL,
  `coursename` varchar(10) DEFAULT NULL,
  `since` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO designation(eid,post) VALUES(1,'Manager'),(2,'HR'),(3,'developer'),(4,'Marketing Head'),(5,'developer'),(6,'Market analyst'),(7,'Sr.Market Analyst'),(8,'Manager'),(9,'developer'),(10,'Jr.Market Analyst');

INSERT INTO employee(eid,ename,address,salary) VALUES(1,'Ravi','Chandigarh',75000),(2,'Varun','Delhi',55000),(3,'Nitin','Pune',67500),(4,'Dev','Bangalore',45000),(5,'Ammy','Chandigarh',64500),(6,'Nagesh','Kolkata',50000),(7,'Subhadip','Kolkata',90000),(8,'Subham','Pune',65000),(9,'Ashutosh','Pune',60000),(10,'Bikash','Bangalore',60000);

INSERT INTO project(eid,pid,pname,plocation) VALUES(1,'p1','iot','Bangalore'),(5,'p2','big data','Delhi'),(3,'p3','android','Mumbai'),(4,'p3','android','Hydrabad'),(7,'p4','analytics','Noida'),(9,'p4','analytics','Ahmedabad'),(10,'p1','azure','Bangalore');
INSERT INTO students(sname,coursename,since) VALUES('ram','mca',2017),('shyam','bca',2018),('ram','bca',2014);