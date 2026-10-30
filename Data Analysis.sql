CREATE TABLE Sales (
    OrderID INT,
    Product VARCHAR(50),
    Category VARCHAR(50),
    Sales DECIMAL(10,2),
    Profit DECIMAL(10,2),
    Quantity INT,
    City VARCHAR(50),
    Date DATE
);
INSERT INTO Sales
(OrderID, Product, Category, Sales, Profit, Quantity, City, Date)
VALUES
(1, 'Laptop', 'Electronics', 50000, 8000, 5, 'Pune', '2026-01-10'),
(2, 'Mobile', 'Electronics', 30000, 5000, 10, 'Mumbai', '2026-01-15'),
(3, 'Tablet', 'Electronics', 20000, 2000, 8, 'Pune', '2026-02-05'),
(4, 'Laptop', 'Electronics', 60000, 10000, 6, 'Mumbai', '2026-02-12'),
(5, 'Mobile', 'Electronics', 25000, -1000, 12, 'Pune', '2026-02-20'),
(6, 'Tablet', 'Electronics', 15000, 1500, 7, 'Mumbai', '2026-03-01');
select * from sales
TOTAL SALES BY PRODUCT
SELECT Product, SUM(Sales) AS TotalSales
FROM Sales
GROUP BY Product
ORDER BY TotalSales DESC;
TOTAL SALES BY CITY
select city,sum(sales) as totalsales
from sales
group by city 
order by totalsales desc;
total profit by category
select category,sum(profit) as totalprofit
from sales 
group by category
order by totalprofit desc;
MONTHLY SALES
SELECT MONTH(Date) AS SalesMonth,
       SUM(Sales) AS TotalSales
FROM Sales
GROUP BY MONTH(Date)
ORDER BY SalesMonth;
PRODUCTS WITH LOW OR NEGATIVE PROFIT
SELECT PRODUCT ,SUM(PROFIT) AS TOTALPROFIT
FROM Sales
GROUP BY Product
HAVING SUM(PROFIT) <=0;