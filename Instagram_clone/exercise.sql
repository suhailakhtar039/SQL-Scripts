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
    
-- 4 who won the most like on single photo
SELECT 
    username,
    photos.id,
    photos.image_url, 
    COUNT(*) AS total
FROM photos
INNER JOIN likes
    ON likes.photo_id = photos.id
INNER JOIN users
    ON photos.user_id = users.id
GROUP BY photos.id
ORDER BY total DESC
LIMIT 1;

-- 5 how many times does average user post
SELECT 
    ((SELECT 
            COUNT(*)
        FROM
            photos) / (SELECT 
            COUNT(*)
        FROM
            users)) AS avg;
            
-- top 5 most commonly used hashtags
SELECT 
    tag_name, COUNT(tag_name) AS cnt
FROM
    tags
        JOIN
    photo_tags ON tags.id = photo_tags.tag_id
GROUP BY tag_name
ORDER BY cnt DESC
LIMIT 5;

-- solution provided
SELECT tags.tag_name, 
       Count(*) AS total 
FROM   photo_tags 
       JOIN tags 
         ON photo_tags.tag_id = tags.id 
GROUP  BY tags.id 
ORDER  BY total DESC 
LIMIT  5; 

