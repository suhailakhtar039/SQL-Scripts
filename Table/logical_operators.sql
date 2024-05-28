-- using not equal !=
SELECT title FROM books WHERE released_year!=2013;

-- using NOT like
SELECT title FROM books WHERE title LIKE '% %';
SELECT title FROM books WHERE title NOT LIKE '% %';

SELECT title FROM books WHERE title LIKE '%e%';
SELECT title FROM books WHERE title NOT LIKE '%e%';

-- using greater than 
SELECT * FROM books WHERE released_year > 2010;
SELECT * FROM books WHERE pages > 500;
SELECT 1 > NULL;
SELECT NULL > 1;

-- using smaller than operator
SELECT * FROM books WHERE released_year < 2000;

SELECT * FROM books WHERE released_year >= 2010;

SELECT * FROM books WHERE released_year <= 1985;

-- logical and &&
SELECT 
    *
FROM
    books
WHERE
    author_lname = 'Eggers'
        AND released_year > 2010;


SELECT 
    *
FROM
    books
WHERE
    author_lname = 'Eggers'
        AND released_year > 2010
        AND title LIKE '%novel%';
        

SELECT 
    title, pages
FROM
    books
WHERE
    CHAR_LENGTH(title) > 30 AND pages > 500;

-- logical OR
SELECT 
    title, author_lname, released_year
FROM
    books
WHERE
    author_lname = 'Eggers'
        OR released_year > 2010;


SELECT 
    title, pages
FROM
    books
WHERE
    pages < 200 OR title LIKE '%stories%';
    

-- using between operator
SELECT 
    title, pages
FROM
    books
WHERE
    pages > 400 AND pages < 500;
    

SELECT 
    title, released_year
FROM
    books
WHERE
    released_year BETWEEN 2004 AND 2014;








