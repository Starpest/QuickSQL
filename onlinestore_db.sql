-- Create the database
CREATE DATABASE OnlineStore;

-- Use the database
USE OnlineStore;

-- Create the 'categories' table
CREATE TABLE categories (
    category_id INT PRIMARY KEY,
    category_name VARCHAR(50)
);

-- Insert sample data into the 'categories' table
INSERT INTO categories (category_id, category_name)
VALUES
    (1, 'Electronics'),
    (2, 'Clothing'),
    (3, 'Home & Kitchen');

-- Create the 'products' table
CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category_id INT,
    unit_price DECIMAL(10, 2),
    stock_quantity INT
);

-- Insert sample data into the 'products' table
INSERT INTO products (product_id, product_name, category_id, unit_price, stock_quantity)
VALUES
    (1, 'Smartphone', 1, 599.99, 50),
    (2, 'Laptop', 1, 999.99, 25),
    (3, 'T-Shirt', 2, 19.99, 100),
    (4, 'Jeans', 2, 49.99, 75),
    (5, 'Coffee Maker', 3, 39.99, 30),
    (6, 'Vacuum Cleaner', 3, 79.99, 20);

-- Create the 'customers' table
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    address VARCHAR(200),
    city VARCHAR(50),
    country VARCHAR(50)
);

-- Insert sample data into the 'customers' table
INSERT INTO customers (customer_id, first_name, last_name, email, address, city, country)
VALUES
    (1, 'John', 'Doe', 'john.doe@example.com', '123 Main St', 'New York', 'USA'),
    (2, 'Jane', 'Smith', 'jane.smith@example.com', '456 Park Ave', 'Los Angeles', 'USA'),
    (3, 'Michael', 'Johnson', 'michael.johnson@example.com', '789 Broadway', 'Chicago', 'USA');

-- Add foreign key constraint between 'products' and 'categories' tables
ALTER TABLE products
ADD CONSTRAINT fk_product_category
FOREIGN KEY (category_id)
REFERENCES categories (category_id);
