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
-- SELECT 
--     first_name,
--     last_name,
--     COUNT(rating) AS count,
--     IFNULL(MIN(rating), 0) AS min,
--     IFNULL(MAX(rating), 0) AS max,
--     IFNULL(AVG(rating), 0) AS avg,
--     CASE
--         WHEN COUNT(rating) != 0 THEN 'Active'
--         ELSE 'Inactive'
--     END AS status
-- FROM
--     reviewers
--         LEFT JOIN
--     reviews ON reviewers.id = reviews.reviewer_id
-- GROUP BY first_name , last_name;

-- 2nd approach for case and end
SELECT 
    first_name,
    last_name,
    COUNT(rating) AS count,
    IFNULL(MIN(rating), 0) AS min,
    IFNULL(MAX(rating), 0) AS max,
    IFNULL(AVG(rating), 0) AS avg,
    IF(count(rating)>0, 'ACTIVE', 'INACTIVE') as status
FROM
    reviewers
        LEFT JOIN
    reviews ON reviewers.id = reviews.reviewer_id
GROUP BY first_name , last_name;

-- seventh
SELECT 
    title, rating, CONCAT(first_name,' ', last_name) AS reviewer
FROM
    series
        JOIN
    reviews ON series.id = reviews.series_id
        JOIN
    reviewers ON reviews.reviewer_id = reviewers.id;


-- creating reviews
CREATE VIEW full_reviews AS
    SELECT 
        title, released_year, genre, rating, first_name, last_name
    FROM
        series
            JOIN
        reviews ON series.id = reviews.series_id
            JOIN
        reviewers ON reviews.reviewer_id = reviewers.id;

-- operation on view
select * from full_reviews;
select * from full_reviews where title like '%ar%';
select genre, avg(rating) from full_reviews group by genre;

-- view creating example
CREATE VIEW ordered_series AS
SELECT * FROM series ORDER BY released_year;
 
CREATE OR REPLACE VIEW ordered_series AS
SELECT * FROM series ORDER BY released_year DESC;
 
ALTER VIEW ordered_series AS
SELECT * FROM series ORDER BY released_year;
 
DROP VIEW ordered_series;

-- USING group by HAVING
select * from full_reviews;

SELECT 
    title, AVG(rating)
FROM
    full_reviews
GROUP BY title
HAVING COUNT(rating) > 1;

-- roll up modifier
select avg(rating) from full_reviews;
select title, avg(rating) from full_reviews group by title;
SELECT 
    title, AVG(rating)
FROM
    full_reviews
GROUP BY title WITH ROLLUP;


SELECT 
    title, COUNT(rating)
FROM
    full_reviews
GROUP BY title WITH ROLLUP;

SELECT 
    first_name, released_year, genre, AVG(rating)
FROM
    full_reviews
GROUP BY released_year , genre , first_name WITH ROLLUP;

-- modes in sql
SELECT @@GLOBAL .sql_mode;
SELECT @@SESSION .sql_mode;
SELECT 3/0;
show warnings;
SET SESSION sql_mode='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION';


