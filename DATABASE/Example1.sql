CREATE DATABASE snpsu_ise;
USE snpsu_ise;
CREATE TABLE student(
	id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT NOT NULL,
    course VARCHAR(50),
    marks INT
);
-- Single Row Insertion
INSERT INTO student
VALUES(1,'TEJAS',21,'JAVA FS',87);
-- Insert multiple values
INSERT INTO student (id,name,age,course,marks) 
VALUES(9,'ABC',21,'JAVA',98),
(10,'GHO',22,'C++',96),
(11,'DEF',23,'PYTHON',95),
(12,'KJL',24,'C#',99),
(13,'ONM',25,'CSHARP',90),
(14,'PQR',26,'SQL',94),
(15,'UST',27,'NO SQL',92);

-- to know the column
DESC student;

-- to get the elements in the 
select * from student;


 

