# https://platform.stratascratch.com/coding/10367-aggregate-listening-data?code_type=3
# easy

select user_id, round(sum(listen_duration) / 60) as total_listen_duration, count(distinct(song_id)) as unique_song_count
from listening_habits
group by user_id;