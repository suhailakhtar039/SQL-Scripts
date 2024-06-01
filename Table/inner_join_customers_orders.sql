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


    
    
    
    