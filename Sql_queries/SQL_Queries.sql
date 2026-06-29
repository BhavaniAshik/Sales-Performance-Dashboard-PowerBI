-- Sales Performance Dashboard SQL Queries

SELECT * FROM Sales;

SELECT ROUND(SUM(Sales),2) AS TotalSales FROM Sales;

SELECT COUNT(DISTINCT OrderID) AS TotalOrders FROM Sales;

SELECT ROUND(SUM(Profit),2) AS TotalProfit FROM Sales;

SELECT Category, ROUND(SUM(Sales),2) AS TotalSales
FROM Sales
GROUP BY Category
ORDER BY TotalSales DESC;

SELECT CustomerName,
ROUND(SUM(Sales),2) AS TotalSales
FROM Sales
GROUP BY CustomerName
ORDER BY TotalSales DESC
LIMIT 10;

SELECT YEAR(OrderDate) AS Year,
MONTH(OrderDate) AS Month,
ROUND(SUM(Sales),2) AS MonthlySales
FROM Sales
GROUP BY YEAR(OrderDate),MONTH(OrderDate)
ORDER BY Year,Month;

SELECT Region,
ROUND(SUM(Sales),2) AS Sales,
ROUND(SUM(Profit),2) AS Profit
FROM Sales
GROUP BY Region;
