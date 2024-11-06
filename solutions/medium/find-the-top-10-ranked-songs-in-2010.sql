-- https://platform.stratascratch.com/coding/9650-find-the-top-10-ranked-songs-in-2010

SELECT DISTINCT year_rank, group_name, song_name
FROM billboard_top_100_year_end
WHERE year = 2010 AND year_rank <= 10
ORDER BY year_rank ASC;