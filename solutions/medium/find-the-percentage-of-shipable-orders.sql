-- https://platform.stratascratch.com/coding/10090-find-the-percentage-of-shipable-orders

SELECT SUM(IF(c.address IS NULL, 0, 1))/COUNT(DISTINCT(o.id))*100 AS percent
FROM orders o
JOIN customers c
ON o.cust_id = c.id;