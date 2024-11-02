-- https://platform.stratascratch.com/coding/10318-new-products

WITH subquery AS (
    SELECT year, company_name, COUNT(DISTINCT product_name) as num_cars
    FROM car_launches
    GROUP BY year, company_name)
SELECT s.company_name, (t.num_cars - s.num_cars)
FROM subquery s
JOIN subquery t
ON s.company_name = t.company_name
WHERE s.year = 2019 AND t.year = 2020;