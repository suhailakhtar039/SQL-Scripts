SELECT CONCAT('H', 'e', 'g', 'o');
-- concat in string
SELECT CONCAT(author_fname,'!!!') FROM books;

-- concat for full name
SELECT CONCAT(author_fname, ' ', author_lname) as full_name FROM books;

-- using concat_ws
SELECT CONCAT_WS('-', title, author_fname, author_lname) FROM books;

-- index starts from 1 in string
-- substring
-- using starting index and length
SELECT SUBSTRING("hEllo",1,3);

-- single argument will go to the end
SELECT substring("Hello world", 7);

-- negative number means starting from back
SELECT SUBSTRING("HELLO WORLD",-2);

-- working with books example
-- substr() is same as substring()
-- in this we are using substr along with concat
SELECT CONCAT(SUBSTR(title, 1, 10),'...') AS short_title FROM books;

-- initial of the author name
SELECT 
    CONCAT(SUBSTR(author_fname, 1, 1),
            ' ',
            SUBSTR(author_lname, 1, 1)) AS initials
FROM
    books;


-- using replace
-- 2nd argument -> what to swap
-- 3rd argument -> what to swap with
SELECT 
    REPLACE('chesse bread coffee milk',
        ' ',
        ' and ');


SELECT REPLACE(title, 'e ', '3') FROM books;
 
SELECT REPLACE(title, ' ', '-') FROM books;

-- using reverse function

SELECT REVERSE(title) FROM books;








