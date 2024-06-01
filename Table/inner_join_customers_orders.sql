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
    