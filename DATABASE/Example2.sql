	-- STORED PROCEDURES--
-- These are the user defined function in sql
-- A repeated query can be stored as a function  
-- dELIMITTER ALLOWS TO WRITE THE MULTIPLE LINES WITHOUT ; OR ,
-- WE SHOULD USE DOLOR OR ANY SYMBOL BUT TWO TIMES
DELIMITER //
CREATE PROCEDURE GetAllStudents()
BEGIN
	SELECT * FROM student;
END //
 DELIMITER ;
 
 CALL GetAllStudents();
 -- Sql Trigger-- 
/*Purpose-When some action is done on the table LOg the action*/
CREATE TABLE books(id int,
name varchar(50));

CREATE TABLE books_log(
message varchar(100));

-- Lets create a triger to log the message
-- as soon as a new book is inserted into the books
CREATE TRIGGER after_books_insert
AFTER INSERT ON books
FOR EACH ROW
INSERT INTO books_log
values (CONCAT('NEW book added:',NEW.name));

INSERT INTO books VALUES(1,'You Can Win');

SELECT * FROM books_log;



CREATE TABLE Sales(
    day VARCHAR(10),
    amount INT
);

INSERT INTO Sales VALUES
('Monday',100),
('Tuesday',150),
('Wednesday',200);
INSERT INTO Sales VALUES
('Monday',300),
('Tuesday',50);

-- Window Function
Select 
day,amount,
SUM(amount) OVER() AS Total_Sales
From Sales;

-- Rank the sales from the highest to lowest =- Window Function
Select
day,amount,
RANK() OVER(ORDER BY amount DESC) AS rank_no
FROM sales;

-- Partition by -Gropus with calculation=window function
Select
day,amount,
RANK() OVER(PARTITION BY day ORDER BY amount DESC) 
As rank_in_day
FROM sales;

-- Let see the total sales per day[Group by] Clause
Select day,SUM(amount) AS total_sales
FROM sales
GROUP BY day;

SELECT day,sum(amount) AS total_sales
FROM sales
GROUP BY day
HAVING sum(amount)>200;

