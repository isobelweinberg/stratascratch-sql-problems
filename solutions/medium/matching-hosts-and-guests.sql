-- https://platform.stratascratch.com/coding/10078-find-matching-hosts-and-guests-in-a-way-that-they-are-both-of-the-same-gender-and-nationality

SELECT DISTINCT h.host_id, g.guest_id
FROM airbnb_hosts h
JOIN airbnb_guests g 
ON h.nationality = g.nationality AND h.gender = g.gender;