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
    title, AVG(rating) AS avg_rating
FROM
    series
        JOIN
    reviews ON reviews.series_id = series.id
GROUP BY title
ORDER BY avg_rating;











