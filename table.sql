CREATE TABLE departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50)
);

CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    name VARCHAR(50),
    salary INT,
    dept_id INT
);

CREATE TABLE projects (
    project_id INT PRIMARY KEY,
    project_name VARCHAR(50),
    emp_id INT
);

INSERT INTO departments VALUES
(1,'IT'),
(2,'HR'),
(3,'Finance'),
(4,'Marketing');

INSERT INTO employees VALUES
(101,'John',50000,1),
(102,'Alice',60000,1),
(103,'Bob',45000,2),
(104,'David',30000,3),
(105,'Emma',70000,1),
(106,'Chris',35000,2);

INSERT INTO projects VALUES
(1,'Website',101),
(2,'MobileApp',102),
(3,'AI System',101),
(4,'Recruitment Portal',103);
