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
	id CHAR(9) PRIMARY KEY NOT NULL ,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL
 );

 DROP TABLE instructors;

/*------------------------------------------------------------------*/
 /* Lab hours table */
 CREATE TABLE lab_hours
 (
	sid CHAR(9) PRIMARY KEY NOT NULL,
	total_days SMALLINT,
	total_hours TIME,
	instructors CHAR(9),
	FOREIGN KEY(instructors) REFERENCES instructors(id),
	FOREIGN KEY(sid) REFERENCES students(sid)
 );
	/* somehow save data for everyday? */

  DROP TABLE lab_hours;

/*------------------------------------------------------------------*/
  /* Add content to Students */
  INSERT INTO students (sid, first_name, last_name)
  VALUES("111111111", "Eva", "Super");
  INSERT INTO students (sid, first_name, last_name)
  VALUES("111111112", "Jenna", "Cali");
  INSERT INTO students (sid, first_name, last_name)
  VALUES("111111113", "Saki", "Fragile");
  INSERT INTO students (sid, first_name, last_name)
  VALUES("111111114", "Phoebe", "Istic");
  INSERT INTO students (sid, first_name, last_name)
  VALUES("111111115", "Emiliya", "Expialadocious");

  /* Add content to Instructors */
  INSERT INTO instructors (id, first_name, last_name)
  VALUES ("999999991", "Chanda","Every");
  INSERT INTO instructors (id, first_name, last_name)
  VALUES ("999999992", "Marisela","Good");
  INSERT INTO instructors (id, first_name, last_name)
  VALUES ("999999993", "Erin","Boy");
  INSERT INTO instructors (id, first_name, last_name)
  VALUES ("999999994", "Yanely","Deserves");

  /* Add content to Lab hours */
  INSERT INTO lab_hours (sid, total_days, total_hours, instructors)
  VALUES ("111111111", 20, '25:35:00',"999999991");
  INSERT INTO lab_hours (sid, total_days, total_hours, instructors)
  VALUES ("111111112", 1, '47:00:00',"999999992");
  INSERT INTO lab_hours (sid, total_days, total_hours, instructors)
  VALUES ("111111113", 14, '1:05:00',"999999993");
  INSERT INTO lab_hours (sid, total_days, total_hours, instructors)
  VALUES ("111111114", 14, '15:20:00',"999999994");
  INSERT INTO lab_hours (sid, total_days, total_hours, instructors)
  VALUES ("111111115", 16, '19:30:00',"999999991");
/*------------------------------------------------------------------*/
