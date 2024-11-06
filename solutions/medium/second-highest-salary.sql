-- https://platform.stratascratch.com/coding/9892-second-highest-salary

WITH salary_ranks AS (
    SELECT id, DENSE_RANK() OVER(ORDER BY salary DESC) AS salary_rank
    FROM employee)
SELECT e.salary
FROM employee e
JOIN salary_ranks r
ON e.id = r.id
WHERE r.salary_rank = 2;