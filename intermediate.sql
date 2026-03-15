-- 1️⃣ Find employees who are not assigned to any project using LEFT JOIN
SELECT e.name
FROM employees e
LEFT JOIN projects p
ON e.emp_id = p.emp_id
WHERE p.project_id IS NULL;


-- 2️⃣ Display employees whose salary is greater than the average salary using a subquery
SELECT name, salary
FROM employees
WHERE salary > (SELECT AVG(salary) FROM employees);


-- 3️⃣ Find departments that have no employees
SELECT d.dept_name
FROM departments d
LEFT JOIN employees e
ON d.dept_id = e.dept_id
WHERE e.emp_id IS NULL;


-- 4️⃣ Write a query to display employees working in the same department as 'John' using a subquery
SELECT name
FROM employees
WHERE dept_id =
(
SELECT dept_id
FROM employees
WHERE name = 'John'
);


-- 5️⃣ Show the highest salary in each department
SELECT dept_id, MAX(salary)
FROM employees
GROUP BY dept_id;


-- 6️⃣ Display employees whose salary is equal to the maximum salary in their department
SELECT name, salary
FROM employees e
WHERE salary =
(
SELECT MAX(salary)
FROM employees
WHERE dept_id = e.dept_id
);


-- 7️⃣ Write a query to list employees working on projects along with department names
SELECT e.name, d.dept_name, p.project_name
FROM employees e
JOIN departments d
ON e.dept_id = d.dept_id
JOIN projects p
ON e.emp_id = p.emp_id;


-- 8️⃣ Find departments where the average salary is greater than 60,000
SELECT dept_id, AVG(salary)
FROM employees
GROUP BY dept_id
HAVING AVG(salary) > 60000;


-- 9️⃣ Display employees who earn more than the average salary of their department
SELECT name, salary
FROM employees e
WHERE salary >
(
SELECT AVG(salary)
FROM employees
WHERE dept_id = e.dept_id
);


-- 🔟 Write a query to display employees who are not assigned to any department
SELECT name
FROM employees
WHERE dept_id IS NULL;
