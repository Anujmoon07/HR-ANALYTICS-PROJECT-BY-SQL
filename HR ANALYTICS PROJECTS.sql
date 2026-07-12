-- CREATE DATABASE HR ANALYTICS
CREATE DATABASE HR_Analytics;
USE HR_Analytics;

-- CREATE TABLE DEPARTMENTS
CREATE TABLE Departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50),
    manager_name VARCHAR(100)
);

-- CREATE TABLE Employees
CREATE TABLE Employees (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    gender VARCHAR(10),
    age INT,
    department_id INT,
    job_role VARCHAR(50),
    salary DECIMAL(10,2),
    hire_date DATE,
    years_at_company INT,
    performance_rating INT,
    overtime VARCHAR(5),
    attrition VARCHAR(5),
    FOREIGN KEY (department_id)
    REFERENCES Departments(department_id)
);



-- CREATE TABLE Attendance
CREATE TABLE Attendance (
    attendance_id INT PRIMARY KEY,
    employee_id INT,
    attendance_date DATE,
    status VARCHAR(20),
    FOREIGN KEY(employee_id)
    REFERENCES Employees(employee_id)
);

-- CREATE TABLE Training
CREATE TABLE Training (
    training_id INT PRIMARY KEY,
    employee_id INT,
    course_name VARCHAR(100),
    training_hours INT,
    completion_date DATE,
    FOREIGN KEY(employee_id)
    REFERENCES Employees(employee_id)
);


-- INSERT VALUES IN DEPARTMENTS
INSERT INTO Departments (department_id, department_name, manager_name) VALUES
(101, 'Human Resources', 'Amit Sharma'),
(102, 'Finance', 'Priya Patel'),
(103, 'Sales', 'Rahul Verma'),
(104, 'Marketing', 'Neha Gupta'),
(105, 'IT', 'Karan Mehta'),
(106, 'Operations', 'Sneha Joshi'),
(107, 'Customer Support', 'Rohan Singh'),
(108, 'Research & Development', 'Anjali Desai'),
(109, 'Procurement', 'Vikram Rao'),
(110, 'Administration', 'Pooja Kulkarni');


-- INSERT VALUES IN EMPLOYEES
INSERT INTO Employees
(employee_id, first_name, last_name, gender, age, department_id,
 job_role, salary, hire_date, years_at_company,
 performance_rating, overtime, attrition)

VALUES

(1,'Anuj','Moon','Male',24,105,'Data Analyst',65000,'2023-02-15',2,4,'Yes','No'),
(2,'Riya','Sharma','Female',28,104,'Marketing Executive',55000,'2021-08-10',4,5,'No','No'),
(3,'Akash','Patil','Male',35,103,'Sales Manager',95000,'2019-06-22',6,3,'Yes','Yes'),
(4,'Sneha','Joshi','Female',31,102,'Finance Analyst',72000,'2020-01-15',5,4,'No','No'),
(5,'Kunal','Verma','Male',27,105,'Software Engineer',85000,'2022-04-18',3,5,'Yes','No'),
(6,'Pooja','Deshmukh','Female',30,101,'HR Executive',48000,'2021-03-20',4,4,'No','No'),
(7,'Rahul','Singh','Male',38,106,'Operations Manager',110000,'2018-07-11',7,5,'Yes','No'),
(8,'Neha','Patel','Female',26,107,'Customer Support Executive',38000,'2024-01-12',1,3,'No','No'),
(9,'Amit','Kulkarni','Male',42,108,'Research Scientist',140000,'2017-09-15',8,5,'No','No'),
(10,'Priya','Gupta','Female',33,109,'Procurement Officer',68000,'2020-05-28',5,4,'Yes','Yes'),
(11,'Rohan','Yadav','Male',29,105,'Database Administrator',92000,'2022-01-10',3,5,'No','No'),
(12,'Anjali','Mehta','Female',36,102,'Senior Accountant',78000,'2019-11-18',6,4,'No','No'),
(13,'Vikas','Jain','Male',25,104,'Digital Marketing Executive',52000,'2023-09-01',2,3,'Yes','No'),
(14,'Komal','More','Female',32,103,'Sales Executive',60000,'2021-02-14',4,4,'Yes','No'),
(15,'Sagar','Pawar','Male',40,110,'Admin Manager',88000,'2018-03-09',7,5,'No','No');



-- INSERT VALUES IN ATTENDANCE
INSERT INTO Attendance
(attendance_id, employee_id, attendance_date, status)

VALUES

(1,1,'2025-01-01','Present'),
(2,1,'2025-01-02','Present'),
(3,2,'2025-01-01','Leave'),
(4,2,'2025-01-02','Present'),
(5,3,'2025-01-01','Absent'),
(6,3,'2025-01-02','Present'),
(7,4,'2025-01-01','Present'),
(8,5,'2025-01-01','Work From Home'),
(9,6,'2025-01-01','Present'),
(10,7,'2025-01-01','Present'),
(11,8,'2025-01-01','Leave'),
(12,9,'2025-01-01','Present'),
(13,10,'2025-01-01','Present'),
(14,11,'2025-01-01','Absent'),
(15,12,'2025-01-01','Present'),
(16,13,'2025-01-01','Present'),
(17,14,'2025-01-01','Work From Home'),
(18,15,'2025-01-01','Present');


-- INSERT VALUES IN TRAINING
INSERT INTO Training
(training_id, employee_id, course_name, training_hours, completion_date)

VALUES

(1,1,'SQL',20,'2025-03-15'),
(2,1,'Power BI',18,'2025-04-20'),
(3,2,'Excel',15,'2025-02-10'),
(4,3,'Leadership',30,'2025-01-25'),
(5,4,'Python',25,'2025-03-30'),
(6,5,'AWS',35,'2025-04-15'),
(7,6,'Communication',10,'2025-02-18'),
(8,7,'Machine Learning',40,'2025-05-12'),
(9,8,'Customer Service',16,'2025-03-08'),
(10,9,'Cyber Security',28,'2025-04-22'),
(11,10,'SQL',20,'2025-02-28'),
(12,11,'Power BI',18,'2025-05-01'),
(13,12,'Finance Analytics',22,'2025-01-30'),
(14,13,'Digital Marketing',24,'2025-03-19'),
(15,14,'Sales Strategy',26,'2025-04-10');


-- QUESTIONS :-

-- EDA METHOD

-- 1. CHECKING NULL VALUES
SELECT *
FROM DEPARTMENTS
WHERE department_id IS NULL
OR department_name IS NULL
OR manager_name IS NULL;

-- 2. IN EMPLOYEES TABLE
SELECT *
FROM EMPLOYEES
WHERE employee_id IS NULL
OR first_name IS NULL
OR last_name IS NULL
OR gender IS NULL
OR age IS NULL
OR department_id IS NULL
OR job_role IS NULL
OR salary IS NULL
OR hire_date IS NULL
OR years_at_company IS NULL
OR performance_rating IS NULL
OR overtime IS NULL
OR attrition  IS NULL;


-- 3. IN ATTENDENCE TABLES
SELECT *
FROM ATTENDANCE
WHERE attendance_id IS NULL
OR employee_id IS NULL
OR attendance_date IS NULL;

-- 3. IN TRAINING TABLES
SELECT *
FROM TRAINING
WHERE training_id IS NULL
OR employee_id IS NULL
OR course_name IS NULL
OR  training_hours IS NULL
OR completion_date IS NULL;


-- Display all Tables.
SELECT * 
FROM DEPARTMENTS;

SELECT * 
FROM EMPLOYEES;

SELECT * 
FROM ATTENDANCE;

SELECT * 
FROM TRAINING;

-- Find employees older than 30.
SELECT *
FROM EMPLOYEES
WHERE AGE >= 30;

-- List female employees.
SELECT * 
FROM EMPLOYEES
WHERE GENDER = 'FEMALE';

-- Display employees hired after 2022.
SELECT * 
FROM EMPLOYEES
WHERE YEAR(HIRE_DATE) > 2022 ;

-- Employees earning more than ₹70,000.
SELECT * 
FROM EMPLOYEES
WHERE SALARY > 70000;


-- Aggregate Queries

-- SUM Aggregate Queries
SELECT SUM(SALARY) AS TOTAL_SALARY
FROM EMPLOYEES;

-- MAX Aggregate Queries
SELECT MAX(SALARY) AS Maximum_SALARY
FROM EMPLOYEES;

-- MIN Aggregate Queries
SELECT MIN(SALARY) AS Minimum_SALARY
FROM EMPLOYEES;

-- AVERAGE Aggregate Queries
SELECT AVG(SALARY) AS Average_SALARY
FROM EMPLOYEES;

-- MAX Aggregate Queries
SELECT COUNT(*) AS TOTAL_ROWS
FROM EMPLOYEES;

-- GROUP BY
-- Employees by department.
SELECT department_id,SUM(SALARY)
FROM EMPLOYEES
GROUP BY department_id;

-- 2. Average Salary by Department
SELECT department_id,AVG(SALARY)
FROM EMPLOYEES
GROUP BY department_id;

-- 3. Highest Salary by Department
SELECT department_id,MAX(SALARY)
FROM EMPLOYEES
GROUP BY department_id;

-- 4. Employees by Gender
SELECT gender,COUNT(*)
FROM EMPLOYEES
GROUP BY gender;


-- -- JOIN Queries
-- -- Employee with department name.
SELECT E.EMPLOYEE_ID,E.FIRST_NAME,E.LAST_NAME,D.DEPARTMENT_NAME
FROM EMPLOYEES E INNER JOIN DEPARTMENTS D
ON E.DEPARTMENT_ID= D.DEPARTMENT_ID;

-- Employees with attendance
SELECT E.FIRST_NAME,E.LAST_NAME,E.AGE,A.ATTENDANCE_DATE,A.STATUS
FROM EMPLOYEES E LEFT JOIN ATTENDANCE A
ON E.EMPLOYEE_ID = A.EMPLOYEE_ID;

-- Employees with training
SELECT E.EMPLOYEE_ID,T.TRAINING_ID,T.COURSE_NAME,T.TRAINING_HOURS,T.COMPLETION_DATE
FROM EMPLOYEES E INNER JOIN TRAINING T
ON E.EMPLOYEE_ID = T.EMPLOYEE_ID;

-- Employees without training.
SELECT E.EMPLOYEE_ID,E.FIRST_NAME,E.LAST_NAME,T.TRAINING_ID
FROM EMPLOYEES E LEFT JOIN TRAINING T
ON E.EMPLOYEE_ID = T.EMPLOYEE_ID
WHERE T.TRAINING_ID IS NULL;


-- Subqueries
-- Employees earning above average salary.
SELECT * 
FROM EMPLOYEES
WHERE SALARY > (SELECT AVG(SALARY)
FROM EMPLOYEES);

-- Employees with RANK 1 SALARY
SELECT * FROM (
SELECT EMPLOYEE_ID,FIRST_NAME,LAST_NAME,SALARY,
RANK() OVER ( ORDER BY SALARY DESC) AS RN
FROM EMPLOYEES) AS EMP
WHERE RN=1;


-- CREATE VIEWS
 CREATE VIEW ANUJS AS 
 SELECT AGE,AVG(SALARY)
 FROM EMPLOYEES
 GROUP BY AGE;
 
 SELECT *
 FROM ANUJS;
 
 -- COMMON TABLE EXPRESSION
 WITH DATAS AS (
 SELECT FIRST_NAME,LAST_NAME,AGE,AVG(SALARY)
 FROM EMPLOYEES
 GROUP BY FIRST_NAME,LAST_NAME,AGE
 HAVING AVG(SALARY)>45000
 )
 SELECT * FROM DATAS;
