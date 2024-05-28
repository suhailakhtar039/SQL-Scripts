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


