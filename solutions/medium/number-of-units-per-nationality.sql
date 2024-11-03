-- https://platform.stratascratch.com/coding/10156-number-of-units-per-nationality

SELECT h.nationality, COUNT(DISTINCT(unit_id)) as num
FROM airbnb_hosts as h
JOIN airbnb_units as u
ON h.host_id = u.host_id
WHERE h.age <30 AND u.unit_type = 'Apartment'
GROUP BY h.nationality
ORDER BY num DESC;