-- min date
-- email of earliest user
SELECT email
FROM users
WHERE created_at = (SELECT MIN(created_at)
FROM users);

