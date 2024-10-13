-- Create a database called “Sales” and create a new table named “Orders”
create database sales;
use sales;
-- create a new table named “Orders” in the Sales database with columns: 
-- (Order_Id, Customer_name, Product_Category, Ordered_item, Contact_No). Use constraints: Primary Key, Unique, Not Null

create table orders(
Order_id int primary key auto_increment,
Customer_name varchar(50) not null,
product_category varchar(50) not null,
ordered_item varchar(50) not null,
contact_no varchar(10) not null unique
);

select * from orders;
-- 1. Add a new column named “order_quantity” to the orders table.
alter table orders add order_quantity int not null;

-- 2. Rename the orders table to the sales_orders table. 
rename table orders to sales_orders;
select * from sales_orders;

-- 3. Insert 10 rows into the sales_orders table. 
insert into sales_orders( order_id, customer_name, product_category, ordered_item, contact_no,order_quantity) 
values
(1001,'Paul','Toys','Action Figure','9948547810',1);
insert into sales_orders( customer_name, Product_category, ordered_item, contact_no, order_quantity)
values 
('Rahul', 'Electronics', 'Laptop','9678743549',1),
('Sruthy', 'Beauty', 'Lipstick','8554477610',2),
('Varun', 'Furniture','Table','7887956541',1),
('Pranav', 'Textile','Jeans','9810023311',2),
('Priya','Electronics','Mobile','9965998800',1),
('David','Sports','Football','6887688799',1),
('Satish','Stationery','Notebook','9955884466',10),
('Manu','Groceries','Rice','8896547001',5),
('Ashik','Furniture','Chair','8850001234',6);

select * from sales_orders;

-- 4. Retrieve customer_name and Ordered_Item from the sales_orders table.
select Customer_Name, Ordered_Item from sales_orders;

-- 5. Use the update command to change the name of the product for any row. 
update sales_orders set ordered_item ='Bag' where order_id=1008;

-- 6. Delete the sales_orders table from the database.
drop table sales_orders;
