# https://platform.stratascratch.com/coding/10363-weekly-orders-report?code_type=3
# easy

SELECT week, SUM(quantity) AS quantity
FROM orders_analysis
WHERE week < '2023-05-01'
GROUP BY week;