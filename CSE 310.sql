CREATE DATABASE if NOT EXISTS academic_record_db;
USE academic_record_db;
/*CREATE TABLE hello_world (
message VARCHAR(100));
INSERT INTO hello_world VALUES ('Hello, Umah SQL');
SELECT * FROM hello_world;
*/

/*
Create table students (
	student_id INT AUTO_INCREMENT PRIMARY KEY,
    First_name VARCHAR(50),
    Last_name VARCHAR(50),
    email VARCHAR(100) UNIQUE,
    enrollment_date DATE);
*/

INSERT INTO students (first_name, last_name, email, enrollment_date)
VALUES ('Umah', 'godday', 'umah@trial.com', '2025-04-04');

SELECT * FROM students;