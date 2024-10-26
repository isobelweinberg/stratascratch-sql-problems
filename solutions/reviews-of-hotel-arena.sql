-- https://platform.stratascratch.com/coding/10166-reviews-of-hotel-arena
-- easy

SELECT hotel_name, reviewer_score, COUNT(reviewer_score) AS num_reviews
FROM hotel_reviews
WHERE hotel_name='Hotel Arena'
GROUP BY reviewer_score;