-- 1. find the oldest 5 users
SELECT 
    username
FROM
    users
ORDER BY created_at
LIMIT 5;

-- 2 what day of week do most user register on
SELECT 
    DAYNAME(created_at) AS day,
    COUNT(DAYNAME(created_at)) AS cnt_day
FROM
    users
GROUP BY DAYNAME(created_at)
ORDER BY cnt_day DESC;