-- https://platform.stratascratch.com/coding/9782-customer-revenue-in-march

SELECT cust_id, SUM(total_order_cost) AS revenue
FROM orders
WHERE MONTH(order_date) = 3 AND YEAR(order_date) = 2019
GROUP BY cust_id
ORDER BY revenue DESC;