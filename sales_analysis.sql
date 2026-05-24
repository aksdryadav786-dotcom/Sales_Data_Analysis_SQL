SELECT "Hello Arvind, MySQL is Working!";
CREATE DATABASE sales_analysis;
USE sales_analysis;

CREATE TABLE sales(
order_id INT PRIMARY KEY,
customer_name VARCHAR(100),
product_name VARCHAR(100),
category VARCHAR(50),
quantity INT,
price DECIMAL(10,2),
order_date DATE,
city VARCHAR(50)
);
INSERT INTO sales
(order_id,customer_name,product_name,category,quantity,price,order_date,city) VALUES
(1,'Arvind','Laptop','Electronics',1,72000,'2025-05-01','Maharastra'),
(2,'Priya','Phone','Electronics',1,20000,'2025-05-02','Mumbai'),
(3,'Rahul','Shoes','Fashion',1,2000,'2025-05-03','Lucknow'),
(4,'Sneha','Watch','Accessories',1,5000,'2025-05-04','Delhi'),
(5,'Amit','Tablet','Electronics',1,60000,'2025-05-05','Bangalore');

SELECT SUM(quantity * price) AS total_revenue
FROM sales;

SELECT Product_name,price
FROM sales
ORDER BY price DESC
LIMIT 1;

SELECT category,
SUM(quantity * price) AS total_sales
FROM sales
GROUP BY category;
SELECT city,
SUM(quantity * price) AS city_sales
FROM sales
GROUP BY city
ORDER BY city_sales DESC;

SELECT AVG(price) AS average_price
FROM sales;

SELECT *
FROM sales
WHERE  category ='ELECTRONICS';

SELECT product_name,price
FROM sales
WHERE price > 10000;

SELECT product_name,price
FROM sales
WHERE price BETWEEN 5000 AND 50000;

SELECT COUNT(*) AS total_order
FROM sales;

SELECT DISTINCT category
FROM sales;

SELECT city,
SUM(quantity * price) AS total_sales
FROM sales
GROUP BY city
ORDER BY total_sales DESC
LIMIT 1;

SELECT customer_name
FROM sales
WHERE customer_name LIKE'A%';

SELECT *
FROM sales
WHERE city LIKE 'M%';

SELECT 
MAX(price) AS highest_price,
MIN(price) AS lowest_price;

SELECT *
FROM sales
WHERE city = 'Mumbai'

