--https://platform.stratascratch.com/coding/10176-bikes-last-used
--Easy

SELECT bike_number, MAX(end_time) AS last_use
FROM dc_bikeshare_q1_2012
GROUP BY bike_number
ORDER BY last_use DESC;