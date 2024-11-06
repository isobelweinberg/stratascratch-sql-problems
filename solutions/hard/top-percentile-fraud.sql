-- https://platform.stratascratch.com/coding/10303-top-percentile-fraud

WITH p AS
    (SELECT *, PERCENT_RANK() OVER(PARTITION BY state ORDER BY fraud_score DESC) AS percentiles
    FROM fraud_score)
SELECT policy_num, state, claim_cost, fraud_score
FROM p
WHERE p.percentiles <= 0.05 ;