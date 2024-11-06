-- https://platform.stratascratch.com/coding/10046-top-5-states-with-5-star-businesses/official-solutions

WITH s AS
    (SELECT state, COUNT(*) AS num_5star
    FROM yelp_business
    WHERE stars = 5
    GROUP BY state
    ORDER BY num_5star DESC),
ranks AS
    (SELECT *, RANK() OVER(ORDER BY num_5star DESC) AS r
    FROM s)
SELECT state, num_5star
FROM ranks
WHERE r <= 5
ORDER BY r ASC, state ASC;