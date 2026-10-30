CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    EmployeeName VARCHAR(50),
    DepartmentID INT
);

INSERT INTO Employees VALUES
(1, 'Rahul', 101),
(2, 'Priya', 102),
(3, 'Amit', 101),
(4, 'Neha', 103),
(5, 'Ravi', NULL);
TABLE 2 DEPARTMENT
CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(50)
);

INSERT INTO Departments VALUES
(101, 'IT'),
(102, 'HR'),
(103, 'Finance'),
(104, 'Sales');
select * from Departments;

SELECT Employees.EmployeeName,
       Departments.DepartmentName
FROM Employees
INNER JOIN Departments
ON Employees.DepartmentID = Departments.DepartmentID;

SELECT COLUMN_NAME
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'Employees';
SELECT * FROM Departments;
INNER JOIN
SELECT Employees.EmployeeName,
       Departments.DepartmentName
FROM Employees
INNER JOIN Departments
ON Employees.Department = Departments.DepartmentName;
LEFT JOIN
SELECT Employees.EmployeeName,
       Departments.DepartmentName
FROM Employees
LEFT JOIN Departments
ON Employees.Department = Departments.DepartmentName;
GROUP BY
SELECT department, count (*) as totalemployees
from employees
group by department;
HAVING
SELECT Department, COUNT(*) AS TotalEmployees
FROM Employees
GROUP BY Department
HAVING COUNT(*) > 2;
SELECT Department, AVG(Salary) AS AverageSalary
FROM Employees
GROUP BY Department
HAVING AVG(Salary) > 45000;
cCOUNT()
SELECT Department, COUNT(*) AS TotalEmployees
FROM Employees
GROUP BY Department;
SUM()
SELECT SUM(Salary) AS TotalSalary
FROM Employees;
mMAX()
SELECT max(Salary) AS HighestSalary
FROM Employees;
min()
SELECT MIN(Salary) AS LowestSalary
FROM Employees;
CASE WHEN
SELECT EmployeeName, Salary,
       CASE
           WHEN Salary >= 55000 THEN 'High Salary'
           WHEN Salary >= 45000 THEN 'Medium Salary'
           ELSE 'Low Salary'
       END AS SalaryCategory
FROM Employees;
SUBQUERY
SELECT EmployeeName, Salary
FROM Employees
WHERE Salary > (
    SELECT AVG(Salary)
    FROM Employees
);
 TABLE
CREATE TABLE Sales (
    SaleID INT PRIMARY KEY,
    CustomerName VARCHAR(50),
    ProductName VARCHAR(50),
    SaleDate DATE,
    Amount DECIMAL(10,2)
);
select * from sales;
SELECT CustomerID,
       SUM(TotalAmount) AS TotalSales
FROM Sales
GROUP BY CustomerID;
sales by product
SELECT ProductID,
       SUM(TotalAmount) AS TotalSales
FROM Sales
GROUP BY ProductID;
ALTER TABLE Sales
ADD SaleDate DATE;
UPDATE Sales
SET SaleDate = CASE SaleID
    WHEN 1 THEN '2026-01-10'
    WHEN 2 THEN '2026-01-15'
    WHEN 3 THEN '2026-02-05'
    WHEN 4 THEN '2026-02-12'
    WHEN 5 THEN '2026-03-08'
END;
calculate slaes by customer and month
SELECT
    CustomerID,
    YEAR(SaleDate) AS SalesYear,
    MONTH(SaleDate) AS SalesMonth,
    SUM(TotalAmount) AS TotalSales
FROM Sales
GROUP BY
    CustomerID,
    YEAR(SaleDate),
    MONTH(SaleDate)
ORDER BY
    CustomerID,
    SalesYear,
    SalesMonth;