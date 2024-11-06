-- https://platform.stratascratch.com/coding/9894-employee-and-manager-salaries

SELECT e.first_name, e.salary
FROM employee e
JOIN employee m
ON e.manager_id = m.id
WHERE e.salary > m.salary;