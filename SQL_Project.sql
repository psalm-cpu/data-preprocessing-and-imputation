SELECT * FROM axia_sales.sales_data;

SELECT * FROM sales_data LIMIT 10;


SELECT 
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit
FROM sales_data;

SELECT 
    Region,
    SUM(Sales) AS Total_Sales
FROM sales_data
GROUP BY Region
ORDER BY Total_Sales DESC;


SELECT 
    Category,
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit
FROM sales_data
GROUP BY Category
ORDER BY Total_Sales DESC;

SELECT 
    Segment,
    AVG(Sales) AS Average_Sales
FROM sales_data
GROUP BY Segment
ORDER BY Average_Sales DESC;

SELECT *
FROM sales_data
WHERE Sales > 1000
ORDER BY Sales DESC;


SELECT COUNT(*) AS High_Value_Orders
FROM sales_data
WHERE Sales > 1000;

SELECT 
    Sub_Category,
    SUM(Profit) AS Total_Profit
FROM sales_data
GROUP BY Sub_Category
ORDER BY Total_Profit DESC
LIMIT 5;

SELECT 
    Category,
    SUM(Profit) AS Total_Profit
FROM sales_data
GROUP BY Category
HAVING SUM(Profit) > 10000;

SELECT 
    Category,
    SUM(Profit) AS Total_Profit
FROM sales_data
GROUP BY Category
HAVING SUM(Profit) > 10000
ORDER BY Total_Profit DESC;