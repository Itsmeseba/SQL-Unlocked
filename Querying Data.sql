create database country;
use country;

-- Create a table named Country with fields: Id, Country_name, Population, Area 

create table country
(
Id int primary key not null,
Country_Name varchar(30) not null,
Population bigint,
Area varchar(30)
);

select * from country;
-- Insert 10 rows into country table.
insert into country values
(1,'Bangladesh', 166303498, 147570),
(2,'Brazil', 213993437, 8515767),
(3,'China', 1444216107, 9596961),
(4,'India', 1393409038, 3287263),
(5,'Indonesia', 276361783, 1904569),
(6,'Mexico', 130262216, 1964375),
(7,'Nigeria', 211400708, 923768),
(8,'Pakistan', 225199937, 881913),
(9,'Russia', 145912025, 17098242),
(10,'United States',331893745, 9833517);

-- Create another table named Persons with fields: Id, Fname, Lname, Population, Rating, Country_Id, Country_name
create table Person(
id int not null primary key,
Fname varchar(30) not null,
Lname varchar(30) not null,
population bigint,
Rating int,
country_id int,
country_name varchar(50) not null);

Select * from person;

INSERT INTO Person
(Id, Fname, Lname, Population, Rating, Country_Id, Country_name) VALUES 
(1, 'Don', 'Brooke', 331002651, 4.5, 10, 'USA'), 
(2, 'Priya', 'Singh', 1380004385, 4.2, 4, 'India'), 
(3, 'Yoki', 'Zhang', 1439323776, 4.7, 3, 'China'),
(4, 'Carlos', 'Silva', 212559417, 4.0, 2, 'Brazil'), 
(5, 'Jasmin', 'Khan', 220892340, 4.1, 8, 'Pakistan'), 
(6, 'Nikkol', 'Okafor', 206139589, 3.9, 7, 'Nigeria'), 
(7, 'Mina', 'Rahman', 164689383, 4.3, 1, 'Bangladesh'), 
(8, 'Ivan', 'Petrov', 145934462, 4.4, 9, 'Russia'), 
(9, 'Miguel', 'Lopez', 128932753, 3.8, 6, 'Mexico'), 
(10, 'Putra', 'Santoso', 273523615, 4.6, 5, 'Indonesia');

-- (1)List the distinct country names from the Persons table 
select distinct country_name from person;

-- (2)Select first names and last names from the Persons table with aliases. 
select Fname As 'First_Name',Lname as 'Last_Name'from person;

-- (3)Find all persons with a rating greater than 4.0. 
select Fname As 'First_Name',Lname as 'Last_Name',Rating from person where Rating >=4.0;

-- (4)Find countries with a population greater than 10 lakhs. 
select Country_name, Population from person where Population >1000000;

-- (5)Find persons who are from 'USA' or have a rating greater than 4.4. 
select * from person where country_name='United States' or rating > 4.5;

-- (6)Find all persons where the country name is NULL. 
SELECT * FROM person WHERE country_name IS NULL;

-- (7)Find all persons from the countries 'USA', 'Canada', and 'UK'. 
select * from person where 
country_name='USA' or
country_name='Canada' or
country_name='UK';

-- (8)Find all persons not from the countries 'India' and 'Indonesia'. 

select * from person where country_name NOT IN ('India', 'Indonesia');

-- (9)Find all countries with a population between 30 Crore and 100 Crores.

select country_name as 'Country',population from person where population BETWEEN 3000000 AND 1000000000;

-- (10)Find all countries whose names do not start with 'C'.

select * from person  where country_name not like'C%';

