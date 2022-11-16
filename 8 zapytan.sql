SELECT * FROM Customers WHERE Country="Germany"
SELECT * FROM Customers WHERE City="Berlin"
SELECT * FROM Customers WHERE City="Berlin" AND WHERE Country="Germany"
SELECT * FROM Customers WHERE City="Berlin" OR City="Munchen" AND Country="Germany"
SELECT * FROM Customers WHERE NOT Country="Germany" AND Country="USA"
SELECT * FROM Customers ORDER BY Country ASC
SELECT * FROM Customers ORDER BY Country DESC
SELECT * FROM Customers ORDER BY Country DESC, CustomerName ASC;


SELECT MIN(price) FROM products;
SELECT MAX(price) FROM products;
SELECT COUNT(unit) FROM products;
SELECT COUNT(customer_name),country FROM customers GROUP BY country;
SELECT COUNT(*),country FROM customers GROUP BY country;
SELECT COUNT(name),AVG(price) FROM products WHERE category_id="1";
SELECT SUM(price) FROM products WHERE category_id="2";
SELECT MAX(price) FROM products WHERE category_id="1" OR category_id="2";


SELECT * FROM products WHERE price BETWEEN 10 AND 20;
SELECT * FROM products WHERE price NOT BETWEEN 10 AND 20;
SELECT * FROM products WHERE category_id IN (1,2,3);
SELECT * FROM orders WHERE shipper_id IN (1,2,3);
SELECT * FROM products WHERE price BETWEEN 10 AND 15 AND supplier_id NOT IN (1,2,3,4);
SELECT * FROM orders WHERE time (order_date) BETWEEN 1996-07-01 AND 1996-07-31;
SELECT * FROM orders WHERE customer_id IN (SELECT customer_id FROM orders WHERE customer_id BETWEEN 77 AND 90);


SELECT * FROM customers JOIN orders ON orders.customers_id=customers.id
