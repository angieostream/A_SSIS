DROP DATABASE IF EXISTS `webssis`;

CREATE DATABASE `webssis`;
USE `webssis`;

CREATE TABLE `colleges` (
  `code` VARCHAR(10) NOT NULL,
  `name` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`code`)
);

CREATE TABLE `programs` (
  `code` VARCHAR(10) NOT NULL,
  `name` VARCHAR(255) NOT NULL,
  `college` VARCHAR(10),
  `college_code` VARCHAR(10),  -- New column for college_code
  PRIMARY KEY (`code`),
  FOREIGN KEY (`college`) REFERENCES `colleges`(`code`)
);

CREATE TABLE `students` (
  `id` VARCHAR(9) NOT NULL,
  `firstname` VARCHAR(255) NOT NULL,
  `lastname` VARCHAR(255) NOT NULL,
  `course` VARCHAR(10),
  `year` INT NOT NULL,
  `gender` ENUM('Male', 'Female', 'Other') NOT NULL,
  PRIMARY KEY (`id`),
  FOREIGN KEY (`course`) REFERENCES `programs`(`code`)
);