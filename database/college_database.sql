-- Create College Database
create database college;

-- Select database before creating table
use college;

-- Create table student for the college 
create table Student(
studentID int not null auto_increment,
FName varchar(30),
LName varchar(30),
Address varchar(30),
City varchar(35),
Marks int,
primary key(studentID)
);
-- Drop table
drop table Student;

-- SQL Insert Query Template
INSERT INTO Student (FName, LName, Address, City, Marks)
VALUES 
('John', 'Doe', '123 Maple St', 'Springfield', 85),
('Jane', 'Smith', '456 Oak St', 'Shelbyville', 90),
('Michael', 'Brown', '789 Pine St', 'Capital City', 78),
('Emily', 'Davis', '101 Elm St', 'Ogdenville', 92),
('Chris', 'Johnson', '202 Birch St', 'North Haverbrook', 88),
('Patricia', 'Williams', '303 Cedar St', 'Brockway', 81),
('Matthew', 'Jones', '404 Spruce St', 'Springfield', 95),
('Linda', 'Garcia', '505 Cherry St', 'Shelbyville', 89),
('James', 'Martinez', '606 Walnut St', 'Capital City', 76),
('Elizabeth', 'Rodriguez', '707 Aspen St', 'Ogdenville', 93),
('David', 'Hernandez', '808 Alder St', 'North Haverbrook', 87),
('Jennifer', 'Lopez', '909 Sequoia St', 'Brockway', 82),
('Charles', 'Gonzalez', '1010 Hemlock St', 'Springfield', 94),
('Susan', 'Wilson', '1111 Fir St', 'Shelbyville', 86),
('Joseph', 'Anderson', '1212 Magnolia St', 'Capital City', 75),
('Karen', 'Thomas', '1313 Dogwood St', 'Ogdenville', 91),
('Robert', 'Taylor', '1414 Willow St', 'North Haverbrook', 89),
('Nancy', 'Moore', '1515 Cypress St', 'Brockway', 80),
('Daniel', 'Jackson', '1616 Poplar St', 'Springfield', 96),
('Jessica', 'Lee', '1717 Hawthorn St', 'Shelbyville', 83),
('William', 'Perez', '1818 Redwood St', 'Capital City', 77),
('Sarah', 'White', '1919 Maple St', 'Ogdenville', 94),
('Thomas', 'Harris', '2020 Oak St', 'North Haverbrook', 90),
('Laura', 'Clark', '2121 Pine St', 'Brockway', 88),
('Christopher', 'Lewis', '2222 Elm St', 'Springfield', 85),
('Amy', 'Robinson', '2323 Birch St', 'Shelbyville', 91),
('Mark', 'Walker', '2424 Cedar St', 'Capital City', 79),
('Michelle', 'Young', '2525 Spruce St', 'Ogdenville', 92),
('Anthony', 'King', '2626 Cherry St', 'North Haverbrook', 87),
('Angela', 'Scott', '2727 Walnut St', 'Brockway', 82);

-- Print the table
select * from student;

-- Print table with specific column(s)
select fname,lname from student;

-- Where clause
select * from student where City = 'Springfield';

-- And clause
select * from student where Marks > 70 and City = 'Springfield';

-- OR clause
select * from student where Marks >90 or City = 'Springfield';

-- NOT operator 
select * from student where not LName = 'Doe';

-- Aggregate Function
	-- COUNT 30
    select count(studentID) from student;
    -- Average 86.5
    select avg(Marks) from student;
    -- Sum
    select sum(Marks) from student;
    -- Min
    select min(Marks) from student;
	SELECT FName, LName 
	FROM Student
	WHERE Marks = (SELECT MIN(Marks) FROM Student);
    
-- GroupBy
select count(studentID), City From Student group by City;
-- Having it is added to the 
select Fname, Sum(Marks) from student group by Fname having sum(Marks)>90;
-- Order by ascedning or descending
select count(studentId), city from student group by city order by city desc;
select count(studentId), city from student group by city order by city asc;
-- Null Values 
select FName, LName from student where Marks is null;
-- is Not Null
select FName, LName from student where Marks is not null;

-- Update command
Update student set FName = 'Amar' ,LName = 'Kuma' where studentID = 6;

--  Delete command
Delete from student where City = 'mumbai';
	-- It shows error of safe update in workbench so use thise commands

	-- To disable and enable the Safe Update mode there is two command
	SET SQL_SAFE_UPDATES = 0;
	SET SQL_SAFE_UPDATES = 1;
-- Another method of deleting is to add key column to the deleting list
delete from student where city = 'mumbai' and studentID in (1,2,3);

-- IN operator
select studentID,FName,LName from student where City In ('Springfield','Ogdenville');
-- Between operator
select studentID ,FName, LName,Marks from student where Marks between 80 and 90;

 
/*----------------ALLIASES IN SQL------------------------ */
-- column aliasing
select studentID as id from  student;
--  Table aliasing
select S.FName,S.LName from student as S;

/*----------------Comparision Operator------------------*/
-- Not in 
/*IN Operator fetches values from a set of literals. It is used to test whether or not a value is "in" the list of vlaues provided after the keyword IN. The IN condition can be used with any data type in sql.
This condition is generally used when we want to check/fetch values from multiple values i single statement. */
select FName,LName from student where City not in ('Springfield','Ogdenville');

-- Comparision Operator: ">, <, =, >=, <="
select  FName,LName from student where Marks>90;
select  FName,LName from student where Marks<90;
select  FName,LName from student where Marks=90;
select  FName,LName from student where Marks>=90;
select  FName,LName from student where Marks<=90;

-- Like
/*LIKE condition to perform wild card searches of valid search string values
  ~ Search condition can contain either characters or numbers
  ~ % denotes zero or many characters
  ~ _ denotes one character
*/
select  studentID,FName,LName,City from student where City like 's%';
select  studentID,FName,LName,City from student where City like 's%d';

select  studentID,FName,LName,City from student where City like '%d';
select  studentID,FName,LName,City from student where City like 'spring_____';
select  studentID,FName,LName,City from student where City like 'sprin____ld';
select  studentID,FName,LName,City from student where City like '______field';

/*---------CASE EXPRESSION---------------*/
-- Used as a type of IF-THEN-ELSE statement. case is used to provide if-then-else type of logic to sql.

-- NOTE: YOU can't use simple case to test for null because it always uses the equals operator (=). That is because the condition null = null is not true consequently, a when null clause never applies. If the <Common operand> is null , the else caluse applies

	/*
    CASE columne_name
    when cond1 then result1
    when cond2 then result2
    else result
    end
    
    Example:
    declare @intInput INT
    set @intInput = 2 
    select case(@intInput) 
    when 1 then 'one'
    when 2 then 'two'
    when 3 then 'three'
    else 'number it too big'
    end
    
	*/ 


-- Check for NULL vlaue in the table 
-- we can't use "=" sign in case of null value so we use "IS".
select * from student where Marks is null;
select * from student where Marks is not null;
