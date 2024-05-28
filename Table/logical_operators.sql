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
    
-- using IN operator
SELECT 
    title, author_lname
FROM
    books
WHERE
    author_lname = 'carver'
        OR author_lname = 'lahiri'
        OR author_lname = 'smith';


SELECT 
    title, author_lname
FROM
    books
WHERE
    author_lname IN ('carver' , 'lahiri', 'smith');
    
-- using modulo operator
SELECT 
    title, released_year
FROM
    books
WHERE
    released_year >= 2000 AND released_year % 2 != 0;

-- case studies

SELECT 
    title,
    released_year,
    CASE
        WHEN released_year >= 2000 THEN 'Modern Lit'
        ELSE '20th Century Lit'
    END AS Genre
FROM
    books;


SELECT 
    title,
    stock_quantity,
    CASE
        WHEN stock_quantity BETWEEN 0 AND 40 THEN '*'
        WHEN stock_quantity BETWEEN 41 AND 70 THEN '**'
        WHEN stock_quantity BETWEEN 71 AND 100 THEN '***'
        WHEN stock_quantity BETWEEN 101 AND 140 THEN '****'
        ELSE '*****'
    END AS stock
FROM
    books;
 
 
SELECT 
    title,
    stock_quantity,
    CASE
        WHEN stock_quantity <= 40 THEN '*'
        WHEN stock_quantity <= 70 THEN '**'
        WHEN stock_quantity <= 100 THEN '***'
        WHEN stock_quantity <= 140 THEN '****'
        ELSE '*****'
    END AS stock
FROM
    books;
    
    
-- exercise
SELECT 
    *
FROM
    books
WHERE
    released_year < 1980;
    
SELECT 
    *
FROM
    books
WHERE
    author_lname IN ('eggers' , 'chabon');
    
SELECT 
    *
FROM
    books
WHERE
    author_lname = 'lahiri'
        AND released_year > 2000;
        
SELECT 
    *
FROM
    books
WHERE
    pages BETWEEN 100 AND 200;
    
SELECT 
    *
FROM
    books
WHERE
    author_lname LIKE 'c%'
        OR author_lname LIKE 's%';


SELECT 
    title,
    author_lname,
    CASE
        WHEN title LIKE '%stories%' THEN 'short stories'
        WHEN
            title = 'Just kids'
                OR title = 'A Heartbreaking Work of Staggering Genius'
        THEN
            'memoir'
        ELSE 'Novel'
    END AS Type
FROM
    books;



SELECT 
    author_fname,
    author_lname,
    CASE
        WHEN COUNT(*) = 1 THEN '1 book'
        ELSE CONCAT(COUNT(*), ' books')
    END AS counts
FROM
    books
GROUP BY author_fname , author_lname;



