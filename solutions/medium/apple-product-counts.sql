-- https://platform.stratascratch.com/coding/10141-apple-product-counts

SELECT sub.language,
COUNT(DISTINCT
    CASE 
    WHEN sub.apple = 1 THEN sub.user_id
    ELSE Null
END) AS num_apple_users,
COUNT(DISTINCT sub.user_id) AS num_total_user
FROM (SELECT u.language, e.user_id, 
CASE 
    WHEN e.device = 'iphone 5s' THEN 1
    WHEN e.device = 'macbook pro' THEN 1
    WHEN e.device = 'ipad air' THEN 1
    ELSE 0
END AS apple
FROM playbook_events e
JOIN playbook_users u
ON e.user_id = u.user_id) as sub
GROUP BY sub.language
ORDER BY num_total_user DESC;
