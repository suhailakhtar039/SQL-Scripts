CREATE TABLE cats (
    name VARCHAR(50),
    age INT
);
-- INSERTING VALUES
INSERT INTO cats(name, age)
VALUES	('PIXIE',4),
		('sunday',5);

select * from cats;

-- Multi insert
CREATE TABLE people(
	first_name VARCHAR(20),
	last_name VARCHAR(20),
    age int
);

INSERT INTO people	(first_name, last_name, age)
VALUES				("Linda", "Belcher", 45),
					("Philip", "Frond", 38),
                    ("Calvin", "Klein", 70);

SELECT * FROM people;