-- Setting Up the Database -- 
CREATE DATABASE superstore_analysis;
USE superstore_analysis;

-- Create Tables --
-- Customers table
CREATE TABLE customers (
    customer_id VARCHAR(20) PRIMARY KEY,
    customer_name VARCHAR(100),
    segment VARCHAR(50),
    city VARCHAR(100),
    state VARCHAR(100),
    country VARCHAR(100),
    postal_code VARCHAR(20),
    region VARCHAR(50)
);

-- Products table
CREATE TABLE products (
    product_id VARCHAR(20) PRIMARY KEY,
    category VARCHAR(50),
    sub_category VARCHAR(50),
    product_name VARCHAR(200)
);

-- Orders table (main fact table)
CREATE TABLE orders (
    order_id VARCHAR(20) PRIMARY KEY,
    order_date DATE,
    ship_date DATE,
    ship_mode VARCHAR(50),
    customer_id VARCHAR(20),
    product_id VARCHAR(20),
    sales DECIMAL(10,2),
    quantity INT,
    discount DECIMAL(4,2),
    profit DECIMAL(10,2),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

-- Import Data --
-- customers Table -- 
LOAD DATA INFILE 'C:/customers.csv'
INTO TABLE superstore_analysis.customers
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

-- products Table --
-- Import data using "Table Data Import Wizard" --

-- orders table --
LOAD DATA INFILE 'C:/orders.csv'
INTO TABLE superstore_analysis.orders
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

-- Re-enable foreign key checks --
SET FOREIGN_KEY_CHECKS = 1;

