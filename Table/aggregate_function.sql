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