-- min date
-- email of earliest user
SELECT email
FROM users
WHERE created_at = (SELECT MIN(created_at)
FROM users);

-- extracting month user joined
select MONTHNAME(created_at) as month, count(MONTHNAME(created_at))
from users
group by month;
