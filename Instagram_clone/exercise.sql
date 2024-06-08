-- 1. find the oldest 5 users
SELECT 
    username
FROM
    users
ORDER BY id
LIMIT 5;