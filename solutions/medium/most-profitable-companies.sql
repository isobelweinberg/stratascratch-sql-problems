-- https://platform.stratascratch.com/coding/10354-most-profitable-companies

SELECT company, profits
FROM forbes_global_2010_2014
ORDER BY profits DESC
LIMIT 3;