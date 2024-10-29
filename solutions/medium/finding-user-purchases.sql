-- https://platform.stratascratch.com/coding/10322-finding-user-purchases

SELECT DISTINCT t.user_id 
FROM
(SELECT a.user_id, DATEDIFF(b.created_at, a.created_at) AS time_diff
FROM amazon_transactions a
JOIN amazon_transactions b
ON a.user_id = b.user_id
AND a.id <> b.id) as t
WHERE time_diff >= 0 AND time_diff <= 7;