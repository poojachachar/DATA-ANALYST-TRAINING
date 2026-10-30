CREATE DATABASE SQLPractice;
use SQLPractice;
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    EmployeeName VARCHAR(50),
    Department VARCHAR(30),
    Salary INT,
    City VARCHAR(30)
);
USE SQLPractice;
GO

INSERT INTO Employees
(EmployeeID, EmployeeName, Department, Salary, City)
VALUES
(1, 'Rahul', 'IT', 50000, 'Mumbai'),
(2, 'Priya', 'HR', 45000, 'Pune'),
(3, 'Amit', 'IT', 60000, 'Pune'),
(4, 'Neha', 'Finance', 55000, 'Mumbai'),
(5, 'Ravi', 'Sales', 40000, 'Pune'),
(6, 'Sneha', 'HR', 48000, 'Delhi'),
(7, 'Kiran', 'IT', 65000, 'Mumbai'),
(8, 'Pooja', 'Sales', 42000, 'Pune');
select * from employees
SELECT
SELECT EMPLOYEENAME,SALARY
from employees;
WHERE 
SELECT *
FROM Employees
WHERE Salary > 50000;
ORDER BY
select * from employees
order by salary desc;
DISTINCT
SELECT distinct department 
from employees;
ALIAS
select employeename as name ,
salary as monthly_salary
from employees
filter condition
select employeename as name,salary
from employees
where salary>45000;
FILTER WITH AND
select * 
FROM EMPLOYEES 
WHERE DEPARTMENT ='IT'
AND SALARY >50000;
null
select*
from employees
where salary is null;
select * 
from employees
where salary is not null
create table in q5
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(50),
    City VARCHAR(30)
);

INSERT INTO Customers VALUES
(1, 'Rahul', 'Pune'),
(2, 'Priya', 'Mumbai'),
(3, 'Amit', 'Pune'),
(4, 'Neha', 'Delhi'),
(5, 'Sneha', 'Mumbai');
retrive specific records customer
all customer in pune
SELECT *
FROM Customers
WHERE City = 'Pune';
customer name and city only
SELECT CustomerName, City
FROM Customers;
CustomerID is 3.
SELECT *
FROM Customers
WHERE CustomerID = 3;
product records
CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(50),
    Price INT
);

INSERT INTO Products VALUES
(101, 'Laptop', 50000),
(102, 'Mouse', 500),
(103, 'Keyboard', 1000),
(104, 'Monitor', 12000);
product price >1000
SELECT *
FROM Products
WHERE Price > 1000;
highest price to lowest price
SELECT *
FROM Products
ORDER BY Price DESC;
sales records
CREATE TABLE Sales (
    SaleID INT PRIMARY KEY,
    CustomerID INT,
    ProductID INT,
    Quantity INT,
    TotalAmount INT
);

INSERT INTO Sales VALUES
(1, 1, 101, 1, 50000),
(2, 2, 102, 2, 1000),
(3, 3, 103, 1, 1000),
(4, 4, 104, 1, 12000),
(5, 1, 102, 3, 1500);
total amount greter than 5000
SELECT *
FROM Sales
WHERE TotalAmount > 5000;
all sales from highest total amount to lowest
SELECT *
FROM Sales
ORDER BY TotalAmount DESC;