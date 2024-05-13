DROP TABLE shirts;

CREATE TABLE shirts(
	shirt_id INT PRIMARY KEY AUTO_INCREMENT,
    article VARCHAR(50),
    color VARCHAR(50),
    shirt_size VARCHAR(10),
    last_worn INT
);

DESC shirts;

-- INSERTING DATA
INSERT INTO shirts	(article, color, shirt_size, last_worn)
VALUES				('t-shirt', 'white', 'S', 10),
					('t-shirt', 'green', 'S', 200),
                    ('polo shirt', 'black', 'M', 10),
                    ('tank top', 'blue', 'S', 50),
                    ('t-shirt', 'pink', 'S', 0),
                    ('polo shirt', 'red', 'M', 5),
                    ('tank top', 'white', 'S', 200),
                    ('tank top', 'blue', 'M', 15);
-- see the data
SELECT * FROM shirts;

-- adding a new shirt
INSERT INTO shirts	(article, color, shirt_size, last_worn)
VALUES				('polo shirt', 'purple', 'M', 50);

-- select all shirts but only print out article and color
SELECT article, color FROM shirts;

-- select everything except id
SELECT article, color, shirt_size, last_worn FROM shirts WHERE shirt_size='M';

-- update all polo shirts change size to L
UPDATE shirts SET shirt_size='L' WHERE article='polo shirt';

-- update shirt last worn
UPDATE shirts SET last_worn=0 WHERE last_worn=15;

-- update all white shirts change size to xs and color to off white
UPDATE shirts SET shirt_size='XS', color='off white' WHERE color='white';

-- delete all old shirts last worn 200 days ago
DELETE FROM shirts WHERE last_worn = 200;

-- delete all tank top
SELECT * FROM shirts WHERE article='tank top';
DELETE FROM shirts WHERE article='tank top';

-- delete all table
DELETE FROM shirts;

