-- https://platform.stratascratch.com/coding/10128-count-the-number-of-movies-that-abigail-breslin-nominated-for-oscar
-- Easy

SELECT COUNT(movie) as num_movies
FROM oscar_nominees
WHERE nominee="Abigail Breslin";