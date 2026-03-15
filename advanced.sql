-- 1️⃣ Write a correlated subquery to find employees whose salary is higher than the average salary of their department
SELECT name, salary
FROM employees e
WHERE salary >
(
SELECT AVG(salary)
FROM employees
WHERE dept_id = e.dept_id
);


-- 2️⃣ Find the department with the highest average salary
SELECT dept_id
FROM employees
GROUP BY dept_id
ORDER BY AVG(salary) DESC
LIMIT 1;


-- 3️⃣ Display employees who work on more than one project
SELECT emp_id
FROM projects
GROUP BY emp_id
HAVING COUNT(project_id) > 1;


-- 4️⃣ Write a query to show the top 3 highest-paid employees in each department
SELECT *
FROM employees e1
WHERE 3 >
(
SELECT COUNT(*)
FROM employees e2
WHERE e2.salary > e1.salary
AND e2.dept_id = e1.dept_id
);


-- 5️⃣ Display departments where no employee earns less than 30,000
SELECT dept_id
FROM employees
GROUP BY dept_id
HAVING MIN(salary) >= 30000;


-- 6️⃣ Find employees who earn the second highest salary in their department
SELECT MAX(salary)
FROM employees
WHERE salary <
(
SELECT MAX(salary)
FROM employees
);


-- 7️⃣ Display employees who work in departments that have more than 5 employees
SELECT dept_id
FROM employees
GROUP BY dept_id
HAVING COUNT(emp_id) > 5;


-- 8️⃣ Write a query to list employees working on the same project as 'John'
SELECT name
FROM employees
WHERE emp_id IN
(
SELECT emp_id
FROM projects
WHERE project_id =
(
SELECT project_id
FROM projects
WHERE emp_id =
(
SELECT emp_id
FROM employees
WHERE name='John'
)
)
);


-- 9️⃣ Find employees whose salary is greater than the average salary of all departments combined
SELECT name
FROM employees
WHERE salary >
(
SELECT AVG(salary)
FROM employees
);


-- 🔟 Write a query to display department name, total salary, and number of employees in each department using JOIN and GROUP BY
SELECT d.dept_name,
COUNT(e.emp_id) AS total_employees,
SUM(e.salary) AS total_salary
FROM departments d
JOIN employees e
ON d.dept_id = e.dept_id
GROUP BY d.dept_name;
