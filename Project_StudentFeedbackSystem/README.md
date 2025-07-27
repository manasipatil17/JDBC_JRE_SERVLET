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
Field	Type	Key	Description
id	INT	PK	Auto-increment primary key
name	VARCHAR(150)		Student name
course	VARCHAR(150)		Course enrolled
gender	VARCHAR(10)		Gender
phone	BIGINT		Contact number
email	VARCHAR(150)	UNI	Unique email
password	VARCHAR(155)		Login password (hashed)
profile_photo	VARCHAR(255)		Path to profile photo

feedback Table
Field	Type	Key	Description
id	INT	PK	Auto-increment feedback ID
student_id	INT	FK	Reference to students(id)
feedback_text	TEXT		Feedback content
date_submitted	DATETIME		Default: current timestamp

admin Table
Field	Type	Key	Description
id	INT	PK	Auto-increment primary key
username	VARCHAR(100)	UNI	Unique admin login
password	VARCHAR(255)		Login password (hashed)



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
