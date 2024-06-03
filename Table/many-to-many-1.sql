select * from reviews;
select * from series;
select * from reviewers;

SELECT 
    title, rating
FROM
    series
        JOIN
    reviews ON series.id = reviews.series_id;














