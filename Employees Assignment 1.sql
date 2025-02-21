-- Assignment_1

-- Here is the SQL code to create a table for the assignment:

-- Drop the table if it already exixts
DROP TABLE IF EXISTS employees;

-- Create the employees table 
CREATE TABLE employees (
employee_id SERIAL PRIMARY KEY,
first_name VARCHAR(50) NOT NULL,
last_name VARCHAR(50) NOT NULL,
department VARCHAR(70),
salary DECIMAL(10,2),
joining_date DATE NOT NULL,
age INT CHECK (age >= 18)
);

-- Insert some sample data into the "employees" table

-- Insert data into employees table
INSERT INTO employees (first_name, last_name, department, salary, joining_date, age)
VALUES 
("Amit","Sharma", "IT",60000.00,"2022-05-01", 29),
("Neha","Patel","HR",55000.00,"2021-08-15",32),
("Ravi","Kumar","Finance",70000.00,"2020-03-10",35),
("Anjali","Verma","IT",65000.00,"2019-11-22",28),
("Suresh","Reddy","Operations",50000.00,"2023-01-10",26);

SELECT * FROM employees;

-- Practice Assignment Questions with Answers 

-- 1. Retrieve all employees first_names and their departments.
SELECT first_name, department FROM employees;

-- use for where query we can on safe mode in MYSQL RDBMS
SET SQL_SAFE_UPDATES = 0;


-- 2. Update the salary of all employees in the IT department by increasing it by 10%.   (11)
UPDATE employees
SET salary = salary +(salary *0.1)
WHERE dept_name = "IT";

-- 3. Delete all employees who are older than 34 years.
DELETE
FROM employees
WHERE age > 34;

-- 4. Add a new column "email" to the "employees" table.
ALTER TABLE employees
ADD COLUMN email VARCHAR(70) NOT NULL;

-- 5. Rename the "department" column to "dept_name".
ALTER TABLE employees
RENAME COLUMN department TO dept_name;

-- 6. Retrieve the names of employees who joined after january 1, 2021. 
SELECT first_name, joining_date
FROM employees
WHERE joining_date > "2021-01-01";

-- 7. Change the datatype of the salary column to integer. 
ALTER TABLE employees
MODIFY COLUMN salary integer;

-- 8. List all employees with their age and salary in descending order of salary. 
SELECT first_name, last_name, age, salary
FROM employees
ORDER BY salary DESC;

-- 9. Insert a new employee with the following details: Raj, Singh, Marketing, 60000, 2023-09-15,30. 
INSERT INTO employees (first_name, last_name, dept_name, salary, joining_date, age,email)
VALUES 
("Raj","Singh","Marketing",60000.00,"2023-09-15",30, "rajsingh@gmail.com");
SELECT * FROM employees;

-- 10. Update age of employee +1 to every employees. 
UPDATE employees
SET age = age + 1;

SELECT * FROM employees;









