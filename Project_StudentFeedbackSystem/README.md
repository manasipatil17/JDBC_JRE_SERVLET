📚 Student Feedback System
A simple web-based Student Feedback System built using Java (JSP & Servlets) and MySQL. This system allows students to register, log in, and submit feedback, while administrators can view all feedback entries.

🔧 Features

👩‍🎓 Student Module
Student Registration with profile photo upload
Login and session management
Submit feedback


👨‍💼 Admin Module
Admin login
View all feedback with student details
Manage and monitor feedback submissions

🛠️ Tech Stack
Frontend: HTML, CSS, JSP
Backend: Java Servlets, JDBC
Database: MySQL
Server: Apache Tomcat

🗄️ Database Schema

students Table
+---------------+--------------+------+-----+---------+----------------+
| Field         | Type         | Null | Key | Default | Extra          |
+---------------+--------------+------+-----+---------+----------------+
| id            | int          | NO   | PRI | NULL    | auto_increment |
| name          | varchar(150) | YES  |     | NULL    |                |
| course        | varchar(150) | YES  |     | NULL    |                |
| gender        | varchar(10)  | YES  |     | NULL    |                |
| phone         | bigint       | YES  |     | NULL    |                |
| email         | varchar(150) | YES  | UNI | NULL    |                |
| password      | varchar(155) | YES  |     | NULL    |                |
| profile_photo | varchar(255) | YES  |     | NULL    |                |
+---------------+--------------+------+-----+---------+----------------+

feedback Table
+----------------+----------+------+-----+-------------------+-------------------+
| Field          | Type     | Null | Key | Default           | Extra             |
+----------------+----------+------+-----+-------------------+-------------------+
| id             | int      | NO   | PRI | NULL              | auto_increment    |
| student_id     | int      | YES  | MUL | NULL              |                   |
| feedback_text  | text     | YES  |     | NULL              |                   |
| date_submitted | datetime | YES  |     | CURRENT_TIMESTAMP | DEFAULT_GENERATED |
+----------------+----------+------+-----+-------------------+-------------------+

admin Table
+----------+--------------+------+-----+---------+----------------+
| Field    | Type         | Null | Key | Default | Extra          |
+----------+--------------+------+-----+---------+----------------+
| id       | int          | NO   | PRI | NULL    | auto_increment |
| username | varchar(100) | YES  | UNI | NULL    |                |
| password | varchar(255) | YES  |     | NULL    |                |
+----------+--------------+------+-----+---------+----------------+


mysql> create table students(id int auto_increment primary key,
    -> name varchar(150), 
    -> course varchar(150),
    -> gender varchar(10),
    -> phone bigInt,
    -> email varchar(150) unique,
    -> password varchar(155),
    -> profile_photo VARCHAR(255));
 
mysql> CREATE TABLE feedback (
    ->   id INT AUTO_INCREMENT PRIMARY KEY,
    ->   student_id INT,
    ->   feedback_text TEXT,
    ->   date_submitted DATETIME DEFAULT CURRENT_TIMESTAMP,
    ->   FOREIGN KEY (student_id) REFERENCES students(id)
    -> );


mysql> CREATE TABLE admin (
    ->   id INT AUTO_INCREMENT PRIMARY KEY,
    ->   username VARCHAR(100) UNIQUE,
    ->   password VARCHAR(255)
    -> );

📂 Project Structure (Simplified) :-
Project_StudentFeedbackSystem/
│
├── WebContent/
│   ├── css/
│   ├── images/
│   ├── js/
│   ├── student/
│   └── admin/
│
├── src/
│   └── com/studentfeedback/
│       ├── servlets/
│       └── dao/
│
└── database.sql   (Create the schema manually using SQL above)
