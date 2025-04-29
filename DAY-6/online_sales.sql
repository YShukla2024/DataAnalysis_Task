-------------------------------- Sales Analysis -----------------------------------


/* CREATE TABLES */

CREATE DATABASE online_sales;
use online_sales;


CREATE TABLE Customers
(customer_id int,
customer_name varchar(50),
age int,
gender varchar(50),
city varchar(50)
);

CREATE TABLE Products
(product_id int,
product_name varchar(50),
category varchar(50),
price decimal (10, 2)
);

CREATE TABLE Orders
(order_id int,
customer_id int,
product_id int,
quantity int,
order_date date,
sales decimal (10, 2)
);

/* INSERT INTO TABLES VALUES */

INSERT INTO Customers VALUES
(1, 'Kevin Palmer', 29, 'Male', 'Boston'),
(2, 'Angela Hudson',  27,  'Female', 'New York City'),
(3, 'Michael Smith', 44, 'Male', 'Los Angeles'),
(4, 'John Johnson', 32, 'Male', 'San Francisco'),
(5, 'David Wilson', 35, 'Male', 'Boston'),
(6, 'Roy Martin', 24, 'Male', 'San Francisco'),
(7, 'Emily  Brown', 24, 'Female', 'New York City'),
(8, 'Jane Scoot', 31, 'Female', 'San Francisco'),
(9, 'Stanley Malone', 30, 'Male', 'Boston'),
(10, 'Anna Anderson', 35, 'Female', 'Los Angeles');


INSERT INTO Products VALUES
(1, 'MacBook Air', 'Laptop', 1600.0),
(2, 'AA Batteries (4-pack)', 'Batteries', 3.99),
(3, 'Wired Headphones', 'Headphones', 12.99),
(4, 'iPhone', 'Phone', 800.0),
(5, 'Flatscreen TV', 'TV', 400.0);


INSERT INTO Orders VALUES
(1, 3, 1, 1, '2023-06-08', 1600.0),
(2, 1, 3, 2, '2023-06-03', 25.98),
(3, 5, 5, 2, '2023-07-11', 800.0),
(4, 10, 4, 1, '2023-05-12', 800.0),
(5, 7, 2, 3, '2023-08-17', 11.97),
(6, 2, 1, 1, '2023-07-12', 1600.0),
(7, 4, 4, 2, '2023-08-17', 1600.0),
(8, 6, 2, 10, '2023-06-04', 39.99),
(9, 9, 5, 1, '2023-06-05', 800.0),
(10, 8, 3, 4, '2023-08-16', 52.96),
(11, 10, 3, 1, '2023-05-12', 12.99);


show tables;
