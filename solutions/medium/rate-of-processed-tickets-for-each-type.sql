-- https://platform.stratascratch.com/coding/9781-find-the-rate-of-processed-tickets-for-each-type

SELECT type, SUM(processed = TRUE)/COUNT(processed) AS rate_processed
FROM facebook_complaints
GROUP BY type;