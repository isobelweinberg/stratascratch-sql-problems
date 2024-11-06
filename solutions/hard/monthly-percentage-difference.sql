-- https://platform.stratascratch.com/coding/10319-monthly-percentage-difference

WITH rev AS
    (SELECT DATE_FORMAT(created_at,'%Y-%m') AS month, SUM(value) AS monthly_revenue
    FROM sf_transactions
    GROUP BY month)
SELECT month, (monthly_revenue-LAG(monthly_revenue) OVER (ORDER BY(month)))/LAG(monthly_revenue) OVER (ORDER BY(month))*100 AS percent_change
FROM rev
ORDER by month;