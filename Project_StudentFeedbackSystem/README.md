📚 Student Feedback System
A simple web-based Student Feedback System built using Java (JSP & Servlets) and MySQL. This system allows students to register, log in, and submit feedback, while administrators can view all feedback entries.

🔧 Features

👩‍🎓 Student Module

- Student Registration with profile photo upload
- Login and session management
- Submit feedback

👨‍💼 Admin Module

- Admin login
- View all feedback with student details


🛠️ Tech Stack

- Frontend: HTML, CSS, JSP
- Backend: Java Servlets, JDBC
- Database: MySQL
- Server: Apache Tomcat

🗄️ Database Schema
students Table

create table students(id int auto_increment primary key, name varchar(150), course varchar(150), gender varchar(10), phone bigInt, email varchar(150) unique,password varchar(155),profile_photo VARCHAR(255));

feedback Table

CREATE TABLE feedback (
     id INT AUTO_INCREMENT PRIMARY KEY, student_id INT, feedback_text TEXT, date_submitted DATETIME DEFAULT CURRENT_TIMESTAMP, FOREIGN KEY (student_id) REFERENCES students(id) );
     

admin Table
CREATE TABLE admin (
id INT AUTO_INCREMENT PRIMARY KEY, username VARCHAR(100) UNIQUE, password VARCHAR(255));
