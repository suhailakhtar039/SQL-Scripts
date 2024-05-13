-- drop table cats
DROP TABLE cats;
-- create cats
CREATE TABLE cats
(
    cat_id INT
    AUTO_INCREMENT,
    name VARCHAR
    (100),
    breed VARCHAR
    (100),
    age INT,
    PRIMARY KEY
    (cat_id)
);
SELECT *
FROM cats;
DESC cats;
INSERT INTO cats
	(name, breed, age)
VALUES
	('Ringo', 'Tabby', 4),
	('Cindy', 'Maine Coon', 10),
	('Dumbledore', 'Maine Coon', 11),
	('Egg', 'Persian', 4),
	('Misty', 'Tabby', 13),
	('George Michael', 'Ragdoll', 9),
	('Jackson', 'Sphynx', 7);


-- selecting differenct columns
SELECT name, age
FROM cats;

SELECT name, breed FROM cats;
    
-- using where clause

SELECT * FROM cats WHERE age = 4;

SELECT name, age WHERE age = 4;
    
-- rapid fire series

SELECT cat_id FROM cats;

SELECT name, breed FROM cats;

SELECT cat_id, age FROM cats WHERE cat_id = age;

-- aliases

SELECT cat_id as id FROM cats;

-- updating jackson's name

SELECT * FROM cats WHERE name='jackson';
UPDATE cats SET name='jack' WHERE name = 'jackson';
SELECT * FROM cats WHERE name='jack';


SELECT * FROM cats where breed = 'maine coon';
UPDATE cats SET age=12 WHERE breed='maine coon';


-- Delete started
DELETE FROM cats WHERE name='egg';
SELECT * FROM cats;

