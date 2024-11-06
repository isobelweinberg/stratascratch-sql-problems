-- https://platform.stratascratch.com/coding/9728-inspections-that-resulted-in-violations/official-solution

SELECT YEAR(inspection_date) AS year, SUM(violation_id IS NOT NULL) as num_violations
FROM sf_restaurant_health_violations
WHERE business_name = 'Roxanne Cafe'
GROUP BY YEAR(inspection_date)
ORDER BY num_violations ASC;