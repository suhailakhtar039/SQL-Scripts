-- titles that contain stories
SELECT title FROM books WHERE title LIKE '%stories%';

-- find longest book
SELECT 
    title, pages
FROM
    books
ORDER BY pages DESC
LIMIT 1;

SELECT 
    CONCAT(title, ' - ', released_year) AS summary
FROM
    books
ORDER BY released_year DESC
LIMIT 3;

-- find all books containig space
SELECT 
    title, author_lname
FROM
    books
WHERE
    author_lname LIKE '% %';

-- find 3 books with lowest stock
SELECT 
    title, released_year, stock_quantity
FROM
    books
ORDER BY stock_quantity
LIMIT 3;

-- print title and author last name, sorted first by author last name and then title
SELECT 
    title, author_lname
FROM
    books
ORDER BY author_lname , title;


-- sorted alphabetically by last name

SELECT 
    CONCAT('MY FAVORITE AUTHOR IS ',
            UCASE(author_fname),
            ' ',
            UCASE(author_lname),
            '!') AS yell
FROM
    books
ORDER BY author_lname;





