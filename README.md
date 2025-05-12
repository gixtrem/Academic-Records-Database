# 🎓 Academic Records Database

An SQL-based student information system for managing academic records, built as part of **Sprint 1** in **CSE 310: Applied Programming** at BYU–Idaho.

---

## 📘 Table of Contents

- [Overview](#overview)
- [Technologies Used](#technologies-used)
- [Features](#features)
- [Database Schema](#database-schema)
- [Entity-Relationship Diagram](#entity-relationship-diagram)
- [Sample Queries](#sample-queries)
- [Resources Used](#resources-used)
- [Author](#author)
- [Demo Video](#demo-video)

---

## 📌 Overview

The **Academic Records Database** is a relational system designed to track student information, course enrollments, instructor assignments, and academic performance including grades and semesters.

This project demonstrates:
- Proper use of **primary and foreign keys**
- A **normalized schema** (to 3NF)
- **CRUD** operations across entities
- Advanced **JOIN** queries for analytics

---

## 🛠 Technologies Used

- **MySQL Workbench 8.0+** — schema design & SQL execution
- **SQL — database definition & manipulation
- **GitHub** — version control and repository management
- **YouTube**  — demo walkthrough

---

## ✅ Features

- Add, update, and delete student records
- Create courses and assign instructors
- Enroll students and track academic grades
- Link courses and instructors (many-to-many)
- Query academic history by semester and course
- Normalize data to avoid redundancy

---

## 🧱 Database Schema

| Table              | Description                                         |
|-------------------|-----------------------------------------------------|
| `Students`         | Student info (name, email, enrollment date)         |
| `Courses`          | Course details (name, description, credit hours)    |
| `Instructors`      | Faculty info (name, email)                          |
| `Enrollments`      | Records of student-course-grade-semester            |
| `Course_Instructors` | Connects instructors to courses (many-to-many)     |

---

## 🖼️ Entity-Relationship Diagram

![ERD](the%20erd.png)

---

## 📊 Sample Queries

> 🔹 Get full academic record per student:
```sql
SELECT s.first_name, s.last_name, c.course_name, e.grade, e.semester
FROM Enrollments e
JOIN Students s ON e.student_id = s.student_id
JOIN Courses c ON e.course_id = c.course_id;
