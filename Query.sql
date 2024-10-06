DROP DATABASE `webssis` ;

CREATE  DATABASE `webssis` ;
USE `webssis` ;
CREATE TABLE `college` (
  `code` VARCHAR(10) NOT NULL,  
  `name` VARCHAR(255) NOT NULL, 
  PRIMARY KEY (`code`)
);

CREATE TABLE `program` (
  `code` VARCHAR(10) NOT NULL, 
  `name` VARCHAR(255) NOT NULL, 
  `college` VARCHAR(10),        
  PRIMARY KEY (`code`),         
  FOREIGN KEY (`college`) REFERENCES `college`(`code`)
);

CREATE TABLE `student` (
  `id` VARCHAR(9) NOT NULL,   
  `firstname` VARCHAR(255) NOT NULL,
  `lastname` VARCHAR(255) NOT NULL,
  `course` VARCHAR(10),       
  `year` INT(1) NOT NULL,     
  `gender` ENUM('M', 'F', 'O') NOT NULL, 
  PRIMARY KEY (`id`),       
  FOREIGN KEY (`course`) REFERENCES `program`(`code`)
);

