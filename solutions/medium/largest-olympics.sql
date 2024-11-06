-- https://platform.stratascratch.com/coding/9942-largest-olympics

SELECT games, COUNT(DISTINCT ID) AS num_athletes
FROM olympics_athletes_events
GROUP BY games
ORDER BY num_athletes DESC
LIMIT 1;