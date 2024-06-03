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












