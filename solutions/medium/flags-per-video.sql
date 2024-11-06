-- https://platform.stratascratch.com/coding/2102-flags-per-video 

SELECT video_id, COUNT(DISTINCT CONCAT
(IFNULL(user_firstname, ''), ' ', IFNULL(user_lastname, ''))) AS num_unique_users
FROM user_flags
WHERE flag_id IS NOT NULL
GROUP BY video_id;