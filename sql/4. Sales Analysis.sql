-- 1. Total sales and profit by year
SELECT
	YEAR(order_date) AS year,
    ROUND(SUM(sales), 2) AS total_sales,
	ROUND(SUM(profit), 2) AS total_profit,
	ROUND(SUM(profit)/SUM(sales)*100, 2) AS profit_margin
FROM orders
GROUP BY year
ORDER BY year;
/* Shows yearly performance trends */

-- 2. Monthly sales trend (for the most recent year)
SELECT 
	MONTH(order_date) AS month,
    ROUND(SUM(sales), 2) AS monthly_sales
FROM orders
    WHERE YEAR(order_date) = (SELECT MAX(YEAR(order_date)) FROM orders)
GROUP BY 1
ORDER BY 1;
/* Reveals seasonality patterns */

-- 3. Top 10 products by sales
SELECT
	p.product_name product,
    ROUND(SUM(sales), 2) AS total_sales,
    COUNT(DISTINCT o.order_id) AS order_count
FROM products p
JOIN orders o
ON p.product_id = o.product_id
GROUP BY 1
ORDER BY 2 DESC
LIMIT 10;
/* Identifies best-selling products */
