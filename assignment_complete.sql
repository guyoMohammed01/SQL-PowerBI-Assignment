-- =====================================================
-- SQL ASSIGNMENT - COMPLETE SOLUTION
-- Database: Assignment
-- Author: Assignment Submission
-- Date: March 2026
-- =====================================================

-- CREATE DATABASE
CREATE DATABASE Assignment;

-- Connect to the database (uncomment if needed for your SQL client)
-- \c Assignment

-- CREATE schema assignment
CREATE SCHEMA assignment;

-- =====================================================
-- TABLE CREATION
-- =====================================================

-- CREATE Customers table in the assignment schema
CREATE TABLE assignment.customers (
    customer_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    phone_number VARCHAR(50),
    registration_date DATE,
    membership_status VARCHAR(10)
);

-- CREATE Products table in the assignment schema
CREATE TABLE assignment.products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10, 2),
    supplier VARCHAR(100),
    stock_quantity INT
);

-- CREATE Sales table in the assignment schema
CREATE TABLE assignment.sales (
    sale_id INT PRIMARY KEY,
    customer_id INT,
    product_id INT,
    quantity_sold INT,
    sale_date DATE,
    total_amount DECIMAL(10, 2),
    FOREIGN KEY (customer_id) REFERENCES assignment.customers(customer_id),
    FOREIGN KEY (product_id) REFERENCES assignment.products(product_id)
);

-- CREATE Inventory table in the assignment schema
CREATE TABLE assignment.inventory (
    product_id INT PRIMARY KEY,
    stock_quantity INT,
    FOREIGN KEY (product_id) REFERENCES assignment.products(product_id)
);

-- =====================================================
-- DATA INSERTION
-- =====================================================

-- Inserting data into assignment.Customers table
INSERT INTO assignment.Customers 
(customer_id, first_name, last_name, email, phone_number, registration_date, membership_status) 
VALUES
(1, 'Karen', 'Molina', 'gonzalezkimberly@glass.com', '(728)697-1206', '2020-08-27', 'Bronze'),
(2, 'Elizabeth', 'Archer', 'tramirez@gmail.com', '778.104.6553', '2023-08-28', 'Silver'),
(3, 'Roberta', 'Massey', 'davislori@gmail.com', '+1-365-606-7458x399', '2024-06-12', 'Bronze'),
(4, 'Jacob', 'Adams', 'andrew72@hotmail.com', '246-459-1425x462', '2023-02-10', 'Gold'),
(5, 'Cynthia', 'Lowery', 'suarezkiara@ramsey.com', '001-279-688-8177x4015', '2020-11-13', 'Silver'),
(6, 'Emily', 'King', 'igoodwin@howard.com', '(931)575-5422x5900', '2021-05-01', 'Silver'),
(7, 'Linda', 'Larsen', 'pware@yahoo.com', '289-050-2028x7673', '2021-08-20', 'Silver'),
(8, 'Angela', 'Hanson', 'zanderson@gmail.com', '+1-403-917-3585', '2023-03-17', 'Bronze'),
(9, 'Whitney', 'Wilson', 'norma70@yahoo.com', '001-594-317-6656', '2024-01-27', 'Bronze'),
(10, 'Angela', 'Atkins', 'burnsjorge@medina.org', '344.217.5788', '2025-02-05', 'Silver'),
(11, 'Gary', 'Lucero', 'ssnyder@hotmail.com', '001-842-595-7853', '2024-10-08', 'Silver'),
(12, 'Matthew', 'Romero', 'jennifer22@gmail.com', '556.328.91896', '2022-04-07', 'Bronze'),
(13, 'Ronald', 'Thompson', 'hramos@hayes.biz', '298-487-2483', '2023-07-31', 'Bronze'),
(14, 'Suzanne', 'Anderson', 'michaelcole@ruiz-ware.com', '+1-018-029-7257', '2023-11-02', 'Bronze'),
(15, 'Mary', 'Kelly', 'matthewmurphy@gmail.com', '(845)934-9x286', '2021-01-20', 'Bronze'),
(16, 'John', 'George', 'burnettlauren@gmail.com', '+1-708-200-4286', '2022-05-17', 'Bronze'),
(17, 'James', 'Rodriguez', 'brownbrian@blair-sanford.com', '8826047658', '2022-11-25', 'Gold'),
(18, 'Steven', 'Burnett', 'zblackburn@yahoo.com', '(055)912-6726x1246', '2020-01-28', 'Gold'),
(19, 'Jonathan', 'White', 'millsseth@choi-kelly.org', '755-979-1934x772', '2022-02-06', 'Bronze'),
(20, 'Christopher', 'Santiago', 'heidimaddox@hotmail.com', '118-589-6973x058', '2021-10-16', 'Silver'),
(21, 'John', 'Diaz', 'gsmith@hotmail.com', '369.915.4337', '2022-09-17', 'Gold'),
(22, 'Curtis', 'Rose', 'ryanmartinez@moore.com', '(921)461-2128', '2021-12-14', 'Bronze'),
(23, 'Charles', 'Hughes', 'jonesangela@frank-lynn.com', '(152)603-5387x8994', '2024-07-29', 'Silver'),
(24, 'Sarah', 'Cooke', 'whitedennis@tucker.org', '(641)830-6756x56741', '2024-12-15', 'Bronze'),
(25, 'Luis', 'Harrison', 'melvin70@gmail.com', '516.509.9493', '2021-08-19', 'Silver'),
(26, 'Annette', 'Greene', 'aaron68@hall.com', '(733)734-1847x1078', '2025-04-12', 'Bronze'),
(27, 'Melissa', 'Jacobson', 'becklarry@gmail.com', '562-245-7784x4729', '2023-04-28', 'Bronze'),
(28, 'Julie', 'Gardner', 'adamsrodney@hall.com', '+1-014-029-3206x188', '2024-03-31', 'Gold'),
(29, 'Margaret', 'Taylor', 'lfuller@hotmail.com', '(299)340-8900x297', '2021-09-06', 'Bronze'),
(30, 'Erika', 'Mckee', 'wsmith@gmail.com', '(160)040-7321', '2021-05-25', 'Silver'),
(31, 'Donna', 'Whitney', 'justinnicholson@gmail.com', '7086491657', '2022-08-07', 'Gold'),
(32, 'Kristina', 'Wade', 'ashley30@richards-young.com', '603-604-2831x303', '2024-03-16', 'Silver'),
(33, 'Joshua', 'Green', 'ihartman@yahoo.com', '988-232-8285x00933', '2024-05-14', 'Silver'),
(34, 'John', 'Leblanc', 'herickson@green.info', '229.016.2527x20209', '2022-12-24', 'Silver'),
(35, 'Nicholas', 'Campbell', 'ghernandez@hotmail.com', '(982)215-6626', '2022-06-06', 'Gold'),
(36, 'Christopher', 'Hicks', 'ryan48@gmail.com', '884.881.7758', '2021-04-03', 'Silver'),
(37, 'Craig', 'Miller', 'scampbell@johnson.net', '390-328-7286x021', '2024-04-30', 'Silver'),
(38, 'Jennifer', 'Bailey', 'dwright@hotmail.com', '001-992-011-9250', '2022-09-07', 'Silver'),
(39, 'Emma', 'Davis', 'lisalester@hotmail.com', '911.706.3025', '2021-06-04', 'Gold'),
(40, 'Michael', 'Wilson', 'lmerritt@wallace-wang.com', '462.021.3233', '2025-01-14', 'Bronze'),
(41, 'Sarah', 'Church', 'deniseramos@gmail.com', '(840)285-3653x61868', '2021-03-14', 'Silver'),
(42, 'Carolyn', 'Stevenson', 'george62@garrison.net', '040.179.1155', '2024-07-26', 'Silver'),
(43, 'Sarah', 'Cole', 'amandamartin@hotmail.com', '481-651-5206x4800', '2024-07-27', 'Silver'),
(44, 'Jeremiah', 'Lozano', 'bethany38@lopez.net', '846-327-7426', '2023-01-02', 'Bronze'),
(45, 'Leslie', 'Boyd', 'cartermorgan@scott-franco.com', '+1-583-786-3525', '2022-10-22', 'Silver'),
(46, 'Carrie', 'Anderson', 'stevenlivingston@yahoo.com', '+1-086-709-5530x6149', '2024-08-23', 'Gold'),
(47, 'Jared', 'Davis', 'mooretodd@cook.com', '001-069-544-8807x2397', '2022-08-29', 'Bronze'),
(48, 'James', 'Soto', 'patriciaburns@yahoo.com', '129.857.8193x421', '2023-01-27', 'Gold'),
(49, 'Cody', 'Kline', 'bradfordleslie@hotmail.com', '+1-710-706-3703x7998', '2022-06-28', 'Bronze'),
(50, 'Jennifer', 'Perkins', 'austinowens@hill.info', '762.009.1882', '2020-10-19', 'Silver');

-- Inserting data into assignment.Products table
INSERT INTO assignment.Products 
(product_id, product_name, category, price, supplier, stock_quantity) 
VALUES
(1, 'Laptop', 'Electronics', 999.99, 'Dell', 50),
(2, 'Smartphone', 'Electronics', 799.99, 'Samsung', 150),
(3, 'Washing Machine', 'Appliances', 499.99, 'LG', 30),
(4, 'Headphones', 'Accessories', 199.99, 'Sony', 100),
(5, 'Refrigerator', 'Appliances', 1200.00, 'Whirlpool', 40),
(6, 'Smart TV', 'Electronics', 1500.00, 'Samsung', 20),
(7, 'Microwave', 'Appliances', 180.00, 'Panasonic', 75),
(8, 'Blender', 'Appliances', 50.00, 'Ninja', 200),
(9, 'Gaming Console', 'Electronics', 350.00, 'Sony', 60),
(10, 'Wireless Mouse', 'Accessories', 25.00, 'Logitech', 300),
(11, 'Keyboard', 'Accessories', 49.99, 'Logitech', 250),
(12, 'Monitor', 'Electronics', 250.00, 'Acer', 120),
(13, 'External Hard Drive', 'Electronics', 80.00, 'Seagate', 90),
(14, 'Tablet', 'Electronics', 400.00, 'Apple', 70),
(15, 'Smartwatch', 'Electronics', 199.99, 'Apple', 120);

-- Inserting data into assignment.Sales table
INSERT INTO assignment.Sales 
(sale_id, customer_id, product_id, quantity_sold, sale_date, total_amount) 
VALUES
(1, 1, 1, 1, '2023-07-15', 999.99),
(2, 2, 2, 2, '2023-08-20', 1599.98),
(3, 3, 3, 1, '2023-09-10', 499.99),
(4, 4, 4, 3, '2023-07-25', 599.97),
(5, 5, 5, 1, '2023-06-18', 1200.00),
(6, 6, 6, 1, '2023-10-05', 1500.00),
(7, 7, 7, 1, '2023-08-01', 180.00),
(8, 8, 8, 2, '2023-09-02', 100.00),
(9, 9, 9, 1, '2023-10-10', 350.00),
(10, 10, 10, 3, '2023-11-12', 75.00),
(11, 11, 11, 2, '2023-12-01', 100.00),
(12, 12, 12, 1, '2023-12-07', 250.00),
(13, 13, 13, 1, '2024-01-15', 80.00),
(14, 14, 14, 1, '2024-02-05', 400.00),
(15, 15, 15, 1, '2024-01-05', 199.99);

-- Inserting data into assignment.Inventory table
INSERT INTO assignment.inventory 
(product_id, stock_quantity) 
VALUES
(1, 50),
(2, 150),
(3, 30),
(4, 100),
(5, 40),
(6, 20),
(7, 75),
(8, 200),
(9, 60),
(10, 300),
(11, 250),
(12, 120),
(13, 90),
(14, 70),
(15, 120);


-- =====================================================
-- PART 1: BASIC SQL QUERIES (Questions 1-50)
-- =====================================================

-- 1. Write a query to select all data from the `Customers` table.
SELECT * FROM assignment.Customers;

-- 2. Write a query to select the total number of products from the `Products` table.
SELECT COUNT(*) AS total_products 
FROM assignment.Products;

-- 3. Write a query to select the product name and its price from the `Products` table where the price is greater than 500.
SELECT product_name, price 
FROM assignment.Products 
WHERE price > 500;

-- 4. Write a query to find the average price of all products from the `Products` table.
SELECT AVG(price) AS average_price 
FROM assignment.Products;

-- 5. Write a query to find the total sales amount from the `Sales` table.
SELECT SUM(total_amount) AS total_sales 
FROM assignment.Sales;

-- 6. Write a query to select distinct membership statuses from the `Customers` table.
SELECT DISTINCT membership_status 
FROM assignment.Customers;

-- 7. Write a query to concatenate first and last names of all customers and show the result as `full_name`.
SELECT CONCAT(first_name, ' ', last_name) AS full_name 
FROM assignment.Customers;

-- 8. Write a query to find all products in the `Products` table where the category is 'Electronics'.
SELECT * 
FROM assignment.Products 
WHERE category = 'Electronics';

-- 9. Write a query to find the highest price from the `Products` table.
SELECT MAX(price) AS highest_price 
FROM assignment.Products;

-- 10. Write a query to count the number of sales for each product from the `Sales` table.
SELECT product_id, COUNT(*) AS number_of_sales 
FROM assignment.Sales 
GROUP BY product_id;

-- 11. Write a query to find the total quantity sold for each product from the `Sales` table.
SELECT product_id, SUM(quantity_sold) AS total_quantity_sold 
FROM assignment.Sales 
GROUP BY product_id;

-- 12. Write a query to find the lowest price of products in the `Products` table.
SELECT MIN(price) AS lowest_price 
FROM assignment.Products;

-- 13. Write a query to find customers who have purchased products with a price greater than 1000.
SELECT DISTINCT c.* 
FROM assignment.Customers c
JOIN assignment.Sales s ON c.customer_id = s.customer_id
JOIN assignment.Products p ON s.product_id = p.product_id
WHERE p.price > 1000;

-- 14. Write a query to join the `Sales` and `Products` tables on product_id, and select the product name and total sales amount.
SELECT p.product_name, s.total_amount 
FROM assignment.Sales s
JOIN assignment.Products p ON s.product_id = p.product_id;

-- 15. Write a query to join the `Customers` and `Sales` tables and find the total amount spent by each customer.
SELECT c.customer_id, c.first_name, c.last_name, SUM(s.total_amount) AS total_spent 
FROM assignment.Customers c
JOIN assignment.Sales s ON c.customer_id = s.customer_id
GROUP BY c.customer_id, c.first_name, c.last_name;

-- 16. Write a query to join the `Customers`, `Sales`, and `Products` tables, and show each customer's first and last name, product name, and quantity sold.
SELECT c.first_name, c.last_name, p.product_name, s.quantity_sold 
FROM assignment.Customers c
JOIN assignment.Sales s ON c.customer_id = s.customer_id
JOIN assignment.Products p ON s.product_id = p.product_id;

-- 17. Write a query to perform a self-join on the `Customers` table and find all pairs of customers who have the same membership status.
SELECT c1.customer_id AS customer1_id, c1.first_name AS customer1_name, 
       c2.customer_id AS customer2_id, c2.first_name AS customer2_name, 
       c1.membership_status
FROM assignment.Customers c1
JOIN assignment.Customers c2 ON c1.membership_status = c2.membership_status 
WHERE c1.customer_id < c2.customer_id;

-- 18. Write a query to join the `Sales` and `Products` tables, and calculate the total number of sales for each product.
SELECT p.product_name, COUNT(s.sale_id) AS total_sales 
FROM assignment.Products p
JOIN assignment.Sales s ON p.product_id = s.product_id
GROUP BY p.product_name;

-- 19. Write a query to find the products in the `Products` table where the stock quantity is less than 10.
SELECT * 
FROM assignment.Products 
WHERE stock_quantity < 10;

-- 20. Write a query to join the `Sales` table and the `Products` table, and find products with sales greater than 5.
SELECT p.product_name, COUNT(s.sale_id) AS sales_count 
FROM assignment.Products p
JOIN assignment.Sales s ON p.product_id = s.product_id
GROUP BY p.product_name
HAVING COUNT(s.sale_id) > 5;

-- 21. Write a query to select customers who have purchased products that are either in the 'Electronics' or 'Appliances' category.
SELECT DISTINCT c.* 
FROM assignment.Customers c
JOIN assignment.Sales s ON c.customer_id = s.customer_id
JOIN assignment.Products p ON s.product_id = p.product_id
WHERE p.category IN ('Electronics', 'Appliances');

-- 22. Write a query to calculate the total sales amount per product and group the result by product name.
SELECT p.product_name, SUM(s.total_amount) AS total_sales_amount 
FROM assignment.Products p
JOIN assignment.Sales s ON p.product_id = s.product_id
GROUP BY p.product_name;

-- 23. Write a query to join the `Sales` table with the `Customers` table and select customers who made a purchase in the year 2023.
SELECT DISTINCT c.* 
FROM assignment.Customers c
JOIN assignment.Sales s ON c.customer_id = s.customer_id
WHERE EXTRACT(YEAR FROM s.sale_date) = 2023;

-- 24. Write a query to find the customers with the highest total sales in 2023.
SELECT c.customer_id, c.first_name, c.last_name, SUM(s.total_amount) AS total_sales 
FROM assignment.Customers c
JOIN assignment.Sales s ON c.customer_id = s.customer_id
WHERE EXTRACT(YEAR FROM s.sale_date) = 2023
GROUP BY c.customer_id, c.first_name, c.last_name
ORDER BY total_sales DESC
LIMIT 1;

-- 25. Write a query to join the `Products` and `Sales` tables and select the most expensive product sold.
SELECT p.product_name, p.price 
FROM assignment.Products p
JOIN assignment.Sales s ON p.product_id = s.product_id
ORDER BY p.price DESC
LIMIT 1;

-- 26. Write a query to find the total number of customers who have purchased products worth more than 500.
SELECT COUNT(DISTINCT c.customer_id) AS customers_count 
FROM assignment.Customers c
JOIN assignment.Sales s ON c.customer_id = s.customer_id
WHERE s.total_amount > 500;

-- 27. Write a query to join the `Products`, `Sales`, and `Customers` tables and find the total number of sales made by customers who are in the 'Gold' membership tier.
SELECT COUNT(s.sale_id) AS total_gold_sales 
FROM assignment.Sales s
JOIN assignment.Customers c ON s.customer_id = c.customer_id
WHERE c.membership_status = 'Gold';

-- 28. Write a query to join the `Products` and `Inventory` tables and find all products that have low stock (less than 10).
SELECT p.product_name, i.stock_quantity 
FROM assignment.Products p
JOIN assignment.Inventory i ON p.product_id = i.product_id
WHERE i.stock_quantity < 10;

-- 29. Write a query to find customers who have purchased more than 5 products and show the total quantity of products they have bought.
SELECT c.customer_id, c.first_name, c.last_name, SUM(s.quantity_sold) AS total_quantity 
FROM assignment.Customers c
JOIN assignment.Sales s ON c.customer_id = s.customer_id
GROUP BY c.customer_id, c.first_name, c.last_name
HAVING SUM(s.quantity_sold) > 5;

-- 30. Write a query to find the average quantity sold per product.
SELECT AVG(quantity_sold) AS average_quantity_sold 
FROM assignment.Sales;

-- 31. Write a query to find the number of sales made in the month of December 2023.
SELECT COUNT(*) AS december_sales 
FROM assignment.Sales 
WHERE EXTRACT(YEAR FROM sale_date) = 2023 
  AND EXTRACT(MONTH FROM sale_date) = 12;

-- 32. Write a query to find the total amount spent by each customer in 2023 and list the customers in descending order.
SELECT c.customer_id, c.first_name, c.last_name, SUM(s.total_amount) AS total_spent 
FROM assignment.Customers c
JOIN assignment.Sales s ON c.customer_id = s.customer_id
WHERE EXTRACT(YEAR FROM s.sale_date) = 2023
GROUP BY c.customer_id, c.first_name, c.last_name
ORDER BY total_spent DESC;

-- 33. Write a query to find all products that have been sold but have less than 5 units left in stock.
SELECT DISTINCT p.product_name, i.stock_quantity 
FROM assignment.Products p
JOIN assignment.Sales s ON p.product_id = s.product_id
JOIN assignment.Inventory i ON p.product_id = i.product_id
WHERE i.stock_quantity < 5;

-- 34. Write a query to find the total sales for each product and order the result by the highest sales.
SELECT p.product_name, SUM(s.total_amount) AS total_sales 
FROM assignment.Products p
JOIN assignment.Sales s ON p.product_id = s.product_id
GROUP BY p.product_name
ORDER BY total_sales DESC;

-- 35. Write a query to find all customers who bought products within 7 days of their registration date.
SELECT DISTINCT c.* 
FROM assignment.Customers c
JOIN assignment.Sales s ON c.customer_id = s.customer_id
WHERE s.sale_date BETWEEN c.registration_date AND c.registration_date + INTERVAL '7 days';

-- 36. Write a query to join the `Sales` table with the `Products` table and filter the results by products priced between 100 and 500.
SELECT s.*, p.product_name, p.price 
FROM assignment.Sales s
JOIN assignment.Products p ON s.product_id = p.product_id
WHERE p.price BETWEEN 100 AND 500;

-- 37. Write a query to find the most frequent customer who made purchases from the `Sales` table.
SELECT c.customer_id, c.first_name, c.last_name, COUNT(s.sale_id) AS purchase_count 
FROM assignment.Customers c
JOIN assignment.Sales s ON c.customer_id = s.customer_id
GROUP BY c.customer_id, c.first_name, c.last_name
ORDER BY purchase_count DESC
LIMIT 1;

-- 38. Write a query to find the total quantity of products sold per customer.
SELECT c.customer_id, c.first_name, c.last_name, SUM(s.quantity_sold) AS total_quantity 
FROM assignment.Customers c
JOIN assignment.Sales s ON c.customer_id = s.customer_id
GROUP BY c.customer_id, c.first_name, c.last_name;

-- 39. Write a query to find the products with the highest stock and lowest stock, and display them together in a single result set.
(SELECT product_name, stock_quantity, 'Highest Stock' AS stock_type 
 FROM assignment.Products 
 ORDER BY stock_quantity DESC 
 LIMIT 1)
UNION ALL
(SELECT product_name, stock_quantity, 'Lowest Stock' AS stock_type 
 FROM assignment.Products 
 ORDER BY stock_quantity ASC 
 LIMIT 1);

-- 40. Write a query to find products whose names contain the word 'Phone' and their total sales.
SELECT p.product_name, COALESCE(SUM(s.total_amount), 0) AS total_sales 
FROM assignment.Products p
LEFT JOIN assignment.Sales s ON p.product_id = s.product_id
WHERE p.product_name LIKE '%Phone%'
GROUP BY p.product_name;

-- 41. Write a query to perform an `INNER JOIN` between `Customers` and `Sales`, then display the total sales amount and the product names for customers in the 'Gold' membership status.
SELECT c.customer_id, c.first_name, c.last_name, p.product_name, s.total_amount 
FROM assignment.Customers c
INNER JOIN assignment.Sales s ON c.customer_id = s.customer_id
INNER JOIN assignment.Products p ON s.product_id = p.product_id
WHERE c.membership_status = 'Gold';

-- 42. Write a query to find the total sales of products by category.
SELECT p.category, SUM(s.total_amount) AS total_sales 
FROM assignment.Products p
JOIN assignment.Sales s ON p.product_id = s.product_id
GROUP BY p.category;

-- 43. Write a query to join the `Products` table with the `Sales` table, and calculate the total sales for each product, grouped by month and year.
SELECT p.product_name, 
       EXTRACT(YEAR FROM s.sale_date) AS sale_year, 
       EXTRACT(MONTH FROM s.sale_date) AS sale_month, 
       SUM(s.total_amount) AS total_sales 
FROM assignment.Products p
JOIN assignment.Sales s ON p.product_id = s.product_id
GROUP BY p.product_name, sale_year, sale_month
ORDER BY sale_year, sale_month;

-- 44. Write a query to join the `Sales` and `Inventory` tables and find products that have been sold but still have stock remaining.
SELECT DISTINCT p.product_name, i.stock_quantity 
FROM assignment.Sales s
JOIN assignment.Products p ON s.product_id = p.product_id
JOIN assignment.Inventory i ON p.product_id = i.product_id
WHERE i.stock_quantity > 0;

-- 45. Write a query to find the top 5 customers who have made the highest purchases.
SELECT c.customer_id, c.first_name, c.last_name, SUM(s.total_amount) AS total_purchases 
FROM assignment.Customers c
JOIN assignment.Sales s ON c.customer_id = s.customer_id
GROUP BY c.customer_id, c.first_name, c.last_name
ORDER BY total_purchases DESC
LIMIT 5;

-- 46. Write a query to calculate the total number of unique products sold in 2023.
SELECT COUNT(DISTINCT product_id) AS unique_products_sold 
FROM assignment.Sales 
WHERE EXTRACT(YEAR FROM sale_date) = 2023;

-- 47. Write a query to find the products that have not been sold in the last 6 months.
SELECT p.* 
FROM assignment.Products p
WHERE p.product_id NOT IN (
    SELECT DISTINCT product_id 
    FROM assignment.Sales 
    WHERE sale_date >= CURRENT_DATE - INTERVAL '6 months'
);

-- 48. Write a query to select the products with a price range between $200 and $800, and find the total quantity sold for each.
SELECT p.product_name, p.price, COALESCE(SUM(s.quantity_sold), 0) AS total_quantity_sold 
FROM assignment.Products p
LEFT JOIN assignment.Sales s ON p.product_id = s.product_id
WHERE p.price BETWEEN 200 AND 800
GROUP BY p.product_name, p.price;

-- 49. Write a query to find the customers who spent the most money in the year 2023.
SELECT c.customer_id, c.first_name, c.last_name, SUM(s.total_amount) AS total_spent 
FROM assignment.Customers c
JOIN assignment.Sales s ON c.customer_id = s.customer_id
WHERE EXTRACT(YEAR FROM s.sale_date) = 2023
GROUP BY c.customer_id, c.first_name, c.last_name
ORDER BY total_spent DESC
LIMIT 1;

-- 50. Write a query to select the products that have been sold more than 100 times and have a price greater than 200.
SELECT p.product_name, p.price, COUNT(s.sale_id) AS times_sold 
FROM assignment.Products p
JOIN assignment.Sales s ON p.product_id = s.product_id
WHERE p.price > 200
GROUP BY p.product_name, p.price
HAVING COUNT(s.sale_id) > 100;


-- =====================================================
-- PART 2: ADVANCED SQL QUERIES (Questions 51-100)
-- =====================================================

-- =====================================================
-- SUBQUERY QUESTIONS (51-60)
-- =====================================================

-- 51. Which customers have spent more than the average spending of all customers?
SELECT c.customer_id, c.first_name, c.last_name, SUM(s.total_amount) AS total_spent
FROM assignment.Customers c
JOIN assignment.Sales s ON c.customer_id = s.customer_id
GROUP BY c.customer_id, c.first_name, c.last_name
HAVING SUM(s.total_amount) > (
    SELECT AVG(customer_total) 
    FROM (
        SELECT SUM(total_amount) AS customer_total 
        FROM assignment.Sales 
        GROUP BY customer_id
    ) AS avg_spending
);

-- 52. Which products are priced higher than the average price of all products?
SELECT product_id, product_name, price
FROM assignment.Products
WHERE price > (SELECT AVG(price) FROM assignment.Products);

-- 53. Which customers have never made a purchase?
SELECT c.*
FROM assignment.Customers c
WHERE c.customer_id NOT IN (
    SELECT DISTINCT customer_id 
    FROM assignment.Sales
);

-- 54. Which products have never been sold?
SELECT p.*
FROM assignment.Products p
WHERE p.product_id NOT IN (
    SELECT DISTINCT product_id 
    FROM assignment.Sales
);

-- 55. Which customer made the single most expensive purchase?
SELECT c.customer_id, c.first_name, c.last_name, s.total_amount
FROM assignment.Customers c
JOIN assignment.Sales s ON c.customer_id = s.customer_id
WHERE s.total_amount = (SELECT MAX(total_amount) FROM assignment.Sales);

-- 56. Which products have total sales greater than the average total sales across all products?
SELECT p.product_id, p.product_name, SUM(s.total_amount) AS total_sales
FROM assignment.Products p
JOIN assignment.Sales s ON p.product_id = s.product_id
GROUP BY p.product_id, p.product_name
HAVING SUM(s.total_amount) > (
    SELECT AVG(product_sales) 
    FROM (
        SELECT SUM(total_amount) AS product_sales 
        FROM assignment.Sales 
        GROUP BY product_id
    ) AS avg_product_sales
);

-- 57. Which customers registered earlier than the average registration date?
SELECT c.*
FROM assignment.Customers c
WHERE c.registration_date < (
    SELECT AVG(registration_date) 
    FROM assignment.Customers
);

-- 58. Which products have a price higher than the average price within their own category?
SELECT p1.product_id, p1.product_name, p1.category, p1.price
FROM assignment.Products p1
WHERE p1.price > (
    SELECT AVG(p2.price) 
    FROM assignment.Products p2 
    WHERE p2.category = p1.category
);

-- 59. Which customers have spent more than the customer with ID = 10?
SELECT c.customer_id, c.first_name, c.last_name, SUM(s.total_amount) AS total_spent
FROM assignment.Customers c
JOIN assignment.Sales s ON c.customer_id = s.customer_id
GROUP BY c.customer_id, c.first_name, c.last_name
HAVING SUM(s.total_amount) > (
    SELECT COALESCE(SUM(total_amount), 0) 
    FROM assignment.Sales 
    WHERE customer_id = 10
);

-- 60. Which products have total quantity sold greater than the overall average quantity sold?
SELECT p.product_id, p.product_name, SUM(s.quantity_sold) AS total_quantity_sold
FROM assignment.Products p
JOIN assignment.Sales s ON p.product_id = s.product_id
GROUP BY p.product_id, p.product_name
HAVING SUM(s.quantity_sold) > (
    SELECT AVG(total_qty) 
    FROM (
        SELECT SUM(quantity_sold) AS total_qty 
        FROM assignment.Sales 
        GROUP BY product_id
    ) AS avg_qty
);


-- =====================================================
-- COMMON TABLE EXPRESSIONS (CTEs) (61-70)
-- =====================================================

-- 61. Create an intermediate result that calculates the total amount spent by each customer, then determine which customers are the top 5 highest spenders.
WITH customer_spending AS (
    SELECT c.customer_id, c.first_name, c.last_name, SUM(s.total_amount) AS total_spent
    FROM assignment.Customers c
    JOIN assignment.Sales s ON c.customer_id = s.customer_id
    GROUP BY c.customer_id, c.first_name, c.last_name
)
SELECT * 
FROM customer_spending
ORDER BY total_spent DESC
LIMIT 5;

-- 62. Create an intermediate result that calculates total quantity sold per product, then determine which products are the top 3 most sold.
WITH product_quantities AS (
    SELECT p.product_id, p.product_name, SUM(s.quantity_sold) AS total_quantity_sold
    FROM assignment.Products p
    JOIN assignment.Sales s ON p.product_id = s.product_id
    GROUP BY p.product_id, p.product_name
)
SELECT * 
FROM product_quantities
ORDER BY total_quantity_sold DESC
LIMIT 3;

-- 63. Create an intermediate result showing total sales per product category, then determine which category generates the highest revenue.
WITH category_sales AS (
    SELECT p.category, SUM(s.total_amount) AS total_revenue
    FROM assignment.Products p
    JOIN assignment.Sales s ON p.product_id = s.product_id
    GROUP BY p.category
)
SELECT * 
FROM category_sales
ORDER BY total_revenue DESC
LIMIT 1;

-- 64. Create an intermediate result that calculates the number of purchases per customer, then identify customers who purchased more than twice.
WITH customer_purchases AS (
    SELECT c.customer_id, c.first_name, c.last_name, COUNT(s.sale_id) AS purchase_count
    FROM assignment.Customers c
    JOIN assignment.Sales s ON c.customer_id = s.customer_id
    GROUP BY c.customer_id, c.first_name, c.last_name
)
SELECT * 
FROM customer_purchases
WHERE purchase_count > 2;

-- 65. Create an intermediate result that calculates the total quantity sold per product, then determine which products sold more than the average quantity sold.
WITH product_quantities AS (
    SELECT p.product_id, p.product_name, SUM(s.quantity_sold) AS total_quantity_sold
    FROM assignment.Products p
    JOIN assignment.Sales s ON p.product_id = s.product_id
    GROUP BY p.product_id, p.product_name
),
avg_quantity AS (
    SELECT AVG(total_quantity_sold) AS average_quantity
    FROM product_quantities
)
SELECT pq.* 
FROM product_quantities pq, avg_quantity aq
WHERE pq.total_quantity_sold > aq.average_quantity;

-- 66. Create an intermediate result that calculates total spending per customer, then determine which customers spent more than the average spending.
WITH customer_spending AS (
    SELECT c.customer_id, c.first_name, c.last_name, SUM(s.total_amount) AS total_spent
    FROM assignment.Customers c
    JOIN assignment.Sales s ON c.customer_id = s.customer_id
    GROUP BY c.customer_id, c.first_name, c.last_name
),
avg_spending AS (
    SELECT AVG(total_spent) AS average_spending
    FROM customer_spending
)
SELECT cs.* 
FROM customer_spending cs, avg_spending avs
WHERE cs.total_spent > avs.average_spending;

-- 67. Create an intermediate result that calculates total revenue per product, then list the products ordered from highest revenue to lowest.
WITH product_revenue AS (
    SELECT p.product_id, p.product_name, SUM(s.total_amount) AS total_revenue
    FROM assignment.Products p
    JOIN assignment.Sales s ON p.product_id = s.product_id
    GROUP BY p.product_id, p.product_name
)
SELECT * 
FROM product_revenue
ORDER BY total_revenue DESC;

-- 68. Create an intermediate result showing monthly sales totals, then determine which month had the highest revenue.
WITH monthly_sales AS (
    SELECT 
        EXTRACT(YEAR FROM sale_date) AS sale_year,
        EXTRACT(MONTH FROM sale_date) AS sale_month,
        SUM(total_amount) AS monthly_revenue
    FROM assignment.Sales
    GROUP BY sale_year, sale_month
)
SELECT * 
FROM monthly_sales
ORDER BY monthly_revenue DESC
LIMIT 1;

-- 69. Create an intermediate result that calculates the number of sales per product, then determine which products were purchased by more than three customers.
WITH product_customer_count AS (
    SELECT p.product_id, p.product_name, COUNT(DISTINCT s.customer_id) AS customer_count
    FROM assignment.Products p
    JOIN assignment.Sales s ON p.product_id = s.product_id
    GROUP BY p.product_id, p.product_name
)
SELECT * 
FROM product_customer_count
WHERE customer_count > 3;

-- 70. Create an intermediate result showing total quantity sold per product, then identify products that sold less than the average quantity sold.
WITH product_quantities AS (
    SELECT p.product_id, p.product_name, SUM(s.quantity_sold) AS total_quantity_sold
    FROM assignment.Products p
    JOIN assignment.Sales s ON p.product_id = s.product_id
    GROUP BY p.product_id, p.product_name
),
avg_quantity AS (
    SELECT AVG(total_quantity_sold) AS average_quantity
    FROM product_quantities
)
SELECT pq.* 
FROM product_quantities pq, avg_quantity aq
WHERE pq.total_quantity_sold < aq.average_quantity;


-- =====================================================
-- WINDOW FUNCTION QUESTIONS (71-80)
-- =====================================================

-- 71. Rank customers based on the total amount they have spent.
WITH customer_spending AS (
    SELECT c.customer_id, c.first_name, c.last_name, SUM(s.total_amount) AS total_spent
    FROM assignment.Customers c
    JOIN assignment.Sales s ON c.customer_id = s.customer_id
    GROUP BY c.customer_id, c.first_name, c.last_name
)
SELECT 
    customer_id, 
    first_name, 
    last_name, 
    total_spent,
    RANK() OVER (ORDER BY total_spent DESC) AS spending_rank
FROM customer_spending;

-- 72. Rank products based on total quantity sold.
WITH product_quantities AS (
    SELECT p.product_id, p.product_name, SUM(s.quantity_sold) AS total_quantity_sold
    FROM assignment.Products p
    JOIN assignment.Sales s ON p.product_id = s.product_id
    GROUP BY p.product_id, p.product_name
)
SELECT 
    product_id, 
    product_name, 
    total_quantity_sold,
    RANK() OVER (ORDER BY total_quantity_sold DESC) AS quantity_rank
FROM product_quantities;

-- 73. Identify the 3rd highest spending customer.
WITH customer_spending AS (
    SELECT c.customer_id, c.first_name, c.last_name, SUM(s.total_amount) AS total_spent
    FROM assignment.Customers c
    JOIN assignment.Sales s ON c.customer_id = s.customer_id
    GROUP BY c.customer_id, c.first_name, c.last_name
),
ranked_customers AS (
    SELECT 
        customer_id, 
        first_name, 
        last_name, 
        total_spent,
        DENSE_RANK() OVER (ORDER BY total_spent DESC) AS spending_rank
    FROM customer_spending
)
SELECT * 
FROM ranked_customers
WHERE spending_rank = 3;

-- 74. Identify the 2nd most expensive product.
WITH ranked_products AS (
    SELECT 
        product_id, 
        product_name, 
        price,
        DENSE_RANK() OVER (ORDER BY price DESC) AS price_rank
    FROM assignment.Products
)
SELECT * 
FROM ranked_products
WHERE price_rank = 2;

-- 75. Show the ranking of products within each category based on price.
SELECT 
    product_id, 
    product_name, 
    category, 
    price,
    RANK() OVER (PARTITION BY category ORDER BY price DESC) AS category_price_rank
FROM assignment.Products;

-- 76. Show the ranking of customers based on the number of purchases they made.
WITH customer_purchases AS (
    SELECT c.customer_id, c.first_name, c.last_name, COUNT(s.sale_id) AS purchase_count
    FROM assignment.Customers c
    JOIN assignment.Sales s ON c.customer_id = s.customer_id
    GROUP BY c.customer_id, c.first_name, c.last_name
)
SELECT 
    customer_id, 
    first_name, 
    last_name, 
    purchase_count,
    RANK() OVER (ORDER BY purchase_count DESC) AS purchase_rank
FROM customer_purchases;

-- 77. Show the running total of sales amounts ordered by sale_date.
SELECT 
    sale_id, 
    sale_date, 
    total_amount,
    SUM(total_amount) OVER (ORDER BY sale_date) AS running_total
FROM assignment.Sales
ORDER BY sale_date;

-- 78. Show the previous sale amount for each sale ordered by sale_date.
SELECT 
    sale_id, 
    sale_date, 
    total_amount,
    LAG(total_amount) OVER (ORDER BY sale_date) AS previous_sale_amount
FROM assignment.Sales
ORDER BY sale_date;

-- 79. Show the next sale amount for each sale ordered by sale_date.
SELECT 
    sale_id, 
    sale_date, 
    total_amount,
    LEAD(total_amount) OVER (ORDER BY sale_date) AS next_sale_amount
FROM assignment.Sales
ORDER BY sale_date;

-- 80. Divide customers into 4 groups based on total spending.
WITH customer_spending AS (
    SELECT c.customer_id, c.first_name, c.last_name, SUM(s.total_amount) AS total_spent
    FROM assignment.Customers c
    JOIN assignment.Sales s ON c.customer_id = s.customer_id
    GROUP BY c.customer_id, c.first_name, c.last_name
)
SELECT 
    customer_id, 
    first_name, 
    last_name, 
    total_spent,
    NTILE(4) OVER (ORDER BY total_spent DESC) AS spending_quartile
FROM customer_spending;


-- =====================================================
-- ADVANCED ANALYTICAL QUESTIONS (81-90)
-- =====================================================

-- 81. Which customers bought products in more than one category?
SELECT c.customer_id, c.first_name, c.last_name, COUNT(DISTINCT p.category) AS category_count
FROM assignment.Customers c
JOIN assignment.Sales s ON c.customer_id = s.customer_id
JOIN assignment.Products p ON s.product_id = p.product_id
GROUP BY c.customer_id, c.first_name, c.last_name
HAVING COUNT(DISTINCT p.category) > 1;

-- 82. Which customers purchased products within 7 days of registering?
SELECT DISTINCT c.*
FROM assignment.Customers c
JOIN assignment.Sales s ON c.customer_id = s.customer_id
WHERE s.sale_date BETWEEN c.registration_date AND c.registration_date + INTERVAL '7 days';

-- 83. Which products have lower stock remaining than the average stock quantity?
SELECT p.product_id, p.product_name, i.stock_quantity
FROM assignment.Products p
JOIN assignment.Inventory i ON p.product_id = i.product_id
WHERE i.stock_quantity < (SELECT AVG(stock_quantity) FROM assignment.Inventory);

-- 84. Which customers purchased the same product more than once?
SELECT c.customer_id, c.first_name, c.last_name, s.product_id, COUNT(s.sale_id) AS purchase_count
FROM assignment.Customers c
JOIN assignment.Sales s ON c.customer_id = s.customer_id
GROUP BY c.customer_id, c.first_name, c.last_name, s.product_id
HAVING COUNT(s.sale_id) > 1;

-- 85. Which product categories generated the highest total revenue?
SELECT p.category, SUM(s.total_amount) AS total_revenue
FROM assignment.Products p
JOIN assignment.Sales s ON p.product_id = s.product_id
GROUP BY p.category
ORDER BY total_revenue DESC
LIMIT 1;

-- 86. Which products are among the top 3 most sold products?
WITH product_sales AS (
    SELECT p.product_id, p.product_name, COUNT(s.sale_id) AS sales_count
    FROM assignment.Products p
    JOIN assignment.Sales s ON p.product_id = s.product_id
    GROUP BY p.product_id, p.product_name
)
SELECT * 
FROM product_sales
ORDER BY sales_count DESC
LIMIT 3;

-- 87. Which customers purchased the most expensive product?
SELECT DISTINCT c.customer_id, c.first_name, c.last_name
FROM assignment.Customers c
JOIN assignment.Sales s ON c.customer_id = s.customer_id
JOIN assignment.Products p ON s.product_id = p.product_id
WHERE p.price = (SELECT MAX(price) FROM assignment.Products);

-- 88. Which products were purchased by the highest number of unique customers?
SELECT p.product_id, p.product_name, COUNT(DISTINCT s.customer_id) AS unique_customers
FROM assignment.Products p
JOIN assignment.Sales s ON p.product_id = s.product_id
GROUP BY p.product_id, p.product_name
ORDER BY unique_customers DESC
LIMIT 1;

-- 89. Which customers made purchases above the average sale amount?
SELECT DISTINCT c.customer_id, c.first_name, c.last_name
FROM assignment.Customers c
JOIN assignment.Sales s ON c.customer_id = s.customer_id
WHERE s.total_amount > (SELECT AVG(total_amount) FROM assignment.Sales);

-- 90. Which customers purchased more products than the average quantity purchased per customer?
WITH customer_quantities AS (
    SELECT c.customer_id, c.first_name, c.last_name, SUM(s.quantity_sold) AS total_quantity
    FROM assignment.Customers c
    JOIN assignment.Sales s ON c.customer_id = s.customer_id
    GROUP BY c.customer_id, c.first_name, c.last_name
)
SELECT * 
FROM customer_quantities
WHERE total_quantity > (SELECT AVG(total_quantity) FROM customer_quantities);


-- =====================================================
-- ADVANCED WINDOW + ANALYTICAL PROBLEMS (91-100)
-- =====================================================

-- 91. Which customers rank in the top 10% of spending?
WITH customer_spending AS (
    SELECT c.customer_id, c.first_name, c.last_name, SUM(s.total_amount) AS total_spent
    FROM assignment.Customers c
    JOIN assignment.Sales s ON c.customer_id = s.customer_id
    GROUP BY c.customer_id, c.first_name, c.last_name
),
ranked_customers AS (
    SELECT 
        customer_id, 
        first_name, 
        last_name, 
        total_spent,
        NTILE(10) OVER (ORDER BY total_spent DESC) AS spending_decile
    FROM customer_spending
)
SELECT * 
FROM ranked_customers
WHERE spending_decile = 1;

-- 92. Which products contribute to the top 50% of total revenue?
WITH product_revenue AS (
    SELECT p.product_id, p.product_name, SUM(s.total_amount) AS total_revenue
    FROM assignment.Products p
    JOIN assignment.Sales s ON p.product_id = s.product_id
    GROUP BY p.product_id, p.product_name
),
cumulative_revenue AS (
    SELECT 
        product_id, 
        product_name, 
        total_revenue,
        SUM(total_revenue) OVER (ORDER BY total_revenue DESC) AS running_total,
        SUM(total_revenue) OVER () AS grand_total
    FROM product_revenue
)
SELECT product_id, product_name, total_revenue
FROM cumulative_revenue
WHERE running_total <= grand_total * 0.5;

-- 93. Which customers made purchases in consecutive months?
WITH monthly_purchases AS (
    SELECT DISTINCT 
        customer_id,
        DATE_TRUNC('month', sale_date) AS purchase_month
    FROM assignment.Sales
),
consecutive_check AS (
    SELECT 
        customer_id,
        purchase_month,
        LAG(purchase_month) OVER (PARTITION BY customer_id ORDER BY purchase_month) AS prev_month
    FROM monthly_purchases
)
SELECT DISTINCT c.customer_id, c.first_name, c.last_name
FROM consecutive_check cc
JOIN assignment.Customers c ON cc.customer_id = c.customer_id
WHERE cc.purchase_month = cc.prev_month + INTERVAL '1 month';

-- 94. Which products experienced the largest difference between stock quantity and total quantity sold?
WITH product_sold AS (
    SELECT product_id, SUM(quantity_sold) AS total_sold
    FROM assignment.Sales
    GROUP BY product_id
)
SELECT 
    p.product_id, 
    p.product_name, 
    i.stock_quantity, 
    COALESCE(ps.total_sold, 0) AS total_sold,
    i.stock_quantity - COALESCE(ps.total_sold, 0) AS stock_difference
FROM assignment.Products p
JOIN assignment.Inventory i ON p.product_id = i.product_id
LEFT JOIN product_sold ps ON p.product_id = ps.product_id
ORDER BY ABS(stock_difference) DESC
LIMIT 1;

-- 95. Which customers have spending above the average spending of their membership tier?
WITH tier_spending AS (
    SELECT 
        c.customer_id, 
        c.first_name, 
        c.last_name, 
        c.membership_status,
        SUM(s.total_amount) AS total_spent
    FROM assignment.Customers c
    JOIN assignment.Sales s ON c.customer_id = s.customer_id
    GROUP BY c.customer_id, c.first_name, c.last_name, c.membership_status
),
tier_averages AS (
    SELECT 
        membership_status,
        AVG(total_spent) AS avg_tier_spending
    FROM tier_spending
    GROUP BY membership_status
)
SELECT ts.customer_id, ts.first_name, ts.last_name, ts.membership_status, ts.total_spent
FROM tier_spending ts
JOIN tier_averages ta ON ts.membership_status = ta.membership_status
WHERE ts.total_spent > ta.avg_tier_spending;

-- 96. Which products have higher sales than the average sales within their category?
WITH product_category_sales AS (
    SELECT 
        p.product_id, 
        p.product_name, 
        p.category,
        SUM(s.total_amount) AS total_sales
    FROM assignment.Products p
    JOIN assignment.Sales s ON p.product_id = s.product_id
    GROUP BY p.product_id, p.product_name, p.category
),
category_averages AS (
    SELECT 
        category,
        AVG(total_sales) AS avg_category_sales
    FROM product_category_sales
    GROUP BY category
)
SELECT pcs.product_id, pcs.product_name, pcs.category, pcs.total_sales
FROM product_category_sales pcs
JOIN category_averages ca ON pcs.category = ca.category
WHERE pcs.total_sales > ca.avg_category_sales;

-- 97. Which customer made the largest single purchase relative to their total spending?
WITH customer_totals AS (
    SELECT customer_id, SUM(total_amount) AS total_spending
    FROM assignment.Sales
    GROUP BY customer_id
),
purchase_ratios AS (
    SELECT 
        s.customer_id,
        s.sale_id,
        s.total_amount,
        ct.total_spending,
        (s.total_amount / ct.total_spending) AS purchase_ratio
    FROM assignment.Sales s
    JOIN customer_totals ct ON s.customer_id = ct.customer_id
)
SELECT 
    c.customer_id, 
    c.first_name, 
    c.last_name, 
    pr.total_amount AS single_purchase,
    pr.total_spending,
    pr.purchase_ratio
FROM purchase_ratios pr
JOIN assignment.Customers c ON pr.customer_id = c.customer_id
ORDER BY pr.purchase_ratio DESC
LIMIT 1;

-- 98. Which products rank among the top 3 most sold products within each category?
WITH category_sales AS (
    SELECT 
        p.product_id,
        p.product_name,
        p.category,
        COUNT(s.sale_id) AS sales_count
    FROM assignment.Products p
    JOIN assignment.Sales s ON p.product_id = s.product_id
    GROUP BY p.product_id, p.product_name, p.category
),
ranked_products AS (
    SELECT 
        product_id,
        product_name,
        category,
        sales_count,
        RANK() OVER (PARTITION BY category ORDER BY sales_count DESC) AS category_rank
    FROM category_sales
)
SELECT * 
FROM ranked_products
WHERE category_rank <= 3;

-- 99. Which customers are tied for the highest total spending?
WITH customer_spending AS (
    SELECT c.customer_id, c.first_name, c.last_name, SUM(s.total_amount) AS total_spent
    FROM assignment.Customers c
    JOIN assignment.Sales s ON c.customer_id = s.customer_id
    GROUP BY c.customer_id, c.first_name, c.last_name
),
max_spending AS (
    SELECT MAX(total_spent) AS max_spent
    FROM customer_spending
)
SELECT cs.customer_id, cs.first_name, cs.last_name, cs.total_spent
FROM customer_spending cs, max_spending ms
WHERE cs.total_spent = ms.max_spent;

-- 100. Which products generated sales every year present in the dataset?
WITH sales_years AS (
    SELECT DISTINCT EXTRACT(YEAR FROM sale_date) AS sale_year
    FROM assignment.Sales
),
product_years AS (
    SELECT 
        p.product_id,
        p.product_name,
        EXTRACT(YEAR FROM s.sale_date) AS sale_year
    FROM assignment.Products p
    JOIN assignment.Sales s ON p.product_id = s.product_id
),
product_year_count AS (
    SELECT 
        product_id,
        product_name,
        COUNT(DISTINCT sale_year) AS years_with_sales
    FROM product_years
    GROUP BY product_id, product_name
),
total_years AS (
    SELECT COUNT(*) AS total_years_in_dataset
    FROM sales_years
)
SELECT pyc.product_id, pyc.product_name, pyc.years_with_sales
FROM product_year_count pyc, total_years ty
WHERE pyc.years_with_sales = ty.total_years_in_dataset;


