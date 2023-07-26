Here are some examples of SQL queries that can be used in professional settings with my templates:

1. Data Retrieval:

Basic Query:
```sql
SELECT * FROM employees;
```
This query retrieves all columns from the "employees" table, showing information for all employees.

Filtered Query:
```sql
SELECT employee_id, first_name, last_name FROM employees WHERE department = 'Engineering';
```
This query retrieves specific columns (employee_id, first_name, and last_name) from the "employees" table, but only for employees working in the Engineering department.

Sorting and Limiting Results:
```sql
SELECT product_name, unit_price FROM products ORDER BY unit_price DESC LIMIT 10;
```
This query retrieves the product_name and unit_price columns from the "products" table, sorting the results in descending order of unit_price and limiting the output to the top 10 expensive products.

2. Data Aggregation:

```sql
SELECT department, COUNT(*) AS total_employees, AVG(salary) AS average_salary
FROM employees
GROUP BY department;
```
This query calculates the total number of employees and the average salary for each department in the "employees" table.

3. Data Modification:

Inserting Data:
```sql
INSERT INTO customers (customer_id, first_name, last_name, email)
VALUES (1001, 'John', 'Doe', 'john.doe@example.com');
```
This query inserts a new record into the "customers" table with specified values for customer_id, first_name, last_name, and email.

Updating Data:
```sql
UPDATE products
SET unit_price = unit_price * 1.1
WHERE category = 'Electronics';
```
This query updates the unit_price for all products in the "Electronics" category by increasing it by 10%.

Deleting Data:
```sql
DELETE FROM orders
WHERE order_date < '2023-01-01';
```
This query deletes all orders from the "orders" table with an order_date before January 1, 2023.

4. Joins:

```sql
SELECT customers.first_name, customers.last_name, orders.order_date
FROM customers
JOIN orders ON customers.customer_id = orders.customer_id;
```
This query combines data from the "customers" and "orders" tables based on the common customer_id, showing the first_name, last_name, and order_date for each customer who placed an order.

These examples cover a range of SQL queries used in professional settings, including data retrieval, aggregation, modification, and joining multiple tables.
SQL is a versatile language that allows you to manipulate and manage data effectively in a relational database, making it an essential skill for professionals working with data-driven applications and databases.
