-- min date
SELECT
    DATE_FORMAT(MIN(created_at), "%M %D %Y") as earliest_date
FROM users;

-- email of earliest user
SELECT email
FROM users
WHERE created_at = (SELECT MIN(created_at)
FROM users);

-- extracting month user joined
select MONTHNAME(created_at) as month, count(MONTHNAME(created_at))
from users
group by month;

-- email having yahoo
select count(*)
from users
where email like '%yahoo.com%';

-- different email
SELECT
    CASE
        WHEN email like '%gmail.com' THEN 'gmail'
        WHEN email like '%yahoo.com' THEN 'yahoo'
        WHEN email like '%hotmail.com' THEN 'hotmail'
        ELSE 'other'
    end as provider,
    count(*) as total_users
FROM users
GROUP BY provider
ORDER BY total_users DESC;