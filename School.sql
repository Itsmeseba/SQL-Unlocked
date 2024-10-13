-- Create a database named School and perform all the DDL commands(CREATE, ALTER, DROP, RENAME, TRUNCATE) for the table named STUDENT with fields: Roll_No, Name, Marks, Grade, Create data

create database school;
use school;
create table if not exists school(
Roll_no int primary key auto_increment,
Name varchar(50) not null,
Marks int,
Grade char(10),
Create_date date
);
-- (1) Use the select command to display the table. 
select * from school;

-- (2) Add a column named Contact to the STUDENT table. 
alter table school add Contact varchar(50);

-- (3) Remove the Grade column from the Student table. 
ALTER TABLE school DROP COLUMN grade;

-- (4) Rename the table to CLASSTEN. 
rename table school to ClassTen;

-- (5) Delete all rows from the table. 
ALTER TABLE classten DROP COLUMN grade;
select * from classten;

-- (6) Remove the table from the database.
drop table classten;
