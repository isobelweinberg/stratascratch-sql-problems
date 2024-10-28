--https://platform.stratascratch.com/coding/9992-find-artists-that-have-been-on-spotify-the-most-number-of-times
-- easy

SELECT artist, COUNT(id) as num
FROM spotify_worldwide_daily_song_ranking
GROUP BY artist
ORDER BY num DESC;