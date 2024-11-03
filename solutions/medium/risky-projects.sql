-- https://platform.stratascratch.com/coding/10304-risky-projects

SELECT title, budget, 
CEILING(sc.total_salary_cost * TIMESTAMPDIFF(DAY, p.start_date, p.end_date)/365)
as e_cost FROM
    (SELECT p.id as project_id, SUM(e.salary) as total_salary_cost
    FROM linkedin_projects p 
    JOIN linkedin_emp_projects ep 
    ON p.id = ep.project_id
    JOIN linkedin_employees e
    ON ep.emp_id = e.id
    GROUP BY p.id) as sc
JOIN linkedin_projects p
ON sc.project_id = p.id
WHERE budget < CEILING(sc.total_salary_cost * TIMESTAMPDIFF(DAY, p.start_date, p.end_date)/365);