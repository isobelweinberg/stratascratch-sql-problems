-- https://platform.stratascratch.com/coding/10299-finding-updated-records
-- easy

SELECT id, first_name, last_name, department_id, MAX(salary) AS current_salary
FROM  ms_employee_salary
GROUP BY id
ORDER BY id ASC;