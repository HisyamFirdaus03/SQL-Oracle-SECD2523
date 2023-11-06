CREATE TABLE departments(

    dept_id NUMBER(3) CONSTRAINT dept_id_pk PRIMARY KEY,
    dept_name VARCHAR(20),
    manager_id NUMBER(3),
    location_id NUMBER(4)  
);

INSERT INTO departments(dept_id, dept_name, manager_id, location_id) VALUES
(
    10,
    'Administration',
    200,
    1700
);
INSERT INTO departments(dept_id, dept_name, manager_id, location_id) VALUES
(
    20,
    'Marketing',
    201,
    1800
);
INSERT INTO departments(dept_id, dept_name, manager_id, location_id) VALUES
(
    50,
    'Shipping',
    124,
    1500
);
INSERT INTO departments(dept_id, dept_name, manager_id, location_id) VALUES
(
    60,
    'IT',
    103,
    1400
);
INSERT INTO departments(dept_id, dept_name, manager_id, location_id) VALUES
(
    80,
    'Sales',
    149,
    2500
);
INSERT INTO departments(dept_id, dept_name, manager_id, location_id) VALUES
(
    70,
    'Public Relations',
    204,
    2700
);
INSERT INTO departments(dept_id, dept_name, manager_id, location_id) VALUES
(
    40,
    'Advertising',
    100,
    2500
);
--Explicit Method
INSERT INTO departments(dept_id, dept_name) VALUES
(
    30,
    'Purchasing'
);
--Inset NULL value (Implicit Method)
INSERT INTO departments VALUES
(
    90,
    'Finance',
    NULL,
    NULL
);


--Display all value
SELECT * FROM departments ORDER BY dept_id;

--Update a value
UPDATE departments SET dept_name = 'Lio' WHERE dept_name = 'IT';

--Delete row
DELETE FROM departments WHERE dept_name = 'Purchasing';

--Delete all row (PROCEED THIS COMMAND WITH CAUTION!)
DELETE FROM departments;

--Modify the datatype
ALTER TABLE departments
MODIFY dept_id NUMBER(3);
UPDATE departments SET dept_id = 100 WHERE dept_id = 90;


--PART 2
--Employees table
CREATE TABLE employees(

    employee_id NUMBER(3) CONSTRAINT employee_id_pk PRIMARY KEY,
    first_name VARCHAR(20),
    last_name VARCHAR(20),
    email VARCHAR(30),
    phone_number VARCHAR(14),
    hire_date DATE,
    job_id NUMBER(3),
    salary NUMBER(5),
    commission_pct NUMBER(5),
    manager_id NUMBER(3),
    department_id NUMBER(3)
);

INSERT INTO employees(employee_id, first_name, last_name, hire_date) VALUES
(
    20,
    'Hisyam',
    'Daus',
    current_date
);

ALTER TABLE employees
ADD department_name VARCHAR(14);

UPDATE employees SET department_id = 110 WHERE first_name = 'Hisyam';

DELETE FROM employees WHERE employee_id = 20;

INSERT INTO employees(employee_id, first_name, last_name, hire_date) VALUES
(
    30,
    'Lio',
    'Chan',
    current_date
);
INSERT INTO employees(employee_id, first_name, last_name, hire_date) VALUES
(
    40,
    'Sai',
    'Chan',
    current_date
);

UPDATE employees SET employee_id = 110;

--Drop constraint
ALTER TABLE employees DROP CONSTRAINT employee_id_pk; 

SELECT * FROM employees;

