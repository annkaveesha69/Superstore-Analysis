-- 1. Customer segmentation by order frequency
WITH t1 AS(
	SELECT 
		c.customer_id customer,
		c.segment segmentation,
		SUM(o.sales) AS total_sales,
		COUNT(DISTINCT o.order_id) AS orders_count
	FROM customers c
	JOIN orders o
	ON o.customer_id = c.customer_id
	GROUP BY 1, 2
)
SELECT 
    t1.segmentation,
    COUNT(customer) AS customer_count,
    ROUND(AVG(t1.orders_count), 1) AS avg_orders,
    ROUND(AVG(t1.total_sales), 2) AS avg_sales
FROM t1
GROUP BY 1;
/* Compares different customer segments */

-- 2. Geographic analysis (top states by sales)
SELECT
	c.state,
    ROUND(SUM(o.sales), 2) AS total_sales,
    ROUND(SUM(o.profit), 2) AS total_profit
FROM orders o
JOIN customers c
ON c.customer_id = o.customer_id
GROUP BY 1
ORDER BY 2 DESC
LIMIT 10;
/* Shows which states generate most revenue */
