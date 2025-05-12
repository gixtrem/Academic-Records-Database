CREATE DATABASE IF NOT EXISTS academic_record_db;
USE academic_record_db;

/*
DROP TABLE IF EXISTS Course_Instructors;
DROP TABLE IF EXISTS Enrollments;
DROP TABLE IF EXISTS Instructors;
DROP TABLE IF EXISTS Courses;
DROP TABLE IF EXISTS Students;




-- Students
CREATE TABLE Students (
    student_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100) UNIQUE,
    enrollment_date DATE
);

-- Courses
CREATE TABLE Courses (
    course_id INT AUTO_INCREMENT PRIMARY KEY,
    course_name VARCHAR(50),
    course_description TEXT,
    credit INT
);

-- Instructors
CREATE TABLE Instructors (
    instructor_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100)
);

-- Enrollments
CREATE TABLE Enrollments (
    enrollment_id INT AUTO_INCREMENT PRIMARY KEY,
    student_id INT,
    course_id INT,
    enrollment_date DATE,
    grade VARCHAR(5),
    semester VARCHAR(15),
    FOREIGN KEY (student_id) REFERENCES Students(student_id),
    FOREIGN KEY (course_id) REFERENCES Courses(course_id)
);

-- Course_Instructors
CREATE TABLE Course_Instructors (
    course_instructor_id INT AUTO_INCREMENT PRIMARY KEY,
    course_id INT,
    instructor_id INT,
    FOREIGN KEY (course_id) REFERENCES Courses(course_id),
    FOREIGN KEY (instructor_id) REFERENCES Instructors(instructor_id)
);


USE academic_record_db;

DELETE FROM Enrollments;
DELETE FROM Course_Instructors;
DELETE FROM Instructors;
DELETE FROM Courses;
DELETE FROM Students;


ALTER TABLE Students AUTO_INCREMENT = 1;
ALTER TABLE Courses AUTO_INCREMENT = 1;
ALTER TABLE Instructors AUTO_INCREMENT = 1;
ALTER TABLE Enrollments AUTO_INCREMENT = 1;
ALTER TABLE Course_Instructors AUTO_INCREMENT = 1;

-- Insert sample students
INSERT INTO Students (first_name, last_name, email, enrollment_date) VALUES
('Alice', 'Johnson', 'alice.johnson@university.edu', '2023-09-01'),
('Brian', 'Lee', 'brian.lee@university.edu', '2023-09-01'),
('Cynthia', 'Moore', 'cynthia.moore@university.edu', '2024-01-10');

-- Insert sample courses (updated column name)
INSERT INTO Courses (course_name, course_description, credit) VALUES
('Introduction to Databases', 'Covers relational database concepts and SQL.', 3),
('Web Development', 'Covers HTML, CSS, JavaScript basics.', 4),
('Data Structures', 'Explores arrays, linked lists, trees, and graphs.', 3);

-- Insert sample instructors
INSERT INTO Instructors (first_name, last_name, email) VALUES
('Sarah', 'Miller', 'sarah.miller@faculty.edu'),
('John', 'Davis', 'john.davis@faculty.edu');

-- Insert sample course-instructor relationships
-- Assume course_id and instructor_id match AUTO_INCREMENT order
INSERT INTO Course_Instructors (course_id, instructor_id) VALUES
(1, 1),  -- Introduction to Databases ← Sarah Miller
(2, 2),  -- Web Development ← John Davis
(3, 1);  -- Data Structures ← Sarah Miller

-- Insert sample enrollments with grades
INSERT INTO Enrollments (student_id, course_id, enrollment_date, grade, semester) VALUES
(1, 1, '2023-09-05', 'A', 'Fall2023'),
(1, 2, '2023-09-05', 'B+', 'Fall2023'),
(2, 1, '2023-09-06', 'B', 'Fall2023'),
(2, 3, '2023-09-06', 'A-', 'Fall2023'),
(3, 2, '2024-01-12', 'A', 'Winter2024');

*/

/* CRUD 
INSERT into students ( first_name, last_name, email, enrollment_date) VALUES ('David', 'Smith', 'davidsmith@byui.edu', '2024-05-01');

SELECT * FROM students;

UPDATE students SET email = 'd.smith@byui.edu' WHERE student_id = 4;

SELECT * FROM students;

DELETE FROM students WHERE student_id = 4;

SELECT * FROM students;
*/

-- SELECT * FROM courses;
-- INSERT INTO courses (course_name, course_description, credit) VALUES ('Applied Programming', 'Programming in more languages', 3);
-- SELECT * FROM courses;

-- UPDATE courses SET credit=5  WHERE course_id =4;
-- SELECT * FROM courses;


-- SELECT * FROM enrollments;

-- INSERT INTO enrollments (student_id, course_id, enrollment_date, grade, semester) VALUES (1, 3, '2024-01-10', 'A', 'Winter2024');

-- UPDATE enrollments SET grade = 'C-' WHERE enrollment_id = 3;

-- SELECT * FROM enrollments;

-- DELETE FROM enrollments WHERE enrollment_id = 6;

-- SELECT * FROM enrollments;

/*-- ACADEMIC RECORD FOR ALL STUDENT
SELECT s.first_name, s.last_name, c.course_name, e.grade, e.semester 
	FROM enrollments e 
    JOIN students s ON e.student_id = s.student_id
    JOIN courses c ON e.course_id = c.course_id
    ORDER BY s.last_name;
   
-- AVERAGE GRADE PER COURSE
SELECT c.course_name, COUNT(e.enrollment_id) AS total_enrolled
	FROM enrollments e
    JOIN courses c ON e.course_id = c.course_id
    GROUP BY c.course_name;

-- LIST OF ALL INSTRUCTORS AND COURSES
SELECT i.first_name, i.last_name, c.course_name
	FROM course_instructors ci
    JOIN instructors i ON ci.instructor_id = i.instructor_id
    JOIN courses c ON ci.course_id = c.course_id;
*/