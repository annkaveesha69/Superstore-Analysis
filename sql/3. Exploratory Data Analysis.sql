-- 1. Check the date range of orders
SELECT MIN(order_date) AS first_order, MAX(order_date) AS last_order
FROM orders;
/* This shows us the time period covered by our data */

-- 2. Count total orders, customers, and products
SELECT
	COUNT(DISTINCT order_id) AS total_orders,
    COUNT(DISTINCT customer_id) AS total_customers,
    COUNT(DISTINCT product_id) AS total_products
FROM orders;
/* Gives us an overview of data volume */

-- 3. Check for missing values
SELECT 
	SUM(CASE WHEN customer_id IS NULL THEN 1 ELSE 0 END) AS missing_customers,
    SUM(CASE WHEN product_id IS NULL THEN 1 ELSE 0 END) AS missing_products
FROM orders;
/* Important data quality check */
