-- Create the customers table
CREATE DATABASE ecommerce_base;
USE ecommerce_base;
CREATE TABLE customers (
  customer_id INT PRIMARY KEY,
  first_name VARCHAR(50),
  last_name VARCHAR(50),
  email VARCHAR(100),
  gender ENUM('M', 'F'),
  country VARCHAR(50)
);

INSERT INTO customers (customer_id, first_name, last_name, email, gender, country) VALUES
    (1, 'John', 'Doe', 'johndoe@gmail.com', 'M', 'USA'),
    (2, 'Jane', 'Doe', 'janedoe@gmail.com', 'F', 'USA'),
    (3, 'Mike', 'Smith', 'mikesmith@gmail.com', 'M', 'Canada'),
    (4, 'Emily', 'Brown', 'emilybrown@gmail.com', 'F', 'Canada'),
    (5, 'Tom', 'Johnson', 'tomjohnson@gmail.com', 'M', 'UK'),
    (6, 'Lucy', 'Williams', 'lucywilliams@gmail.com', 'F', 'UK'),
    (7, 'Robert', 'Garcia', 'robertgarcia@gmail.com', 'M', 'Mexico'),
    (8, 'Maria', 'Rodriguez', 'mariarodriguez@gmail.com', 'F', 'Mexico'),
    (9, 'Hiro', 'Tanaka', 'hirotanaka@gmail.com', 'M', 'Japan'),
    (10, 'Yui', 'Nakamura', 'yui@gmail.com', 'F', 'Japan'),
    (11, 'Miguel', 'Sanchez', 'miguelsanchez@gmail.com', 'M', 'Mexico'),
    (12, 'Isabella', 'Romero', 'isabellaromero@gmail.com', 'F', 'Mexico'),
    (13, 'Hans', 'Muller', 'hansmuller@gmail.com', 'M', 'Germany'),
    (14, 'Katja', 'Fischer', 'katjafischer@gmail.com', 'F', 'Germany'),
    (15, 'Giovanni', 'Rossi', 'giovannirossi@gmail.com', 'M', 'Italy'),
    (16, 'Sofia', 'Conti', 'sofiaconti@gmail.com', 'F', 'Italy');

-- Create the orders table
CREATE TABLE orders (
  order_id INT PRIMARY KEY,
  customer_id INT,
  order_date DATETIME,
  status ENUM('placed', 'shipped', 'delivered'),
  shipping_country VARCHAR(50),
  shipping_speed ENUM('standard', 'express'),
  discount DECIMAL(5, 2),
  total DECIMAL(10, 2),
  FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

INSERT INTO orders (order_id, customer_id, order_date, status, shipping_country, shipping_speed, discount, total) VALUES
    (1, 1, '2022-01-01 10:00:00', 'delivered', 'USA', 'standard', 0.00, 79.97),
    (2, 2, '2022-01-02 14:00:00', 'shipped', 'USA', 'express', 0.05, 149.97),
    (3, 3, '2022-01-03 11:00:00', 'delivered', 'Canada', 'standard', 0.00, 119.98),
    (4, 4, '2022-01-04 16:00:00', 'delivered', 'USA', 'express', 0.10, 239.96),
    (5, 5, '2022-01-05 12:00:00', 'shipped', 'Mexico', 'standard', 0.00, 109.96),
    (6, 6, '2022-01-06 15:00:00', 'delivered', 'USA', 'express', 0.00, 99.97),
    (7, 7, '2022-01-07 18:00:00', 'shipped', 'Canada', 'express', 0.05, 249.97),
    (8, 8, '2022-01-08 13:00:00', 'delivered', 'Mexico', 'standard', 0.00, 119.98),
    (9, 9, '2022-01-09 17:00:00', 'delivered', 'USA', 'standard', 0.00, 74.97),
    (10, 10, '2022-01-10 20:00:00', 'shipped', 'Canada', 'express', 0.10, 229.95),
    (11, 1, '2022-01-11 10:00:00', 'delivered', 'USA', 'standard', 0.05, 139.97),
    (12, 2, '2022-01-12 14:00:00', 'shipped', 'USA', 'express', 0.00, 309.94),
    (13, 3, '2022-01-13 11:00:00', 'delivered', 'Mexico', 'standard', 0.00, 79.98),
    (14, 4, '2022-01-14 16:00:00', 'delivered', 'Canada', 'express', 0.00, 99.97),
    (15, 5, '2022-01-15 12:00:00', 'shipped', 'USA', 'standard', 0.10, 239.96),
    (16, 6, '2022-01-16 15:00:00', 'delivered', 'Mexico', 'standard', 0.00, 139.97),
    (17, 7, '2022-01-17 08:00:00', 'shipped', 'Mexico', 'express', 0.00, 159.98),
    (18, 8, '2022-01-18 09:00:00', 'delivered', 'Canada', 'standard', 0.05, 129.97),
    (19, 9, '2022-01-19 10:00:00', 'shipped', 'USA', 'express', 0.00, 189.96),
    (20, 10, '2022-01-20 11:00:00', 'delivered', 'Japan', 'standard', 0.10, 299.95),
    (21, 1, '2022-01-21 12:00:00', 'shipped', 'UK', 'express', 0.00, 89.97),
    (22, 2, '2022-01-22 13:00:00', 'delivered', 'USA', 'standard', 0.05, 179.98),
    (23, 3, '2022-01-23 14:00:00', 'delivered', 'Canada', 'express', 0.00, 69.97),
    (24, 4, '2022-01-24 15:00:00', 'shipped', 'Mexico', 'standard', 0.10, 209.96),
    (25, 5, '2022-01-25 16:00:00', 'delivered', 'USA', 'standard', 0.00, 99.97),
    (26, 6, '2022-01-26 17:00:00', 'delivered', 'Canada', 'standard', 0.05, 119.98),
    (27, 7, '2022-01-27 18:00:00', 'shipped', 'Mexico', 'express', 0.00, 279.95),
    (28, 8, '2022-01-28 19:00:00', 'delivered', 'USA', 'standard', 0.10, 159.97),
    (29, 9, '2022-01-29 20:00:00', 'shipped', 'Canada', 'express', 0.00, 219.96),
    (30, 10, '2022-01-30 21:00:00', 'delivered', 'Japan', 'standard', 0.05, 99.97),
    (31, 1, '2022-01-31 22:00:00', 'shipped', 'UK', 'standard', 0.00, 79.98),
    (32, 2, '2022-02-01 08:00:00', 'delivered', 'USA', 'express', 0.10, 149.97),
    (33, 3, '2022-02-02 09:00:00', 'shipped', 'Mexico', 'standard', 0.00, 119.98),
    (34, 4, '2022-02-03 10:00:00', 'delivered', 'Canada', 'standard', 0.05, 199.95),
    (35, 5, '2022-02-04 11:00:00', 'shipped', 'USA', 'express', 0.00, 89.97),
    (36, 6, '2022-02-05 12:00:00', 'delivered', 'Mexico', 'standard', 0.10, 259.96);
select count(*) from orders;
create table products (
 product_id int not null primary key,
 product_name varchar(50) not null,
 description varchar(80),
 price decimal not null,
 stock_quantity int
);

INSERT INTO Products (product_id, product_name, description, price, stock_quantity)
VALUES
  (1, 'iPhone X', 'Apple iPhone X, 64GB', 999, 10),
  (2, 'Galaxy S9', 'Samsung Galaxy S9, 128GB', 899, 5),
  (3, 'iPad Pro', 'Apple iPad Pro, 11-inch', 799, 8),
  (4, 'Pixel 4a', 'Google Pixel 4a, 128GB', 499, 12),
  (5, 'MacBook Air', 'Apple MacBook Air, 13-inch', 1099, 3),
  (6, 'Galaxy Note 20', 'Samsung Galaxy Note 20, 256GB', 999, 7),
  (7, 'Surface Pro 7', 'Microsoft Surface Pro 7, 128GB', 1299, 6),
  (8, 'OnePlus 9 Pro', 'OnePlus 9 Pro, 256GB', 1099, 9),
  (9, 'Xperia 1 II', 'Sony Xperia 1 II, 256GB', 1199, 4),
  (10, 'ThinkPad X1 Carbon', 'Lenovo ThinkPad X1 Carbon, 14-inch', 1499, 2),
  (11, 'MateBook X Pro', 'Huawei MateBook X Pro, 13.9-inch', 1399, 5),
  (12, 'Surface Laptop 4', 'Microsoft Surface Laptop 4, 15-inch', 1599, 3),
  (13, 'ZenBook Flip S', 'ASUS ZenBook Flip S, 13.3-inch', 1299, 8),
  (14, 'LG Gram', 'LG Gram, 17-inch', 1699, 1),
  (15, 'ROG Zephyrus G14', 'ASUS ROG Zephyrus G14, 14-inch', 1799, 6),
  (16, 'Galaxy Tab S7', 'Samsung Galaxy Tab S7, 12.4-inch', 799, 10);

-- Create the order_items table
CREATE TABLE order_items (
order_id INT,
product_id INT,
quantity INT,
price DECIMAL(10, 2),
PRIMARY KEY (order_id, product_id),
FOREIGN KEY (order_id) REFERENCES orders(order_id),
FOREIGN KEY (product_id) REFERENCES products(product_id)
);

INSERT INTO order_items (order_id, product_id, quantity, price) VALUES
(1, 1, 1, 39.99),
(1, 2, 2, 19.99),
(2, 3, 3, 29.99),
(2, 4, 1, 99.99),
(3, 5, 2, 49.99),
(4, 6, 1, 89.99),
(4, 7, 1, 109.99),
(4, 8, 2, 29.99),
(5, 9, 3, 24.99),
(5, 10, 1, 79.99),
(6, 1, 2, 39.99),
(6, 2, 1, 19.99),
(6, 3, 1, 29.99),
(7, 4, 1, 99.99),
(7, 5, 1, 49.99),
(7, 6, 1, 89.99),
(8, 7, 1, 109.99),
(8, 8, 1, 29.99),
(9, 9, 2, 24.99),
(9, 10, 1, 79.99),
(10, 1, 1, 39.99),
(10, 2, 1, 19.99),
(10, 3, 2, 29.99),
(10, 4, 1, 99.99),
(11, 5, 1, 49.99),
(11, 6, 1, 89.99),
(12, 7, 1, 109.99),
(12, 8, 2, 29.99),
(12, 9, 1, 24.99),
(13, 10, 1, 79.99),
(14, 1, 1, 39.99),
(14, 2, 2, 19.99),
(14, 3, 1, 29.99),
(15, 4, 1, 99.99),
(15, 5, 2, 49.99),
(15, 6, 1, 89.99),
(16, 7, 1, 109.99),
(16, 8, 1, 29.99),
(16, 9, 1, 24.99);

-- Create the reviews table
CREATE TABLE reviews (
review_id INT PRIMARY KEY,
customer_id INT,
product_id INT,
rating INT,
review_text VARCHAR(500),
review_date DATETIME,
FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
FOREIGN KEY (product_id) REFERENCES products(product_id)
);

-- Insert data into the reviews table
INSERT INTO reviews (review_id, customer_id, product_id, rating, review_text, review_date) VALUES
(1, 1, 1, 4, 'I really enjoyed this product', '2022-01-05 10:00:00'),
(2, 2, 2, 3, 'This product was good but could be better', '2022-01-06 12:00:00'),
(3, 3, 3, 5, 'Amazing product, exceeded my expectations', '2022-01-07 14:00:00'),
(4, 4, 4, 2, 'Disappointing product, would not recommend', '2022-01-08 16:00:00'),
(5, 5, 5, 4, 'Good product, worth the price', '2022-01-09 18:00:00'),
(6, 1, 2, 5, 'This product is a game-changer!', '2022-01-10 10:00:00'),
(7, 2, 3, 4, 'Highly recommend this product', '2022-01-11 12:00:00'),
(8, 3, 4, 3, 'Product was okay, not amazing but not terrible', '2022-01-12 14:00:00'),
(9, 4, 5, 4, 'Great product, would buy again', '2022-01-13 16:00:00'),
(10, 5, 1, 2, 'Not happy with this product at all', '2022-01-14 18:00:00');

-- QN1 --LIST ALL PRODUCTS AVAILABLE IN THE DATABASE WITH THEIR RESPECTIVE PRICES
SELECT DISTINCT(product_name) AS PRODUCT,price FROM products;

-- QN2 -- FIND THE TOTAL NUMBER OF ORDERS PLACED
SELECT COUNT(order_id) AS total_count  FROM orders;

-- QN3 --CALCULATE THE TOTAL REVENUE GENERATED FROM ORDERS
SELECT SUM(total) AS total_revenue FROM ORDERS;

-- QN4 --RETRIEVE ALL CUSTOMERS FROM THE USA
SELECT customer_id,CONCAT(first_name," ",last_name) AS name FROM customers WHERE country="USA";

-- QN5 --SHOW ALL ORDERS PLACED IN THE YER 2022
SELECT order_id,order_date FROM orders WHERE YEAR(order_date)=2022;

-- QN6 --FIND THE TOTAL REVENUE GENERATED FROM ORDERS PLACED IN CANADA
SELECT SUM(total) AS Canada_revenue FROM orders WHERE shipping_country="CANADA";

-- QN7 --LIST TOP 5 PRODUCTS WITH THE HIGHEST AVERAGE RATING
SELECT product_id,product_name,AVG(rating) AS rating FROM 
products INNER JOIN reviews USING(product_id) GROUP BY product_id,product_name ORDER BY rating DESC LIMIT 5;

-- QN8 --SHOW CUSTOMER NAMES ALONG WITH THE TOTAL AMOUNT THEY SPENT ON ORDERS.
SELECT CONCAT(first_name," ",last_name) AS customer_name, SUM(total) AS total
FROM customers cus
JOIN orders ords ON cus.customer_id=ords.customer_id
GROUP BY cus.customer_id,customer_name;

-- QN9 --DISPLAY THE PRODUCTS THAT HAVE NOT RECEIVE ANY REVIEWS
SELECT product_id,product_name FROM products WHERE product_id 
NOT IN (SELECT product_id FROM reviews);

-- QN10 --CALCULATE THE TOTAL DISCOUNT GIVEN IN ORDERS WITH EXPRESS SHIPPING
SELECT SUM(discount) AS total_discount FROM orders GROUP BY shipping_speed HAVING shipping_speed="express";

-- QN11 --IDENTIFY CUSTOMER WHO MADE THE MOST ORDERS 
SELECT c.customer_id, c.first_name,c.last_name, COUNT(order_id) AS count
FROM customers c JOIN orders o
ON c.customer_id=o.customer_id
GROUP BY c.customer_id,c.first_name,c.last_name
LIMIT 1;

-- QN12 --SHOW THE CUSTOMERS WHO HAVE NOT PLACED ANY ORDERS
SELECT customer_id, CONCAT(first_name," ",last_name) AS name FROM
customers WHERE customer_id NOT IN (SELECT customer_id FROM orders);

-- QN13 --LIST THE PRODUCTS THAT HAVE BEEN ORDERED MORE THAN 5 TIMES
SELECT P.product_id,P.product_name,COUNT(order_id) AS count FROM products P
JOIN order_items Item on 
P.product_id=Item.product_id
GROUP BY P.product_id,P.product_name
HAVING count>5;

-- QN14 --DISPLAY THE AVERAGE TOTAL AMOUNT SPENT ON ORDERS BY CUSTOMERS FROM EACH COUNTRY ALONG WITH INDIVIDUAL CUSTOMER 
--        TOTAL AMOUNT SPENT COMPARED TO THE COUNTRY'S AVERAGE

SELECT 
    customer_id,
    first_name,
    last_name,
    country,
    total_spent,
    AVG(total_spent) OVER (PARTITION BY country) AS avg_country_spent,
    total_spent - AVG(total_spent) OVER (PARTITION BY country) AS difference_from_avg
FROM (
    SELECT 
        c.customer_id,
        c.first_name,
        c.last_name,
        c.country,
        SUM(o.total) AS total_spent
    FROM customers c
    JOIN orders o ON c.customer_id = o.customer_id
    GROUP BY c.customer_id, c.first_name, c.last_name, c.country
) AS total_spent_per_customer;

-- Q15-- DISPLAY THE HIGHEST AND LOWEST TOTAL AMOUNT SPENT ON ORDERS BY CUSTOMERS WITHIN EACH COUNTRY

SELECT
    c.customer_id,
    c.first_name,
    c.last_name,
    o.total,
    MAX(o.total) OVER (PARTITION BY c.country) AS maximum_order,
    MIN(o.total) OVER (PARTITION BY c.country) AS minimum_order
FROM 
    customers c
JOIN 
    orders o ON c.customer_id = o.customer_id
GROUP BY 
    c.customer_id,
    c.first_name,
    c.last_name,
    o.total,
    c.country;
     
       


















      
      



