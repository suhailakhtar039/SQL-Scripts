SELECT 
    *
FROM
    orders;

SELECT 
    *
FROM
    customers;


SELECT 
    *
FROM
    customers
        JOIN
    orders ON customers.id = orders.customer_id;
    
    
SELECT 
    first_name, last_name, order_date, amount
FROM
    customers
        INNER JOIN
    orders ON customers.id = orders.customer_id;
    
-- find total amount spent by customer on single order
SELECT 
    first_name, last_name, SUM(amount) as total_amount
FROM
    customers
        INNER JOIN
    orders ON customers.id = orders.customer_id
GROUP BY first_name , last_name;

-- using left join
SELECT 
    first_name, last_name, order_date, amount
FROM
    customers
        LEFT JOIN
    orders ON customers.id = orders.customer_id;
    
SELECT 
    first_name, last_name, order_date, amount
FROM
    orders
        LEFT JOIN
    customers ON customers.id = orders.customer_id;    
-- above two differs
-- finding if null
SELECT 
    first_name, last_name, IFNULL(SUM(amount), 0)
FROM
    customers
        LEFT JOIN
    orders ON customers.id = orders.customer_id
GROUP BY first_name , last_name;    

-- right join
SELECT 
    first_name, last_name, order_date, amount
FROM
    customers
        RIGHT JOIN
    orders ON customers.id = orders.customer_id;
    
-- checking cascade
delete from customers where last_name='bowie';
select * from orders;
select * from customers;


-- exercise for joins
create table students(
	id int primary key auto_increment,
    first_name varchar(50)
);
create table papers(
	title varchar(50),
    grade int,
    student_id int,
    foreign key(student_id) references students(id)
);
select * from students;
select * from papers;
INSERT INTO students (first_name) VALUES 
('Caleb'), ('Samantha'), ('Raj'), ('Carlos'), ('Lisa');
 
INSERT INTO papers (student_id, title, grade ) VALUES
(1, 'My First Book Report', 60),
(1, 'My Second Book Report', 75),
(2, 'Russian Lit Through The Ages', 94),
(2, 'De Montaigne and The Art of The Essay', 98),
(4, 'Borges and Magical Realism', 89);

-- simple join
SELECT 
    first_name, title, grade
FROM
    students
        JOIN
    papers ON papers.student_id = students.id;
    
    
-- left join
SELECT 
    first_name, title, grade
FROM
    students
        LEFT JOIN
    papers ON papers.student_id = students.id;
    
-- using ifnull
SELECT 
    first_name, IFNULL(title, 'Missing') as title, IFNULL(grade, 0) as grade
FROM
    students
        LEFT JOIN
    papers ON papers.student_id = students.id;
    
-- using group by
SELECT 
    first_name, IFNULL(AVG(grade), 0) as average
FROM
    students
        LEFT JOIN
    papers ON papers.student_id = students.id
GROUP BY first_name;

-- using case and when
SELECT 
    first_name,
    IFNULL(AVG(grade), 0) AS average,
    CASE
        WHEN IFNULL(AVG(grade), 0) > 75 THEN 'Passing'
        ELSE 'failing'
    END AS passing_status
FROM
    students
        LEFT JOIN
    papers ON papers.student_id = students.id
GROUP BY first_name;