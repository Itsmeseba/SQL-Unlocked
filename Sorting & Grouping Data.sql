use country;
create table country(
Country_id int primary key not null,
Country_name char(50) not null,
Population bigint,
Area varchar(30)
);
select * from country;

-- Insert 10 rows into country table.
insert into country values
(1,'Bangladesh', 166303, 147570),
(2,'Brazil', 213993, 8515767),
(3,'China', 1444216, 9596961),
(4,'India', 1393409, 3287263),
(5,'Indonesia', 276361, 1904569),
(6,'Mexico', 130262, 1964375),
(7,'Nigeria', 211400, 923768),
(8,'Pakistan', 225199, 881913),
(9,'Russia', 145912, 17098242),
(10,'United States',331893, 9833517);

-- Create another table named Persons with fields: Id, Fname, Lname, Population, Rating, Country_Id, Country_name
create table Person(
Id int not null primary key,
Fname varchar(30) not null,
Lname varchar(30),
Population bigint,
Rating int,
Country_id int,
Country_name varchar(50) not null);

select * from person;

INSERT INTO Person
(Id, Fname, Lname, Population, Rating, Country_Id, Country_name) VALUES 
(1, 'Mina', 'Rahman', 164689383, 4.3, 1, 'Bangladesh'), 
(2, 'Carlos', 'Silva', 212559417, 4.0, 2, 'Brazil'), 
(3, 'Yoki', 'Zhang', 1439323776, 4.7, 3, 'China'),
(4, 'Priya', 'Singh', 1380004385, 4.2, 4, 'India'), 
(5, 'Putra', 'Santoso', 273523615, 4.6, 5, 'Indonesia'),
(6, 'Miguel', 'Lopez', 128932753, 3.8, 6, 'Mexico'), 
(7, 'Nikkol', 'Okafor', 206139589, 3.9, 7, 'Nigeria'), 
(8, 'Jasmin', 'Khan', 220892340, 4.1, 8, 'Pakistan'), 
(9, 'Ivan', 'Petrov', 145934462, 4.4, 9, 'Russia'), 
(10, 'Don', 'Brooke', 331002651, 4.5, 10, 'USA');

select * from country;
-- 1. Write an SQL query to print the first three characters of Country_name from the Country table.
-- method1 
select left(Country_name,3) from country;
-- method2
select substring(Country_name,1,3) from Country;

-- 2. Write an SQL query to concatenate first name and last name from Persons table. 
select concat(fname,' ',lname) as 'Full_Name' from person;

-- 3. Write an SQL query to count the number of unique country names from Persons table.
select country_name, count(distinct country_name) as Unique_Country_Name from person group by country_name;

-- 4. Write a query to print the maximum population from the Country table. 
select max(Population) as 'Maximum Population' from country;

-- 5. Write a query to print the minimum population from Persons table.
select min(Population) as 'Minimum Population' from person;

-- 6. Insert 2 new rows to the Persons table making the Lname NULL. Then write another query to count Lname from Persons table.
insert into person(id, Fname, Lname, population, Rating, Country_id, Country_name) values (11,'John', null, 331002651, 4.5, 10, 'USA');
insert into person(id,Fname,Lname,Population, rating,country_id, country_name) values(12, 'Anna',null, 145934462,4,9,'Russia');
select count(lname) from person;

-- 7. Write a query to find the number of rows in the Persons table. 
SELECT COUNT(*) AS 'Total_rows' FROM Person;

-- -- 8. Write an SQL query to show the population of the Country table for the first 3 rows. (Hint: Use LIMIT) 
 Select Country_name, population from Country LIMIT 3;
 
  -- 9. Write a query to print 3 random rows of countries. (Hint: Use rand() function and LIMIT)
 Select * from country order by rand() LIMIT 3;
 
  -- 10.List all persons ordered by their rating in descending order. 
 Select * from person order by rating desc;
 
 -- 11. Find the total population for each country in the Persons table
 Select Country_name, sum(population) as Total_population  from country group by Country_name;

 -- 12. Find countries in the Persons table with a total population greater than 50,000
 select country_name, sum(population) as 'Total Population' from person where Population>50000 group by Country_name;
 
 /*- 13. List the total number of persons and average rating for each country, 
 but only for countries with more than 2 persons, ordered by the average rating in ascending order.*/
 select Country_name, count(*) as 'Total Persons', avg(Rating) from person group by Country_name having count(fname) > 1 ORDER BY AVG(Rating) ASC;
 
 
 
