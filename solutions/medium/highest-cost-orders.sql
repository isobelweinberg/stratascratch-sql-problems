-- https://platform.stratascratch.com/coding/9915-highest-cost-orders

SELECT c.first_name, SUM(total_order_cost) AS daily_spend, o.order_date
FROM orders o
JOIN customers c
ON c.id = o.cust_id
GROUP BY o.order_date, o.cust_id
ORDER BY daily_spend DESC
LIMIT 1;