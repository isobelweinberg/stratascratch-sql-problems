-- https://platform.stratascratch.com/coding/9814-counting-instances-in-text

SELECT 
    'bull' AS name, 
    SUM(CASE WHEN contents REGEXP '\\bbull\\b' THEN 1 END) as count
FROM google_file_store
UNION 
SELECT 'bear',
    SUM(CASE WHEN contents REGEXP '\\bbear\\b' THEN 1 END) as count_bear
FROM google_file_store;