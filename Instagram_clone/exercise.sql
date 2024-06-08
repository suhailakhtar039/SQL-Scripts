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

-- 3 find users who have never posted a photo
SELECT 
    username
FROM
    users
        LEFT JOIN
    photos ON users.id = photos.user_id
WHERE
    photos.user_id IS NULL;