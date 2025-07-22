-- 1. Sales by category
SELECT 
	p.category,
    p.sub_category,
    ROUND(SUM(o.sales), 2) AS total_sales,
    ROUND(SUM(o.profit), 2) AS total_profit,
	ROUND(SUM(o.profit)/SUM(o.sales)*100, 2) AS profit_margin
FROM products p
JOIN orders o
ON p.product_id = o.product_id
GROUP BY 1,2
ORDER BY 1,3 DESC;
/* Shows which categories perform best */

-- 2. Discount analysis
SELECT
	discount_range,
    COUNT(*) AS order_count,
    ROUND(AVG(profit), 2) AS avg_profit
FROM (
	SELECT 
		CASE
			WHEN discount = 0 THEN 'no_discount'
            WHEN discount <= 0.2 THEN 'less_than_20%_discount'
            WHEN discount <= 0.4 THEN '20%_to_40%_discount'
            ELSE '40%_plus_discount'
		END AS discount_range,
        profit
	FROM orders
    ) AS discount_categories
    GROUP BY 1
    ORDER BY 1;
/* Examines how discounts affect profitability */
