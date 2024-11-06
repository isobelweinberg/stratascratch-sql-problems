-- https://platform.stratascratch.com/coding/9991-top-ranked-songs

SELECT trackname, COUNT(trackname) AS times_at_top
FROM spotify_worldwide_daily_song_ranking
WHERE position = 1
GROUP BY trackname
ORDER BY times_at_top DESC;