-- aggregate function started
SELECT COUNT(*)
FROM books;

-- counting authors first name
-- this will simply tell you how many times author_fname occured
-- It won't tell you distinct value just value
SELECT 
    COUNT(author_fname) AS no_of_authors
FROM
    books;
    
-- this one is for distinct previous was for just author
SELECT 
    COUNT(DISTINCT author_fname) AS no_of_authors
FROM
    books;
    
    
-- selecting distinct value as well
SELECT DISTINCT author_fname FROM books;
    
-- last name as well
SELECT COUNT(DISTINCT author_lname) FROM books;

SELECT 
    COUNT(*)
FROM
    books
WHERE
    title LIKE '%the%';
    
-- group by 'started'
SELECT 
    COUNT(*), author_lname
FROM
    books
GROUP BY author_lname;

-- released year
SELECT 
    released_year, COUNT(*)
FROM
    books
GROUP BY released_year
ORDER BY COUNT(*) DESC;


-- min and max
SELECT MIN(released_year) FROM books;

-- sub query
SELECT 
    pages, title
FROM
    books
WHERE
    pages = (SELECT 
            MAX(pages)
        FROM
            books);
    
    
SELECT 
    author_fname, author_lname, COUNT(*)
FROM
    books
GROUP BY author_lname , author_fname;

SELECT author_lname, MAX(released_year) FROM books group by author_lname;    
SELECT author_lname,MAX(released_year), MIN(released_year) FROM books group by author_lname;    

SELECT author_lname,MAX(released_year), MIN(released_year), COUNT(*) FROM books group by author_lname;

