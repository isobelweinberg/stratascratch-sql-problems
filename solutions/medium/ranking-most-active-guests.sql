--https://platform.stratascratch.com/coding/10159-ranking-most-active-guests

SELECT DENSE_RANK() OVER (ORDER BY sum_msg DESC) AS r, id_guest, sum_msg
FROM 
(SELECT id_guest, SUM(n_messages) as sum_msg
FROM airbnb_contacts
GROUP BY id_guest) AS sub;
