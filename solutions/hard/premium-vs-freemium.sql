-- https://platform.stratascratch.com/coding/10300-premium-vs-freemium

WITH s AS
    (SELECT d.date, a.paying_customer, SUM(d.downloads) AS total_downloads
    FROM ms_user_dimension u
    JOIN ms_acc_dimension a
    ON u.acc_id = a.acc_id
    JOIN ms_download_facts d
    ON u.user_id = d.user_id
    GROUP BY date, paying_customer)
SELECT date, 
    SUM(CASE WHEN paying_customer = 'no' THEN total_downloads ELSE 0 END) AS non_paying_customer_downloads,
    SUM(CASE WHEN paying_customer = 'yes' THEN total_downloads ELSE 0 END) AS paying_customer_downloads
FROM s
GROUP BY date
HAVING non_paying_customer_downloads > paying_customer_downloads
ORDER BY date ASC;
