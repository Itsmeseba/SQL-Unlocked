use country;
select * from person;
-- 1. Find the number of persons in each country.
select Country_name, count(*) Person_count from person group by Country_name;

-- 2. Find the number of persons in each country sorted from high to low.
select Country_name, count(*) as Person_count from person group by Country_name order by person_count desc;

-- 3. Find out an average rating for Persons in respective countries if the average is greater than 3.0
select country_name, avg(rating) as Avg_Rating from person group by Country_name having avg(rating)>3.0;

-- 4. Find the countries with the same rating as the USA. (Use Subqueries) 
select Country_name, rating from person having rating=(select max(rating) from person where country_name='USA');

-- 5. Select all countries whose population is greater than the average population of all nations. 
Select Country_ID, Country_Name, Population from Person where Population > (Select Avg(Population) from Person);

/* Create a database named Product and create a table called Customer with the following fields in the Product database: 
Customer_Id - Make PRIMARY KEY First_name Last_name Email Phone_no Address City State Zip_code 
Country 1. Create a view named customer_info for the Customer table that displays Customer’s Full name and email address. 
Then perform the SELECT operation for the customer_info view. */

Create database Product;
use Product;
Create Table Customer (
Customer_Id int primary key auto_increment,
First_Name varchar (50),
Last_Name Varchar(50),
Email varchar(100),
Phone_no bigint,
Address Varchar(200),
City varchar(50),
State varchar(50),
Zip_Code bigint,
Country varchar(50)
);

desc Customer;
insert into customer (First_Name,Last_name,Email,Phone_no,Address,City,State,Zip_Code,Country) values
('Aarav', 'Sharma', 'aarav.sharma@gmail.com', 8997957890, '123 Elm St', 'Los Angeles', 'California', 90001, 'USA'),
('Priya', 'Patel', 'priya.patel@yahoo.com', 2345678901, '456 Oak St', 'Oslo', 'Oslo', 0152, 'Norway'),
('Vikram', 'Singh', 'vikram.singh@gmail.com', 3456789012, '789 Pine St', 'London', 'England', 'SW1A 1AA', 'UK'),
('Ananya', 'Deshmukh', 'ananya.deshmukh@yahoo.com', 4567890123, '101 Maple Ave', 'Berlin', 'Berlin', 10115, 'Germany'),
('Rohan', 'Kumar', 'rohan.kumar@gmail.com', 5678901234, '202 Birch Blvd', 'Paris', 'Île-de-France', 75001, 'France'),
('Sneha', 'Reddy', 'sneha.reddy@yahoo.com', 6789012345, '303 Cedar Rd', 'Madrid', 'Madrid', 28001, 'Spain'),
('Arjun', 'Nair', 'arjun.nair@gmail.com', 7890123456, '404 Redwood Dr', 'Sydney', 'New South Wales', 2000, 'Australia'),
('Isha', 'Gupta', 'isha.gupta@yahoo.com', 8901234567, '505 Willow Way', 'Tokyo', 'Tokyo', 100-0001, 'Japan'),
('Karan', 'Mehta', 'karan.mehta@gmail.com', 9012345678, '606 Sequoia St', 'Amsterdam', 'North Holland', 1012, 'Netherlands'),
('Neha', 'Agarwal', 'neha.agarwal@yahoo.com', 1234509876, '707 Pinecrest Rd', 'Rio de Janeiro', 'Rio de Janeiro', 20000-000, 'Brazil'),
('Manish', 'Verma', 'manish.verma@gmail.com', 2345610987, '808 Cypress Ln', 'Toronto', 'Ontario', 'M5A 1A1', 'Canada'),
('Pooja', 'Jain', 'pooja.jain@yahoo.com', 3456721098, '909 Maplewood Dr', 'Cape Town', 'Western Cape', 8000, 'South Africa'),
('Siddharth', 'Bansal', 'siddharth.bansal@gmail.com', 4567832109, '1010 Laurel St', 'Zurich', 'Zurich', 8001, 'Switzerland'),
('Tanvi', 'Patil', 'tanvi.patil@yahoo.com', 5678943210, '1111 Fir Ln', 'Buenos Aires', 'Buenos Aires', 1000, 'Argentina'),
('Ravi', 'Sharma', 'ravi.sharma@yahoo.com', 6789101122, '1212 Oakwood Dr', 'Mumbai', 'Maharashtra', 400001, 'India'),
('Jackson', 'Morrison', 'jackson.morrison@gmail.com', '4159876543', '125 Maple Ave', 'New York', 'New York', '10001', 'USA'),  
('Ava', 'Peterson', 'ava.peterson@yahoo.com', '3128765432', '890 Lake St', 'New York', 'New York', '10002', 'USA'),  
('Ethan', 'Fletcher', 'ethan.fletcher@hotmail.com', '6467654321', '567 Pine Rd', 'New York', 'New York', '10003', 'USA'),  
('Sophia', 'Harrington', 'sophia.harrington@gmail.com', '7276543210', '432 Oak Ln', 'New York', 'New York', '10004', 'USA'),  
('Noah', 'Mitchell', 'noah.mitchell@yahoo.com', '6025432109', '789 Cedar Dr', 'New York', 'New York', '10005', 'USA'),
('Liam', 'Anderson', 'liam.anderson@hotmail.com', '5164327890', '234 Birch St', 'New York', 'New York', '10006', 'USA'),  
('Felix', 'Schneider', 'felix.schneider@gmail.com', '4915123456789', '10 Alexanderplatz', 'Berlin', 'Berlin', '10178', 'Germany'),  
('Hanna', 'Müller', 'hanna.mueller@yahoo.com', '491623456789', '22 Kurfürstendamm', 'Berlin', 'Berlin', '10719', 'Germany'),  
('Jonas', 'Weber', 'jonas.weber@hotmail.com', '491734567890', '15 Friedrichstrasse', 'Berlin', 'Berlin', '10117', 'Germany'),  
('Emma', 'Becker', 'emma.becker@gmail.com', '4915123465789', '8 Potsdamer Platz', 'Berlin', 'Berlin', '10785', 'Germany'),  
('Noah', 'Wagner', 'noah.wagner@yahoo.com', '491623567890', '12 Unter den Linden', 'Berlin', 'Berlin', '10117', 'Germany'); 
 
select * from customer;

/*1. Create a view named customer_info for the Customer table that displays Customer’s Full name and email address.
 Then perform the SELECT operation for the customer_info view.*/
create view customer_info as select customer_id, concat(First_Name,' ',Last_Name) as 'Full Name',Email from Customer;
select * from customer_info;

-- 2. Create a view named US_Customers that displays customers located in the US. 
create view US_Customers as Select * from customer where country='USA';
select * from US_Customers;

/* 3. Create another view named Customer_details with columns full name(Combine first_name and last_name), email,
 phone_no, and state.*/
 create view Customer_Details as select customer_id, concat(First_name,' ',Last_Name) as 'Full Name', email, phone_no, state from customer;
 select * from customer_details;
 
 -- 4. Update phone numbers of customers who live in California for Customer_details view.
 update customer_details set phone_no = 7565844452 where state='California';
 
 -- 5. Count the number of customers in each state and show only states with more than 5 customers. 
 select state, count(First_name) No_of_Customers from customer group by state having count(*) >5;
 
 -- 6. Write a query that will return the number of customers in each state, based on the "state" column in the "customer_details" view. 
 select state, count(state) No_of_Customers from customer_details group by state;
 
 -- 7. Write a query that returns all the columns from the "customer_details" view, sorted by the "state" column in ascending order.
 select * from customer_details order by state asc;