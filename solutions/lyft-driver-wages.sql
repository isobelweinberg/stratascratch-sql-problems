-- https://platform.stratascratch.com/coding/10003-lyft-driver-wages
-- easy

SELECT *
FROM lyft_drivers
WHERE yearly_salary <= 30000 OR yearly_salary >= 70000;