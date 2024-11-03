-- https://platform.stratascratch.com/coding/10285-acceptance-rate-by-date

SELECT date, SUM(acceptance)/COUNT(acceptance) AS rate
FROM
(SELECT a.user_id_sender, a.user_id_receiver, a.date,
IF (EXISTS (
    SELECT 1
    FROM fb_friend_requests AS b
    WHERE a.user_id_sender = b.user_id_sender
    AND a.user_id_receiver = b.user_id_receiver
    AND b.action='accepted'), 1, 0) as acceptance
FROM fb_friend_requests AS a
WHERE a.action = 'sent') AS sub
GROUP BY date;