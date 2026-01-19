Task 3: SQL Basics Queri
Dataset: Superstore


1. Sales, profit and order count by category
SELECT 
    Category,
    SUM(Sales) AS Total_Sales,
    AVG(Profit) AS Average_Profit,
    COUNT(Order_ID) AS Orders_Count
FROM superstore
GROUP BY Category;


2. Categories with total sales greater than 100000
SELECT 
    Category,
    SUM(Sales) AS Total_Sales
FROM superstore
GROUP BY Category
HAVING SUM(Sales) > 100000;



3. Top 5 customers by total spend
SELECT 
    Customer_Name,
    SUM(Sales) AS Total_Sales
FROM superstore
GROUP BY Customer_Name
ORDER BY Total_Sales DESC
LIMIT 5;



4. Monthly sales report
SELECT 
    DATE_FORMAT(Order_Date, '%Y-%m') AS Month,
    SUM(Sales) AS Monthly_Sales
FROM superstore
GROUP BY Month
ORDER BY Month;
