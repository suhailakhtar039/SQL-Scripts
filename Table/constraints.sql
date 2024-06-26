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

-- named constraint
CREATE TABLE users2 (
    username VARCHAR(20) NOT NULL,
    age INT,
    CONSTRAINT age_not_negative CHECK (age >= 0)
);
 
CREATE TABLE palindromes2 (
  word VARCHAR(100),
  CONSTRAINT word_is_palindrome CHECK(REVERSE(word) = word)
);

-- multi column checks
CREATE TABLE companies (
    name VARCHAR(255) NOT NULL,
    address VARCHAR(255) NOT NULL,
    CONSTRAINT name_address UNIQUE (name , address)
);
-- custom constraints 
CREATE TABLE houses (
  purchase_price INT NOT NULL,
  sale_price INT NOT NULL,
  CONSTRAINT sprice_gt_pprice CHECK(sale_price >= purchase_price)
);

DESC companies;
-- alter table created
ALTER TABLE companies 
ADD COLUMN phone VARCHAR(15);
 
ALTER TABLE companies
ADD COLUMN employee_count INT NOT NULL DEFAULT 1;

-- dropping column
ALTER TABLE companies DROP COLUMN phone;

-- renaming table
RENAME TABLE companies to suppliers;


ALTER TABLE suppliers RENAME TO companies;

-- renaming column name
ALTER TABLE companies
RENAME COLUMN name TO company_name;

-- modifying column definition
ALTER TABLE companies
MODIFY company_name VARCHAR(100) DEFAULT 'unknown';


ALTER TABLE suppliers
CHANGE business biz_name VARCHAR(50);

-- adding and dropping constraint
ALTER TABLE houses 
ADD CONSTRAINT positive_pprice CHECK (purchase_price >= 0);


ALTER TABLE houses DROP CONSTRAINT positive_pprice;









