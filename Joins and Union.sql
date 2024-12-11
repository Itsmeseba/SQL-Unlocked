use country;
select * from country;
select * from person;
-- (1) Perform inner join, Left join, and Right join on the tables. 
-- inner join
SELECT p.*, c.*
FROM Person p
INNER JOIN country c
ON p.Country_id = c.Country_id;

-- left join
select p.*,c.*
from person p left join country c
on p.Country_id = c.Country_id;

-- right join
select p.*,c.* 
from person p right join country c
on p.Country_id = c.Country_id;

-- (2).List all distinct country names from both the Country and Persons tables
SELECT DISTINCT Country_name FROM country
UNION
SELECT DISTINCT Country_name FROM Person;

-- (3) List all country names from both the Country and Persons tables, including duplicates.

select country_name from country union all select Country_name from person;

-- (4) Round the ratings of all persons to the nearest integer in the Persons table.
SELECT Id, Fname, Lname, Population, ROUND(Rating) AS Rounded_Rating, Country_id, Country_name
FROM Person;



