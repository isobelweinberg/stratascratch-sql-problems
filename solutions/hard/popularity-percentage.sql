-- https://platform.stratascratch.com/coding/10284-popularity-percentage

WITH u AS
(SELECT user1 FROM facebook_friends
UNION ALL
SELECT user2 FROM facebook_friends), 
num_users AS
(SELECT COUNT(DISTINCT u.user1) as total
FROM u)
SELECT u.user1 AS user, COUNT(*)/num_users.total*100 AS popularity_percentage
FROM u, num_users
GROUP BY user
ORDER BY user ASC;