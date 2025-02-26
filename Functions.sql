use country;
-- 1. Add a new column called DOB in Persons table with data type as Date. 
alter table person add column DOB date;
desc person;
update person set DOB = '1980-05-13' where ID=1;
update person set DOB = '1985-06-22' where ID=2;
update person set DOB = '1992-03-10' where ID=3;
update person set DOB = '1995-07-18' where ID=4;
update person set DOB = '1988-11-30' where ID=5;
update person set DOB = '1991-09-25' where ID=6;
update person set DOB = '1987-04-15' where ID=7;
update person set DOB = '1990-08-12' where ID=8;
update person set DOB = '1989-02-05' where ID=9;
update person set DOB = '1983-12-22' where ID=10;
update person set DOB = '1978-01-22' where ID=11;
update person set DOB = '1986-04-15' where ID=12;

select * from person;

-- 2. Write a user-defined function to calculate age using DOB. 
delimiter //
create function Calculate_Age (DOB date)
returns INT 
deterministic
begin
	return datediff(curdate(),DOB)/365;
END //
delimiter ;

-- 3. Write a select query to fetch the Age of all persons using the function that has been created. 
select Id, Fname, DOB, calculate_age(DOB) as Age from person;

-- 4. Find the length of each country name in the Country table. 
select Country_Name,length(country_name) from country;

-- 5. Extract the first three characters of each country's name in the Country table.
select left(country_name,3) as "First 3 Charactors" from country;

-- 6. Convert all country names to uppercase and lowercase in the Country table.
select upper(country_name) as 'Country Name' from country;
select lower(country_name) as 'Country Name' from country;

	