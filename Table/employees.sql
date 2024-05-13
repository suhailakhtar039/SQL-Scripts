CREATE TABLE employees(
	id INT PRIMARY KEY AUTO_INCREMENT,
    last_name VARCHAR(50) NOT NULL,
    first_name VARCHAR(50) NOT NULL,
    middle_name VARCHAR(50),
    age INT NOT NULL,
    current_status VARCHAR(50) NOT NULL DEFAULT 'employed'
);

SELECT * FROM employees;

DESC employees;

INSERT INTO employees(first_name, last_name, age)
VALUES
		('suhail', 'akhtar', 3),
		('abc', 'xyz', 1),
        ('hello', 'world', 5);
        
-- update
UPDATE employees SET last_name = 'rooster';

UPDATE employees SET current_status = 'laid-off', last_name = 'who cares';

