-- Create a table to store information about employees
CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    age INT,
    department VARCHAR(50),
    salary DECIMAL(10, 2)
);

-- Insert some data into the employees table
INSERT INTO employees (employee_id, first_name, last_name, age, department, salary)
VALUES (1, 'John', 'Doe', 30, 'Engineering', 60000.00);

INSERT INTO employees (employee_id, first_name, last_name, age, department, salary)
VALUES (2, 'Jane', 'Smith', 28, 'Marketing', 55000.00);

INSERT INTO employees (employee_id, first_name, last_name, age, department, salary)
VALUES (3, 'Michael', 'Johnson', 35, 'Finance', 70000.00);

-- Query to retrieve all employees from the Engineering department
SELECT * FROM employees WHERE department = 'Engineering';

-- Query to calculate total employees and average salary by department
SELECT department, COUNT(*) AS total_employees, AVG(salary) AS average_salary
FROM employees
GROUP BY department;

-- Updating data: Increase salary for employees in the Engineering department by 10%
UPDATE employees
SET salary = salary * 1.10
WHERE department = 'Engineering';

-- Deleting data: Delete orders older than January 1, 2023
DELETE FROM orders
WHERE order_date < '2023-01-01';
