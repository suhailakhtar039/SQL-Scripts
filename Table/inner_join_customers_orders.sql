SELECT 
    *
FROM
    customers
        JOIN
    orders ON customers.id = orders.customer_id;