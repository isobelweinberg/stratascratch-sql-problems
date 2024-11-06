-- https://platform.stratascratch.com/coding/9726-classify-business-type

SELECT DISTINCT business_name, CASE
    WHEN business_name LIKE '%restaurant%' THEN 'restaurant'
    WHEN business_name LIKE '%cafe%'
        OR business_name LIKE '%café%' 
        OR business_name LIKE '%coffee%' THEN 'cafe'
    WHEN business_name LIKE '%school%' THEN 'school'
    ELSE 'other'
END AS classification
FROM sf_restaurant_health_violations;