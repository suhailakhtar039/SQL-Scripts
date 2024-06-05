-- to check item again and again
SELECT 
    *
FROM
    employees;
    
-- using group by
SELECT 
    department, AVG(salary)
FROM
    employees
GROUP BY department;

-- the over clause constructs a window. when it's empty the window will include all the reports
SELECT AVG(salary) OVER() FROM employees;

select emp_no, department, salary, avg(salary) over() from employees;
select emp_no, department, salary, min(salary) over(), max(salary) over() from employees;












