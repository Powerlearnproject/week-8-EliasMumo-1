

-- Create the database
CREATE DATABASE StudentPerformanceDB;
USE StudentPerformanceDB;

-- Create Students table
CREATE TABLE Students (
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    age INT,
    grade_level VARCHAR(10)
);

-- Create Courses table
CREATE TABLE Courses (
    course_id INT PRIMARY KEY AUTO_INCREMENT,
    course_name VARCHAR(100),
    teacher_id INT,
    FOREIGN KEY (teacher_id) REFERENCES Teachers(teacher_id)
);

-- Create Teachers table
CREATE TABLE Teachers (
    teacher_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    subject VARCHAR(100)
);

-- Create Assessments table
CREATE TABLE Assessments (
    assessment_id INT PRIMARY KEY AUTO_INCREMENT,
    student_id INT,
    course_id INT,
    score INT,
    assessment_date DATE,
    FOREIGN KEY (student_id) REFERENCES Students(student_id),
    FOREIGN KEY (course_id) REFERENCES Courses(course_id)
);

-- Insert Sample Students
INSERT INTO Students (name, age, grade_level) VALUES
('John Doe', 16, '10'),
('Jane Smith', 17, '11'),
('Alice Johnson', 15, '9'),
('Bob Williams', 16, '10'),
('Emma Brown', 17, '11');

-- Insert Sample Teachers
INSERT INTO Teachers (name, subject) VALUES
('Mr. Brown', 'Mathematics'),
('Ms. Green', 'Physics');

-- Insert Sample Courses
INSERT INTO Courses (course_name, teacher_id) VALUES
('Mathematics', 1),
('Physics', 2);

-- Insert Sample Assessments
INSERT INTO Assessments (student_id, course_id, score, assessment_date) VALUES
(1, 1, 85, '2024-01-10'),
(2, 2, 90, '2024-01-12'),
(3, 1, 78, '2024-01-15'),
(4, 2, 88, '2024-01-18'),
(5, 1, 92, '2024-01-20');

