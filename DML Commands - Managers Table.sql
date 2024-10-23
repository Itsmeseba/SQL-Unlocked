create database sales;
use sales;

-- Create table Managers
create table managers(
Manager_id int primary key,
First_Name varchar(25) not null,
Last_Name varchar(25),
DOB date not null,
Age int check(age >=25 and age <=40),
Last_Update timestamp default current_timestamp,
Gender char,
Department varchar(25) not null,
salary decimal(10,2) not null
);

select * from managers;

-- 1. Insert Values
insert into managers values
(1001,'Rishin','Prathap','1985-10-01',33, '2024-07-10', 'M', 'Sales',75000),
(1002,'Sravan','Dev','1996-08-24', 28, '2024-07-15','M','Maintenance',55000),
(1003, 'Shanker','Mahadev','1989-03-06', 35,'2024-07-20','M','Admin',60000),
(1004, 'Pallavi', 'Ravi','1995-06-05', 29,'2024-07-25','F','HR',55000),
(1005, 'Sreelakshmi','Varma','1991-08-10', 33, '2024-08-01','F','Customer Care', 58000),
(1006, 'Anirudth','Ishwer','1987-04-16',37,'2024-08-05','M','Operations',65000),
(1007, 'Linda','Abraham','1999-06-18',25,'2024-08-10','F','Marketing',60000),
(1008, 'Abhimanyu','Pillai','1986-07-02',38,'2024-08-15','M','SCM',70000),
(1009, 'Abhirami','Madhavan','1998-01-29',26,'2024-08-20','F','Finance',55000),
(1010, 'Vishal','Krishnan','1988-12-07',36,'2024-08-25','M','IT',80000);

-- 2. Write a query that retrieves the First Name, Last Name and date of birth of the manager with Manager_Id 1001.
select first_name, last_name, DOB from managers where manager_id=1001; 

-- 3. Write a query to display the annual income of all managers
select Salary*12 as 'Annual_Income' from Managers;

-- 4. Write a query to display records of all managers except ‘Abhirami’
select * from managers where First_name <>'Abhirami';

-- 5. Write a query to display details of managers whose department is IT and earns more than 25000 per month. 
select * from Managers where department='IT' and salary >25000;

-- 6. Write a query to display details of managers whose salary is between 58000 and 76000.
select * from Managers where salary between 58000 and 76000;


