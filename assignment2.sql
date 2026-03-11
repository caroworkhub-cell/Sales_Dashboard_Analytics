create schema assignment;

show search_path;
set search_path to assignment;

--CREATE Customers table
create table assignment.customers (
 customer_id INT primary key,
 first_name VARCHAR(50),
 last_name VARCHAR(50),
 email VARCHAR(100),
 phone_number VARCHAR(50),
 registration_date DATE,
 membership_status VARCHAR(10)
);

select * from customers;

--CREATE Products table
create table assignment.products (
 product_id INT primary key,
 product_name VARCHAR(100),
 category VARCHAR(50),
 price DECIMAL(10, 2),
 supplier VARCHAR(100),
 stock_quantity INT
 );
select * from products;

--CREATE Sales table
create table assignment.sales (
 sale_id INT primary key,
 customer_id INT,
 product_id INT,
 quantity_sold INT,
 sale_date DATE,
 total_amount DECIMAL(10, 2),
 foreign key (customer_id) references assignment.customers(customer_id),
 foreign key (product_id) references assignment.products(product_id)
 );
select * from sales;

--CREATE Inventory table
create table assignment.inventory (
 product_id INT primary key,
 stock_quantity INT,
 foreign key (product_id) references assignment.products(product_id)
 );
select * from inventory;

--INSERT data into assignment.customers table
insert into assignment.customers 
(customer_id, first_name, last_name, email, phone_number, registration_date, membership_status)
values 
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

select * from customers;

--INSTERT data into assignments.products table
insert into assignment.Products
(product_id, product_name, category, price, supplier, stock_quantity)
values
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

select * from assignment.products;

--INSERT data into assignments.sales table
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

--INSERT data into assignment.inventory table
insert into assignment.inventory 
(product_id, stock_quantity)
values
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

select * from assignment.customers;
select * from assignment.products;
select * from assignment.sales;
select * from assignment.inventory;

-- 1. Write a query to select all data from the `Customers` table.
select customer_id, first_name, last_name, email, phone_number, registration_date,membership_status from customers;
select * from assignment.customers;

-- 2. Write a query to select the total number of products from the `Products` table.
select count(product_id) from assignment.products;

-- 3. Write a query to select the product name and its price from the `Products` table where the price is greater than 500.
select product_name, price 
from assignment.products
where price > 500;

-- 4. Write a query to find the average price of all products from the `Products` table.
select avg(price) from assignment.products;

-- 5. Write a query to find the total sales amount from the `Sales` table.
select sum(sale_id) from assignment.sales;

-- 6. Write a query to select distinct membership statuses from the `Customers` table.
select distinct membership_status from assignment.customers;

-- 7. Write a query to concatenate first and last names of all customers and show the result as `full_name`.
select concat(first_name, ' ',last_name) from assignment.customers as full_name;

-- 8. Write a query to find all products in the `Products` table where the category is 'Electronics'.
select product_name from assignment.products 
where category = 'Electronics';

-- 9. Write a query to find the highest price from the `Products` table.
select max(price) from assignment.products;

-- 10. Write a query to count the number of sales for each product from the `Sales` table.
select product_id, count(sale_id) as NumberOfsales
from assignment.sales 
group by product_id;

-- 11. Write a query to find the total quantity sold for each product from the `Sales` table.
select product_id, sum(quantity_sold) as total_quantity
from assignment.sales 
group by product_id;

-- 12. Write a query to find the lowest price of products in the `Products` table.
select min(price) from assignment.products;

-- 13. Write a query to find customers who have purchased products with a price greater than 1000.
select distinct c.first_name, c.last_name, p.product_id, p.price from customers c
join sales s on c.customer_id = s.customer_id
join products p ON s.product_id = p.product_id
where p.price > 1000;

-- 14. Write a query to join the `Sales` and `Products` tables on product_id, and select the product name and total sales amount.
select p.product_name, SUM(s.quantity_sold * p.price) AS total_sales_amount
from products p
inner join sales s on p.product_id = s.product_id
group by p.product_name;

-- 15. Write a query to join the `Customers` and `Sales` tables and find the total amount spent by each customer.
select c.first_name, c.last_name, SUM(s.total_amount) AS total_customer_amount
from customers c
join sales s on c.customer_id = s.customer_id
group by c.first_name, c.last_name;

-- 16. Write a query to join the `Customers`, `Sales`, and `Products` tables, and show each customer's first and last name, product name, and quantity sold.
select c.first_name, c.last_name, p.product_name, s.quantity_sold
from customers c
join sales s on c.customer_id = s.customer_id
join products p on p.product_id = s.product_id;

-- 17. Write a query to perform a self-join on the `Customers` table and find all pairs of customers who have the same membership status.
select c1.first_name as customer1_firstname, c1.last_name as customer1_lastname, c2.first_name as customer2_firstname, c2.last_name as customer2_lastaname, c1.membership_status
from customers c1
join customers c2 on c1.membership_status = c2.membership_status
and c1.customer_id < c2.customer_id;

-- 18. Write a query to join the `Sales` and `Products` tables, and calculate the total number of sales for each product.
select p.product_name, SUM(s.quantity_sold) AS total_quantity_sold
from products p
join sales s on p.product_id = s.product_id
group by p.product_id, p.product_name;

-- 19. Write a query to find the products in the `Products` table where the stock quantity is less than 10.
select product_name, stock_quantity
from products
where stock_quantity < 10;

-- 20. Write a query to join the `Sales` table and the `Products` table, and find products with sales greater than 5.
select p.product_id, p.product_name, s.quantity_sold
from products p
join sales s on p.product_id = s.product_id
where s.quantity_sold > 5;

-- 21. Write a query to select customers who have purchased products that are either in the 'Electronics' or 'Appliances' category.
select distinct c.first_name, c.last_name, p.category
from customers c
join sales s on c.customer_id = s.customer_id
join products p on s.product_id = p.product_id
where p.category in ('Electronics', 'Appliances');

-- 22. Write a query to calculate the total sales amount per product and group the result by product name.
select product_name, sum(p.price * s.quantity_sold) as total_sales_amount
from products p
join sales s on s.product_id = p.product_id
group by p.product_name;

-- 23. Write a query to join the `Sales` table with the `Customers` table and select customers who made a purchase in the year 2023.
select c.first_name, c.last_name, s.sale_date
from customers c
join sales s on c.customer_id = s.customer_id
where extract(year from s.sale_date) = 2023;

-- 24. Write a query to find the customers with the highest total sales in 2023.
select c.first_name, c.last_name, sum(p.price * s.quantity_sold) as total_sales_amount
from customers c
join sales s on c.customer_id = s.customer_id
join products p on s.product_id = p.product_id
where extract (year from s.sale_date) = 2023
group by c.first_name, c.last_name
order by total_sales_amount desc
limit 5;

-- 25. Write a query to join the `Products` and `Sales` tables and select the most expensive product sold.
select p.product_name, p.price
from products p
join sales s on p.product_id = s.product_id
WHERE p.price = (select max (price) from products);

-- 26. Write a query to find the total number of customers who have purchased products worth more than 500.
select count(*)
from (
       select s.customer_id, sum(p.price * s.quantity_sold) as total_spent
       from sales s
       join products p on s.product_id = p.product_id
       group by s.customer_id
       having sum(p.price * s.quantity_sold) > 500
 ) as high_value_customers;

-- 27. Write a query to join the `Products`, `Sales`, and `Customers` tables and find the total number of sales made by customers who are in the 'Gold' membership tier.
select count(*) AS total_sales
from sales s
join customers c ON s.customer_id = c.customer_id
join products p ON s.product_id = p.product_id
where c.membership_status = 'Gold';

-- 28. Write a query to join the `Products` and `Inventory` tables and find all products that have low stock (less than 10).
select p.product_name
from products p
join inventory i on p.product_id = i.product_id
where i.stock_quantity < 10;

-- 29. Write a query to find customers who have purchased more than 5 products and show the total quantity of products they have bought.
select c.first_name, c.last_name, sum(s.quantity_sold) as total_products_bought
from customers c
join sales s on c.customer_id = s.customer_id
group by c.first_name, c.last_name
having sum(quantity_sold) > 5;

-- 30. Write a query to find the average quantity sold per product.
select p.product_name, avg(quantity_sold) as average_quantity_per_product
from sales s 
join products p on p.product_id = s.product_id
group by product_name;

-- 31. Write a query to find the number of sales made in the month of December 2023.
select count(*) as total_dec_sales
from sales
where extract(year from sale_date) = 2023
and extract(month from sale_date) = 12;

-- 32. Write a query to find the total amount spent by each customer in 2023 and list the customers in descending order.
select c.first_name, c.last_name, sum(p.price * s.quantity_sold) as total_amount_spent
from customers c
join sales s on c.customer_id = s.customer_id
join products p on p.product_id = s.product_id
where extract(year from s.sale_date) = 2023
group by c.first_name, c.last_name
order by total_amount_spent desc;

-- 33. Write a query to find all products that have been sold but have less than 5 units left in stock.
select p.product_name, i.stock_quantity
from products p
join sales s on p.product_id = s.product_id
join inventory i on p.product_id = i.product_id
where s.quantity_sold > 0 and i.stock_quantity < 5;

-- 34. Write a query to find the total sales for each product and order the result by the highest sales.
select p.product_name, sum(s.quantity_sold) as total_product_sales
from sales s
join products p on p.product_id = s.product_id
group by p.product_name 
order by total_product_sales desc;

-- 35. Write a query to find all customers who bought products within 7 days of their registration date.
select distinct c.first_name, c.last_name
from customers c
join sales s on c.customer_id = s.customer_id
where s.sale_date between c.registration_date and c.registration_date + interval '7 days';

-- 36. Write a query to join the `Sales` table with the `Products` table and filter the results by products priced between 100 and 500.
select p.product_name, p.price
from products p
join sales s on s.product_id = p.product_id
where p.price between 100 and 500;

-- 37. Write a query to find the most frequent customer who made purchases from the `Sales` table.
select c.first_name, c.last_name, count(*) as num_purchases
from customers c
join sales s on c.customer_id = s.customer_id
group by c.first_name, c.last_name
order by num_purchases
limit 1;

-- 38. Write a query to find the total quantity of products sold per customer.
select c.customer_id, c.first_name, c.last_name, sum(s.quantity_sold) as total_quantity_per_customer
from customers c
join sales s on c.customer_id = s.customer_id
group by c.customer_id, c.first_name, c.last_name;

-- 39. Write a query to find the products with the highest stock and lowest stock, and display them together in a single result set.
select p.product_name, i.stock_quantity,
      max(i.stock_quantity) over() as highest_stock,
      min(i.stock_quantity) over() as lowest_stock
from products p
join inventory i on p.product_id = i.product_id;

-- 40. Write a query to find products whose names contain the word 'Phone' and their total sales.
select p.product_name, sum(s.quantity_sold) as total_sales
from products p
join sales s on p.product_id = s.product_id
where p.product_name ilike '%Phone%'
group by p.product_name
order by total_sales desc;

-- 41. Write a query to perform an `INNER JOIN` between `Customers` and `Sales`, then display the total sales amount and the product names for customers in the 'Gold' membership status.
select c.first_name, c.last_name, p.product_name, sum(p.price * s.quantity_sold) as total_sales
from customers c
inner join sales s on c.customer_id = s.customer_id
join products p on p.product_id = s.product_id
where c.membership_status = 'Gold'
group by c.first_name, c.last_name, p.product_name
order by total_sales desc;

-- 42. Write a query to find the total sales of products by category.
select p.category, sum(s.quantity_sold) as total_sales
from products p
join sales s on p.product_id = s.product_id
group by p.category;

-- 43. Write a query to join the `Products` table with the `Sales` table, and calculate the total sales for each product, grouped by month and year.
select p.product_name,
extract(year from s.sale_date) as sale_year,
extract(month from s.sale_date) as sale_month,
sum(s.quantity_sold) as total_sales
from products p
join sales s on p.product_id = s.product_id
group by p.product_name, sale_year, sale_month
order by sale_year, sale_month, p.product_name;

-- 44. Write a query to join the `Sales` and `Inventory` tables and find products that have been sold but still have stock remaining.
select p.product_name, i.stock_quantity
from products p
join sales s on p.product_id = s.product_id
join inventory i on p.product_id = i.product_id
where s.quantity_sold > 0 and i.stock_quantity > 0;

-- 45. Write a query to find the top 5 customers who have made the highest purchases.
select c.first_name, c.last_name, sum(s.total_amount) as total_purchases
from customers c 
join sales s on c.customer_id = s.customer_id
group by c.first_name, c.last_name
order by total_purchases desc
limit 5;

-- 46. Write a query to calculate the total number of unique products sold in 2023.
select count(distinct p.product_id) as unique_products_2023
from products p
join sales s on p.product_id = s.product_id
where extract (year from s.sale_date) = 2023; 

-- 47. Write a query to find the products that have not been sold in the last 6 months.
select product_name
from products p
left join sales s on p.product_id = s.product_id
                  and s.sale_date >= current_date - interval '6 months'
where s.sale_date is null;

-- 48. Write a query to select the products with a price range between $200 and $800, and find the total quantity sold for each.
select p.product_name, p.price, sum(s.quantity_sold) as total_quantity
from products p
join sales s on p.product_id = s.product_id
where p.price between 200 and 800
group by p.product_name, p.price
order by total_quantity desc;

-- 49. Write a query to find the customers who spent the most money in the year 2023.
select c.first_name, c.last_name, sum(s.total_amount) as total_spent
from customers c
join sales s on c.customer_id = s.customer_id
where extract(year from s.sale_date) = 2023
group by c.first_name, c.last_name
order by total_spent desc
limit 5;

-- 50. Write a query to select the products that have been sold more than 100 times and have a price greater than 200.
select p.product_name, p.price, sum(s.quantity_sold) as sold_items
from products p
join sales s on p.product_id = s.product_id 
where price > 200
group by p.product_name, p.price
having sum(s.quantity_sold) > 100
order by sold_items desc;

-- =====================================================
-- PART 2
-- =====================================================
-- =====================================================
-- SUBQUERY QUESTIONS
-- =====================================================
 
-- 51. Which customers have spent more than the average spending of all customers?
select c.first_name, c.last_name, SUM(s.total_amount) as total_spent
from customers c
join sales s on c.customer_id = s.customer_id
group by c.customer_id, c.first_name, c.last_name
having SUM(s.total_amount) >
(
select AVG(total_spent)
from (
 select SUM(total_amount) as total_spent
 from sales
 group by customer_id) as customer_totals
 );

-- 52. Which products are priced higher than the average price of all products?
select product_name, price
from products
where price > (
 select AVG(price)
 from products
);

-- 53. Which customers have never made a purchase?
select first_name, last_name
from customers 
where customer_id not in(
 select customer_id
 from sales
);

-- 54. Which products have never been sold?
select product_name
from products
where product_id not in(
 select product_id
 from sales
);

-- 55. Which customer made the single most expensive purchase?
select c.first_name, c.last_name
from customers c
join sales s on c.customer_id = s.customer_id
join products p on s.product_id = p.product_id
where price = (
 select MAX(price)
 from products
 );

-- 56. Which products have total sales greater than the average total sales across all products?
select product_name
from products
where product_id in (
 select product_id
 from sales
 group by product_id
 having SUM(quantity_sold) > 
 (
  select AVG(product_total)
  from(
  select SUM(quantity_sold) as product_total
  from sales
  group by product_id) as avg_sales
  )
  );

-- 57. Which customers registered earlier than the average registration date?
select first_name, last_name, registration_date
from customers
where registration_date < (
 select TO_TIMESTAMP(AVG(extract(epoch from registration_date)))::date
 from customers
 );

-- 58. Which products have a price higher than the average price within their own category?
select product_name, category, price
from products p
where price > (
select AVG(price)
from products
where category = p.category
);

-- 59. Which customers have spent more than the customer with ID = 10?
select c.first_name, c.last_name, SUM(s.total_amount) as total_spent
from customers c
join sales s on c.customer_id = s.customer_id
group by c.customer_id, c.first_name, c.last_name
having SUM(s.total_amount) > (
 select SUM(total_amount)
 from sales
 where customer_id = 10
 );

-- 60. Which products have total quantity sold greater than the overall average quantity sold?
select p.product_name, SUM(s.quantity_sold) as total_quantity_sold
from products p
join sales s on p.product_id = s.product_id
group by p.product_id, p.product_name
having SUM(s.quantity_sold) > (
 select AVG(total_per_product)
 from(
  select SUM(quantity_sold) as total_per_product
  from sales
  group by product_id) as product_totals
);

-- =====================================================
-- COMMON TABLE EXPRESSIONS (CTEs)
-- =====================================================

-- 61. Create an intermediate result that calculates the total amount spent by each customer,
--     then determine which customers are the top 5 highest spenders.
with customer_total as (
select customer_id, SUM(total_amount) as total_spent
from sales
group by customer_id
)
select c.first_name, c.last_name, ct.total_spent
from customer_total ct
join customers c on c.customer_id = ct.customer_id
order by ct.total_spent desc
limit 5;

-- 62. Create an intermediate result that calculates total quantity sold per product,
--     then determine which products are the top 3 most sold.
with total_quantity as (
select product_id, SUM(quantity_sold) as total_quantity_sold
from sales
group by product_id
)
select p.product_name, tq.total_quantity_sold
from total_quantity tq
join products p on p.product_id = tq.product_id 
order by tq.total_quantity_sold desc
limit 3;

-- 63. Create an intermediate result showing total sales per product category,
--     then determine which category generates the highest revenue.
with total_sales as (
select p.category, SUM(s.quantity_sold * p.price) as total_revenue
from sales s
join products p on s.product_id = p.product_id
group by p.category
)
select * from total_sales 
order by total_revenue desc
limit 1;

-- 64. Create an intermediate result that calculates the number of purchases per customer,
--     then identify customers who purchased more than twice.
with customer_purchase as(
select c.customer_id, c.first_name, c.last_name, SUM(s.quantity_sold) as total_purchases
from sales s
join customers c on c.customer_id = s.customer_id
group by c.customer_id, c.first_name, c.last_name
)
select * from customer_purchase 
where total_purchases > 2;

-- 65. Create an intermediate result that calculates the total quantity sold per product,
--     then determine which products sold more than the average quantity sold.
with product_sales as (
 select p.product_id, p.product_name, SUM(s.quantity_sold) as total_quantity
 from sales s
 join products p on p.product_id = s.product_id
 group by p.product_id, p.product_name
)
  select * from product_sales
  where total_quantity > (
    select AVG(total_quantity)
    from product_sales);

-- 66. Create an intermediate result that calculates total spending per customer,
--     then determine which customers spent more than the average spending.
with customer_spending as (
 select c.customer_id, c.first_name, c.last_name, SUM(s.total_amount) as total_amount
 from sales s
 join customers c on c.customer_id = s.customer_id
 group by c.customer_id, c.first_name, c.last_name
 )
 select * from customer_spending 
 where total_amount > (
  select AVG(total_amount)
  from customer_spending)
  order by total_amount desc;

-- 67. Create an intermediate result that calculates total revenue per product,
--     then list the products ordered from highest revenue to lowest.
with product_revenue as (
 select p.product_id, p.product_name, SUM(s.quantity_sold * p.price) as total_revenue
 from sales s
 join products p on p.product_id = s.product_id
 group by p.product_id, p.product_name
 )
 select * from product_revenue 
 order by total_revenue desc;

-- 68. Create an intermediate result showing monthly sales totals,
--     then determine which month had the highest revenue.
with monthly_sales as(
 select extract(month from s.sale_date) as month_number, SUM(s.quantity_sold * p.price) as total_revenue
 from sales s
 join products p on p.product_id = s.product_id
 group by month_number
 )
select * from monthly_sales
order by total_revenue desc
limit 1;

-- 69. Create an intermediate result that calculates the number of sales per product,
--     then determine which products were purchased by more than three customers.
with product_sales as (
 select p.product_id, p.product_name, COUNT(distinct s.customer_id) as customer_count
 from sales s
 join products p on p.product_id = s.product_id
 group by p.product_id, p.product_name
 )
 select * from product_sales 
 where customer_count > 3;
 
-- 70. Create an intermediate result showing total quantity sold per product,
--     then identify products that sold less than the average quantity sold.
with product_quantity as (
select p.product_id, p.product_name, SUM(s.quantity_sold) as total_quantity
from sales s
join products p on p.product_id = s.product_id
group by p.product_id, p.product_name
)
select * from product_quantity 
where total_quantity < (
select avg(total_quantity)
from product_quantity);

-- =====================================================
-- WINDOW FUNCTION QUESTIONS
-- =====================================================

-- 71. Rank customers based on the total amount they have spent.
select c.first_name, c.last_name, SUM(s.total_amount) as total_spent,
 rank() over (order by SUM(s.total_amount) desc) as customer_rank
from customers c
join sales s on c.customer_id = s.customer_id
group by c.customer_id, c.first_name, c.last_name;

-- 72. Rank products based on total quantity sold.
select p.product_name, SUM(s.quantity_sold) as total_quantity_sold,
 rank() over (order by SUM(s.quantity_sold) desc) as product_rank
from products p
join sales s on p.product_id = s.product_id
group by p.product_id, p.product_name;

-- 73. Identify the 3rd highest spending customer.
select * from(
 select c.first_name, c.last_name, SUM(s.total_amount) as total_spent,
 rank() over (order by SUM(s.total_amount) desc) as customer_rank
from customers c 
join sales s on c.customer_id = s.customer_id
group by c.customer_id, c.first_name, c.last_name
) ranked_customers
where customer_rank = 3;

-- 74. Identify the 2nd most expensive product.
 select * from(
  select p.product_name, p.price,
    rank() over (order by p.price desc) as price_rank
  from products p
 ) ranked_prices
 where price_rank = 2; 
 
-- 75. Show the ranking of products within each category based on price.
select p.product_name, p.category, p.price,
  rank() over (partition by p.category
                  order by p.price desc) as price_rank
  from products p;

-- 76. Show the ranking of customers based on the number of purchases they made.
select c.customer_id, c.first_name, c.last_name, SUM(s.quantity_sold) as total_purchases,
 rank() over (order by SUM(s.quantity_sold) desc) as customer_rank
 from customers c
 join sales s on c.customer_id = s.customer_id
 group by c.customer_id, c.first_name, c.last_name;

-- 77. Show the running total of sales amounts ordered by sale_date.
select sale_date, total_amount, SUM(total_amount) over (order by sale_date) as running_total
from sales;

-- 78. Show the previous sale amount for each sale ordered by sale_date.
select  sale_id, total_amount, LAG(total_amount) over (order by sale_date) as previous_sale_amount
from sales;

-- 79. Show the next sale amount for each sale ordered by sale_date.
select  sale_id, total_amount, LEAD(total_amount) over (order by sale_date) as previous_sale_amount
from sales;

-- 80. Divide customers into 4 groups based on total spending.
with customer_totals as (
 select c.customer_id, SUM(s.total_amount) as total_customer_spending
 from sales s
 join customers c on c.customer_id = s.customer_id
 group by c.customer_id
 )
 select customer_id, total_customer_spending,
 NTILE(4) over(order by total_customer_spending desc) as spending_quartile
 from customer_totals
 order by total_customer_spending desc;

-- =====================================================
-- ADVANCED ANALYTICAL QUESTIONS
-- =====================================================

-- 81. Which customers bought products in more than one category?
select c.first_name, c.last_name, COUNT(distinct p.category) as categories_bought
from customers c
join sales s on c.customer_id = s.customer_id
join products p on p.product_id = s.product_id
group by c.customer_id, c.first_name, c.last_name
having COUNT(distinct p.category) > 1;

-- 82. Which customers purchased products within 7 days of registering?
select c.first_name, c.last_name, c.registration_date, s.sale_date
from customers c
join sales s on c.customer_id = s.customer_id
where s.sale_date between c.registration_date and c.registration_date + interval '7 days';

-- 83. Which products have lower stock remaining than the average stock quantity?
select p.product_name, i.stock_quantity
from products p
join inventory i on p.product_id = i.product_id
where i.stock_quantity < (
 select AVG(stock_quantity)
 from inventory);

-- 84. Which customers purchased the same product more than once?
select c.first_name, c.last_name, p.product_name, COUNT(*) as purchase_count
from customers c
join sales s on  c.customer_id = s.customer_id
join products p on p.product_id = s.product_id
group by c.customer_id, c.first_name, c.last_name, p.product_name
having count(*) > 1;

-- 85. Which product categories generated the highest total revenue?
select p.category, SUM(s.quantity_sold * p.price) as total_revenue
from products p
join sales s on p.product_id = s.product_id
group by p.category
order by total_revenue desc
limit 1;

-- 86. Which products are among the top 3 most sold products?
select p.product_id, p.product_name, sum(s.quantity_sold) as total_product_sale
from products p
join sales s on p.product_id = s.product_id
group by p.product_id, p.product_name
order by total_product_sale desc
limit 3;

-- 87. Which customers purchased the most expensive product?
 select distinct c.first_name, c.last_name
 from customers c
 join sales s on c.customer_id = s.customer_id
 join products p on p.product_id = s.product_id
 where p.price = (
  select MAX(price)
  from products);

-- 88. Which products were purchased by the highest number of unique customers?
select p.product_name, COUNT(distinct s.customer_id) as unique_customers
from products p
join sales s on p.product_id = s.product_id
group by p.product_name
order by unique_customers desc
limit 1;

-- 89. Which customers made purchases above the average sale amount?
select distinct c.first_name, c.last_name
 from customers c
 join sales s on c.customer_id = s.customer_id
 where s.total_amount > (
  select AVG(total_amount)
  from sales);

-- 90. Which customers purchased more products than the average quantity purchased per customer?
select c.customer_id, c.first_name, c.last_name, SUM(s.quantity_sold) as total_quantity
from customers c
join sales s on c.customer_id = s.customer_id
group by c.customer_id, c.first_name, c.last_name
having SUM(s.quantity_sold) > (
 select AVG(total_quantity)
  from (
  select SUM(quantity_sold) as total_quantity
  from sales
  group by customer_id
  ) avg_customer_quantity);

-- =====================================================
-- ADVANCED WINDOW + ANALYTICAL PROBLEMS
-- =====================================================

-- 91. Which customers rank in the top 10% of spending?
select customer_id, first_name, last_name
from (
    select
        c.customer_id, c.first_name, c.last_name, 
        SUM(s.total_amount) as total_spent,
        NTILE(10) OVER (ORDER BY SUM(s.total_amount) desc) as percentile_rank
    from customers c
    join sales s on c.customer_id = s.customer_id
    group by c.customer_id, c.first_name, c.last_name
) as ranked_customers
where percentile_rank = 1;

-- 92. Which products contribute to the top 50% of total revenue?
select product_id, product_name
from (
    select
       p.product_id, p.product_name,
        SUM(s.quantity_sold * p.price) as total_revenue,
        SUM(SUM(s.quantity_sold * p.price)) OVER (ORDER BY SUM(s.quantity_sold * p.price) desc) 
            / SUM(SUM(s.quantity_sold * p.price)) OVER () AS cumulative_revenue_ratio
    from products p
    join sales s on p.product_id = s.product_id
    group by p.product_id, p.product_name
) as ranked_produtcs
where cumulative_revenue_ratio <= 0.5;

-- 93. Which customers made purchases in consecutive months?
select distinct c.customer_id, c.first_name, c.last_name
from(
 select s.customer_id, DATE_TRUNC('month', s.sale_date) as sale_month,
 LAG(DATE_TRUNC('month', s.sale_date)) over (partition by s.customer_id order by s.sale_date) as previous_month
 from sales s
) monthly_sales
join customers c on c.customer_id = monthly_sales.customer_id 
where sale_month = previous_month + interval '1 month';

-- 94. Which products experienced the largest difference between stock quantity and total quantity sold?
select p.product_id, p.product_name, i.stock_quantity,
    SUM(s.quantity_sold) AS total_sold,
    ABS(i.stock_quantity - SUM(s.quantity_sold)) AS quantity_difference
from products p
join sales s on p.product_id = s.product_id
join inventory i on p.product_id = i.product_id
group by p.product_id, p.product_name, i.stock_quantity
order by quantity_difference desc
limit 1;

-- 95. Which customers have spending above the average spending of their membership tier?
select c.customer_id, c.first_name, c.last_name, c.membership_status, SUM(s.total_amount) as total_spending
from customers c
join sales s on c.customer_id = s.customer_id
group by c.customer_id, c.first_name, c.last_name, c.membership_status
having SUM(s.total_amount) > (
 select AVG(customer_total)
  from (
  select c2.customer_id, c2.membership_status, SUM(s2.total_amount) as customer_total
  from customers c2
  join sales s2 on c2.customer_id = s2.customer_id
  group by c2.customer_id, c2.membership_status
  ) tier_totals
  where tier_totals.membership_status = c.membership_status
  );

-- 96. Which products have higher sales than the average sales within their category?
select p.product_id, p.product_name, p.category, SUM(s.quantity_sold) as total_sales
from products p
join sales s on p.product_id = s.product_id
group by p.product_id, p.product_name, p.category
having SUM(s.quantity_sold) > (
 select AVG(product_total)
 from(
  select p2.product_id, p2.category, SUM(s2.quantity_sold) as product_total
  from products p2
  join sales s2 on p2.product_id = s2.product_id
  group by p2.product_id, p2.category
  ) category_totals
  where category_totals.category = p.category
  );

-- 97. Which customer made the largest single purchase relative to their total spending?
select *
from (
    select c.customer_id, c.first_name, c.last_name, s.total_amount AS single_purchase,
        SUM(s.total_amount) OVER (PARTITION BY c.customer_id) AS total_spending,
        s.total_amount * 1.0 / SUM(s.total_amount) OVER (PARTITION BY c.customer_id) AS purchase_ratio
    from customers c
    join sales s on c.customer_id = s.customer_id
) purchase_analysis
order by  purchase_ratio desc
limit 1;

-- 98. Which products rank among the top 3 most sold products within each category?
select *
from (
    select p.product_id, p.product_name, p.category,
        SUM(s.quantity_sold) as total_sales,
        RANK() OVER (PARTITION BY p.category ORDER BY SUM(s.quantity_sold) desc
        ) AS product_rank
    from products p
    join sales s on p.product_id = s.product_id
    group by p.product_id, p.product_name, p.category
) ranked_products
WHERE product_rank <= 3;

-- 99. Which customers are tied for the highest total spending?
select c.customer_id, c.first_name, c.last_name, SUM(s.total_amount) AS total_spent
from customers c
join sales s on c.customer_id = s.customer_id
group by c.customer_id, c.first_name, c.last_name
having SUM(s.total_amount) = (
    select MAX(customer_total)
    from (
        select SUM(s2.total_amount) AS customer_total
        from customers c2
        join sales s2 ON c2.customer_id = s2.customer_id
        group by c2.customer_id
    ) max_totals
);

-- 100. Which products generated sales every year present in the dataset?
with years_in_data as (
    select distinct  EXTRACT(YEAR FROM sale_date) as sale_year
    from sales
),
product_years as (
    select p.product_id, p.product_name, count(DISTINCT EXTRACT(YEAR FROM s.sale_date)) as years_sold
    from products p
    join sales s ON p.product_id = s.product_id
    group by p.product_id, p.product_name
)
select product_id, product_name
from product_years
where years_sold = (select count(*) from years_in_data);


