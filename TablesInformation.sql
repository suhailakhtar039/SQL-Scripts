-- create tables

-- CREATE TABLE example(
-- column_value dataType,
-- column_value, dataType
-- )

CREATE DATABASE pet_shop;

use pet_shop;

CREATE TABLE cats(
name varchar(50),
age int
);

CREATE TABLE dogs(
name VARCHAR(50),
breed VARCHAR(50),
age INT
);

show tables;

SHOW COLUMNS FROM cats;

DESCRIBE CATS;

-- deleting a table
DROP TABLE cats;

CREATE TABLE pastries(
	name VARCHAR(50),
    QUANTITY int
);

DROP TABLE pastries;


