-- https://platform.stratascratch.com/coding/10077-income-by-title-and-gender

SELECT DISTINCT
    e.employee_title, 
    e.sex, 
    AVG(b.total_bonus+e.salary) OVER(PARTITION BY e.employee_title, e.sex) AS avg_total_comp
FROM
    (SELECT 
        worker_ref_id, 
        SUM(bonus) AS total_bonus
    FROM sf_bonus   
    GROUP BY worker_ref_id) AS b
LEFT JOIN sf_employee AS e
ON b.worker_ref_id = e.id;