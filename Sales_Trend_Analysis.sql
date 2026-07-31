SELECT 
	YEAR(o.order_purchase_timestamp) AS year,
    MONTH(o.order_purchase_timestamp) AS month,
    ROUND(SUM(p.payment_value),2) AS total_revenue,
    COUNT(DISTINCT o.order_id) AS order_volume
FROM orders o
JOIN order_payments p
ON o.order_id = p.order_id
GROUP BY
	YEAR(o.order_purchase_timestamp),
    MONTH(o.order_purchase_timestamp)
ORDER BY 
	year,
    month;
    
    
-- Revenue by Year
SELECT
	YEAR(o.order_purchase_timestamp) AS year,
    ROUND(SUM(p.payment_value),2) AS revenue
FROM orders o
JOIN order_payments p
ON o.order_id = p.order_id
GROUP BY YEAR(o.order_purchase_timestamp)
ORDER BY year;


-- Monthly Average Order Value
SELECT 
	YEAR(o.order_purchase_timestamp) AS year,
    MONTH(o.order_purchase_timestamp) AS month,
    ROUND(AVG(p.payment_value),2) AS average_order_value
FROM orders o
JOIN order_payments p
ON o.order_id = p.order_id
group by
	YEAR(o.order_purchase_timestamp),
	MONTH(o.order_purchase_timestamp)
ORDER BY 
	year,
    month;
    
    
-- Highest Revenue Month
SELECT
	YEAR(o.order_purchase_timestamp) AS year,
    MONTH(o.order_purchase_timestamp) AS month,
    ROUND(SUM(p.payment_value),2) AS total_revenue
FROM orders o
JOIN order_payments p
ON o.order_id=p.order_id
GROUP BY
    YEAR(o.order_purchase_timestamp),
    MONTH(o.order_purchase_timestamp)
ORDER BY total_revenue DESC
LIMIT 1;


-- Highest Order Volume Month
SELECT
    YEAR(o.order_purchase_timestamp) AS year,
    MONTH(o.order_purchase_timestamp) AS month,
    COUNT(DISTINCT o.order_id) AS total_orders
FROM orders o
GROUP BY
    YEAR(o.order_purchase_timestamp),
    MONTH(o.order_purchase_timestamp)
ORDER BY total_orders DESC
LIMIT 1;


-- Revenue for a Specific Year (Example: 2018)
SELECT
    MONTH(o.order_purchase_timestamp) AS month,
    ROUND(SUM(p.payment_value),2) AS revenue,
    COUNT(DISTINCT o.order_id) AS orders
FROM orders o
JOIN order_payments p
ON o.order_id=p.order_id
WHERE YEAR(o.order_purchase_timestamp)=2018
GROUP BY MONTH(o.order_purchase_timestamp)
ORDER BY month;