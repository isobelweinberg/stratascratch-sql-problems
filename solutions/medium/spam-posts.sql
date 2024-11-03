-- https://platform.stratascratch.com/coding/10134-spam-posts

SELECT s.post_date, (SUM(s.isspam)/COUNT(s.post_id))*100 AS percentage_spam
FROM
(SELECT p.post_date, p.post_id, IF(p.post_keywords LIKE '%spam%', 1, 0) AS isspam
FROM facebook_post_views pv
LEFT JOIN facebook_posts p 
ON p.post_id = pv.post_id) AS s
GROUP BY post_date;