/* 
	Scrumbled Eggs
	This document will hold code that 
	represents our most recent version of our database.
 */
 
 /*------------------------------------------------------------------*/
 /* Students table */
 CREATE TABLE students
 (
	sid CHAR(9) PRIMARY KEY NOT NULL,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL

 );

 DROP TABLE students;
 
 /*------------------------------------------------------------------*/
 /* Instructors table */
  CREATE TABLE instructors
 (
	id CHAR(9) PRIMARY KEY NOT NULL AUTO_INCREMENT,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL
 );

 DROP TABLE instructors;
 
 /*------------------------------------------------------------------*/
 /* Lab hours table */
 CREATE TABLE lab_hours
 (
	sid CHAR(9) PRIMARY KEY NOT NULL,
	total_days INT,
	total_hours TIME,
	instructors CHAR(9) FOREIGN KEY
	/* somehow save data for everyday? */
 );

  DROP TABLE lab_hours;
 
 /*------------------------------------------------------------------*/