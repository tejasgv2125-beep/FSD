CREATE DATABASE snpsu_ise;
USE snpsu_ise;
CREATE TABLE student (
	id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT NOT NULL,
    course VARCHAR(50),
    marks INT
);

-- Single Row Insertion
INSERT INTO student 
VALUES (1, 'Deekshith', 21, 'Java FS', 87);
-- Multiple Rows Insertion
INSERT INTO student (id, name, age, course, marks)
VALUES (2, 'Pavan Hegde', 21, 'Core Java', 88),
(3, 'Nithin', 21, 'Core Java', 78),
(4, 'Nandan J', 21, 'DBMS', 80),
(5, 'Tharun S', 21, 'Java DSA', 75),
(6, 'Sharanya A', 21, 'Spring Boot', 91),
(7, 'Shravya KT', 21, 'Mern Stack', 83),
(8, 'Sanjana H', 21, 'C++ DSA', 79),
(9, 'Swathi H R', 21, 'DOT-NET', 86),
(10, 'Tejashwini J', 21, 'DevOps', 94);

INSERT INTO student 
VALUES (11, 'Deepak', 20, 'Java Servlets', 80);
-- DQL SELECT
SELECT * FROM student;

-- Students Above 80
SELECT * FROM student WHERE marks > 80; 

-- Student Above 80 & Age Exactly 20
SELECT * FROM student WHERE marks > 75 AND age = 20; 

-- Sorting rows in SQL (ORDER BY CLAUSE)
SELECT * FROM student ORDER BY marks DESC; 
SELECT * FROM student ORDER BY name DESC; 

-- Say suppose you want the first 5 rows
SELECT * FROM student LIMIT 5;

-- Only get the unique courses
SELECT DISTINCT course FROM student;

-- Display the names starting with P 
SELECT * FROM student WHERE name LIKE 'P%';
-- Display the names starting with S 
SELECT * FROM student WHERE name LIKE 'S%';

-- Display the names ending with a 
SELECT * FROM student WHERE name LIKE '%a';

-- Display all the students whose courses are
-- Core Java, Java DSA, Spring Boot  
SELECT * FROM student 
WHERE course IN ('Core Java', 'Java DSA', 'Spring Boot');

-- Display the names starting with P 
SELECT * FROM student WHERE marks BETWEEN 80 AND 90;

-- UPDATE MARKS
UPDATE student SET marks = 89 WHERE id = 1;

-- DELETE & TRUNCATE COMMANDS
DELETE FROM student where id = 11;
-- TRUNCATE only deletes rows not structure
-- TRUNCATE TABLE student;

-- AGGREGATE FUNCTIONS -- Built In Functions
-- AS stands for ALIAS or short form 
SELECT COUNT(*) AS TOTAL_STUDENTS FROM student;

SELECT AVG(marks) AS AVG_MARKS FROM student;

SELECT MAX(marks) AS MAX_MARKS, 
MIN(marks) AS MIN_MARKS FROM student;

use snpsu_ise;
----------------------------------------
-- STUDENTS TABLE
CREATE TABLE students (
    student_id INT PRIMARY KEY,
    name VARCHAR(50),
    department VARCHAR(50),
    age INT,
    marks INT
);

INSERT INTO students VALUES
(1, 'Amit', 'CSE', 21, 85),
(2, 'Rahul', 'ECE', 22, 78),
(3, 'Priya', 'CSE', 20, 92),
(4, 'Sneha', 'EEE', 23, 74),
(5, 'Ravi', 'MECH', 21, 67),
(6, 'Anjali', 'CSE', 22, 88);

------------------------------------------------------

-- COURSES TABLE
CREATE TABLE courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(50),
    department VARCHAR(50)
);

INSERT INTO courses VALUES
(101, 'Data Structures', 'CSE'),
(102, 'Digital Circuits', 'ECE'),
(103, 'Power Systems', 'EEE'),
(104, 'Thermodynamics', 'MECH'),
(105, 'Algorithms', 'CSE');

------------------------------------------------------

-- ENROLLMENTS TABLE
CREATE TABLE enrollments (
    enroll_id INT PRIMARY KEY,
    student_id INT,
    course_id INT
);

INSERT INTO enrollments VALUES
(1, 1, 101),
(2, 1, 105),
(3, 2, 102),
(4, 3, 101),
(5, 4, 103),
(6, 5, 104),
(7, 6, 105);

-- GET THE STUDENT NAMES WITH THEIR ENROLLEMENT COURSE NAMES
SELECT s.name,c.course_name
FROM students s
INNER JOIN ENROLLMENTS e on s.student_id=e.student_id
inner join courses c on e.course_id=c.course_id;

-- Show all the students even if they are not enrolled
-- If a student is not enrolled, data will be  null

SELECT s.name,c.course_name
FROM students s
left JOIN ENROLLMENTS e on s.student_id=e.student_id
left join courses c on e.course_id=c.course_id;

-- Show al courses even if no students are enrolled

SELECT s.name,c.course_name
FROM students s
Right JOIN ENROLLMENTS e on s.student_id=e.student_id
Right join courses c on e.course_id=c.course_id;

Create TABLE department(
dept_id INT PRIMARY KEY,
dept_name VARCHAR(50));
INSERT INTO department Values
(1,'Core Java'),(2,'DBMS'),(3,'Devops');
INSERT INTO department Values(4,'MBA');

-- Return the macthing records from both stsuent & depatment

Select s.name,s.course,d.dept_name
FROM student s
INNER JOIN department d
ON s.course=d.dept_name;

-- All the students and only the matcjing departments

Select s.course,d.dept_name
FROM student s
LEFT JOIN department d
ON s.course=d.dept_name;

Select s.course,d.dept_name
FROM student s
RIGHT JOIN department d
ON s.course=d.dept_name;

CREATE TABLE Employee(
emp_id INT PRIMARY KEY,
emp_name VARCHAR(50),
manager_id INT);

INSERT INTO Employee VALUES (1,'Amit',NULL);-- Ceo (no manager)
INSERT INTO Employee VALUES (2,'Rahul',1);-- Reports to AMit
INSERT INTO Employee VALUES (3,'Priya',1);-- Reports to AMit
INSERT INTO Employee VALUES (4,'Sneha',2);-- Reports to Rahul
INSERT INTO Employee VALUES (5,'Ravi',2);-- Reports to Rahul

-- Show the employee names with their manager names4
-- Self Join
SELECT e.emp_name AS Employee, m.emp_name AS Manager
FROM Employee e
LEFT JOIN Employee m ON e.manager_id = m.emp_id;

select * from Employee;

 

