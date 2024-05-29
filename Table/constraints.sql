-- starting constraints like alter and delete a table

-- showing unique
CREATE TABLE contacts(
	name VARCHAR(100) NOT NULL,
    phone VARCHAR(15) NOT NULL UNIQUE
);

SELECT * FROM contacts;

INSERT INTO contacts(name, phone)
VALUES ('suhail', '123');

-- this would result into an error
INSERT INTO contacts(name, phone)
VALUES ('akhtar', '123');

-- check constraints
CREATE TABLE users (
	username VARCHAR(20) NOT NULL,
    age INT CHECK (age > 0)
);
 
CREATE TABLE palindromes (
  word VARCHAR(100) CHECK(REVERSE(word) = word)
);