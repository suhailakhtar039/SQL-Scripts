CREATE TABLE cats3(
	name VARCHAR(100) DEFAULT 'unnamed',
    age INT DEFAULT 99
);

-- see the content

SELECT * FROM cats3;

INSERT INTO cats3()
VALUES();

INSERT INTO cats3(age)
VALUES(45);

INSERT INTO cats3(name, age)
VALUES(NULL, NULL);

INSERT INTO cats3(name, age)
VALUES('abc', 4);

-- start with keys
CREATE TABLE unique_cats(
	cat_id INT NOT NULL PRIMARY KEY,
    name VARCHAR(50),
    age INT
);

SELECT * FROM unique_cats;

DESC unique_cats;

INSERT INTO unique_cats(cat_id, name, age)
VALUES(2, 'random', 8);

INSERT INTO unique_cats(cat_id, name, age)
VALUES(5, 'pixie', 18);

INSERT INTO unique_cats(cat_id, name, age)
VALUES(5, 'pixie', 18);

DROP TABLE unique_cats;

CREATE TABLE unique_cats(
	cat_id INT NOT NULL,
    name VARCHAR(50),
    age INT,
    PRIMARY KEY(cat_id)
);

INSERT INTO unique_cats(cat_id, name, age)
VALUES(2, 'random', 8);

INSERT INTO unique_cats(cat_id, name, age)
VALUES(5, 'pixie', 18);

INSERT INTO unique_cats(cat_id, name, age)
VALUES(6, 'pixie', 18);

SELECT * FROM unique_cats;

INSERT INTO unique_cats(name, age)
VALUES('brian', 4);

-- using auto increment
CREATE TABLE unique_cats(
	cat_id INT AUTO_INCREMENT,
    name VARCHAR(50),
    age INT,
    PRIMARY KEY(cat_id)
);

SELECT * FROM unique_cats;






