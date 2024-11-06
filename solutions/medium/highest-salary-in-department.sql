-- https://platform.stratascratch.com/coding/9897-highest-salary-in-department/official-solution

WITH max_salaries AS(
    SELECT department, max(salary) AS max_sal
    FROM employee
    GROUP BY department)
SELECT e.first_name, e.department, e.salary
FROM employee e
JOIN max_salaries s
ON e.department = s.department AND e.salary = s.max_sal;