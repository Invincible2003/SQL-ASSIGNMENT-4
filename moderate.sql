-- 1️⃣ Write a query to display employee names and their department names using INNER JOIN
SELECT e.name, d.dept_name
FROM employees e
INNER JOIN departments d
ON e.dept_id = d.dept_id;


-- 2️⃣ Write a query to show all employees and their project names, including employees without projects using LEFT JOIN
SELECT e.name, p.project_name
FROM employees e
LEFT JOIN projects p
ON e.emp_id = p.emp_id;


-- 3️⃣ Display all departments and employees working in them using RIGHT JOIN
SELECT d.dept_name, e.name
FROM employees e
RIGHT JOIN departments d
ON e.dept_id = d.dept_id;


-- 4️⃣ Write a query to show employee name and salary along with department name
SELECT e.name, e.salary, d.dept_name
FROM employees e
JOIN departments d
ON e.dept_id = d.dept_id;


-- 5️⃣ Display all employees even if they are not assigned to a department
SELECT e.name, d.dept_name
FROM employees e
LEFT JOIN departments d
ON e.dept_id = d.dept_id;


-- 6️⃣ Show all projects with employee names using INNER JOIN
SELECT p.project_name, e.name
FROM projects p
INNER JOIN employees e
ON p.emp_id = e.emp_id;


-- 7️⃣ Write a query to display department names and number of employees in each department
SELECT d.dept_name, COUNT(e.emp_id) AS total_employees
FROM departments d
LEFT JOIN employees e
ON d.dept_id = e.dept_id
GROUP BY d.dept_name;


-- 8️⃣ Find employees whose salary is greater than 40,000 with department names
SELECT e.name, e.salary, d.dept_name
FROM employees e
JOIN departments d
ON e.dept_id = d.dept_id
WHERE e.salary > 40000;


-- 9️⃣ Display all employees and their projects, even if some employees have no project assigned
SELECT e.name, p.project_name
FROM employees e
LEFT JOIN projects p
ON e.emp_id = p.emp_id;


-- 🔟 Show employees working in the "IT" department using a JOIN
SELECT e.name
FROM employees e
JOIN departments d
ON e.dept_id = d.dept_id
WHERE d.dept_name = 'IT';
