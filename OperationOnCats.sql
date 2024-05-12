SELECT * FROM pet_shop.cats;
INSERT INTO cats(name)
VALUES("random");
-- that means we can include null values

-- creating 2nd table
CREATE TABLE cats2(
	name VARCHAR(50) NOT NULL,
    age INT NOT NULL
);

INSERT INTO cats2(name, age)
VALUES("random",4);

SELECT * FROM cats2;

INSERT INTO cats2(name)
VALUES ("abc");

DESC cats2;
