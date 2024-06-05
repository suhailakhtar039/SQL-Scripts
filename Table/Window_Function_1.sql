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

-- using partition by
SELECT 
	emp_no, department, salary, AVG(salary) OVER(PARTITION BY department) AS dept_avg
FROM employees;

SELECT 
	emp_no, department, salary,
    AVG(salary) OVER(PARTITION BY department) AS dept_avg,
    AVG(salary) OVER() AS company_avg
FROM employees;

-- finding no of people in each department
SELECT
	department, count(*) OVER(PARTITION BY department) AS no_of_people
FROM employees;

-- finding sum of salary in each department
SELECT
	emp_no, department, salary, SUM(salary) OVER(PARTITION BY department) AS sum_department
FROM employees;

SELECT
	emp_no,
    department,
    salary,
    SUM(salary) OVER(PARTITION BY department ORDER BY SALARY DESC) AS sum_department,
    SUM(salary) OVER(PARTITION BY department) AS total_payroll
FROM employees;














