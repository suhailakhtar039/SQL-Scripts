select * from reviews;
select * from series;
select * from reviewers;

-- first exercise
SELECT 
    title, rating
FROM
    series
        JOIN
    reviews ON series.id = reviews.series_id;

-- second
SELECT 
    title, ROUND(AVG(rating), 2) AS avg_rating
FROM
    series
        JOIN
    reviews ON reviews.series_id = series.id
GROUP BY title
ORDER BY avg_rating;

-- third
SELECT 
    first_name, last_name, rating
FROM
    reviewers
        JOIN
    reviews ON reviewers.id = reviews.reviewer_id;
    
-- fourth
SELECT 
    title
FROM
    series
        LEFT JOIN
    reviews ON series.id = reviews.series_id
WHERE
    rating IS NULL;
    
SELECT 
    title AS unreviewed_series
FROM
    reviews
        RIGHT JOIN
    series ON series.id = reviews.series_id
WHERE
    rating IS NULL;
    
-- fifth
SELECT 
    genre, ROUND(AVG(rating), 2)
FROM
    series
        JOIN
    reviews ON series.id = reviews.series_id
GROUP BY genre;

-- sixth
SELECT 
    first_name,
    last_name,
    COUNT(rating) AS count,
    IFNULL(MIN(rating), 0) AS min,
    IFNULL(MAX(rating), 0) AS max,
    IFNULL(AVG(rating), 0) AS avg,
    CASE
        WHEN COUNT(rating) != 0 THEN 'Active'
        ELSE 'Inactive'
    END AS status
FROM
    reviewers
        LEFT JOIN
    reviews ON reviewers.id = reviews.reviewer_id
GROUP BY first_name , last_name;










