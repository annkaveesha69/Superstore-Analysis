-- Import Data --
-- customers Table -- 
LOAD DATA INFILE 'C:/customers.csv'
INTO TABLE superstore_analysis.customers
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

-- products Table --
/* Imported data using "Table Data Import Wizard" */

-- orders table --
LOAD DATA INFILE 'C:/orders.csv'
INTO TABLE superstore_analysis.orders
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

-- Re-enable foreign key checks --
SET FOREIGN_KEY_CHECKS = 1;
