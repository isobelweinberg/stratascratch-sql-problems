--https://platform.stratascratch.com/coding/10351-activity-rank

SELECT user, total_emails, ROW_NUMBER() OVER (ORDER BY total_emails DESC, user ASC) AS activity_rank
FROM (SELECT from_user AS user, COUNT(from_user) AS total_emails 
    FROM google_gmail_emails 
    GROUP BY from_user) AS temp
ORDER BY total_emails DESC, user ASC;