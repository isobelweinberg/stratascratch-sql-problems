-- https://platform.stratascratch.com/coding/10061-popularity-of-hack
-- easy

SELECT e.location, AVG(s.popularity)
FROM facebook_employees e
JOIN facebook_hack_survey s
ON e.id = s.employee_id
GROUP BY e.location;