CREATE DATABASE superstore;

SELECT * FROM sales_data;

-- Q1) What is the total sales, total profit, and total number of orders?
SELECT ROUND(SUM(sales),2) AS Total_Sales, ROUND(SUM(profit),2) AS Total_Profit, 
COUNT(order_id) AS Total_Orders
FROM sales_data;


-- Q2) How many unique customers are there?
SELECT COUNT(DISTINCT customer_id) AS Total_Customers
FROM sales_data


-- Q3) What are the distinct product categories and sub-categories?
SELECT COUNT(DISTINCT category) AS Total_Categories, COUNT(DISTINCT [sub-category]) AS Total_Subcategories
FROM sales_data

-- Q4) What is the total sales and profit by region?
SELECT region AS Region ,ROUND(SUM(sales),2) AS Total_Sales, ROUND(SUM(Profit),2) AS Total_Profit
FROM sales_data
GROUP BY region;

-- Q5) What is the average discount across all orders?
SELECT ROUND(AVG(discount),2) AS Average_Discount
FROM sales_data;

-- Q6) What is total sales and profit by category and sub-category?
SELECT category, [sub-category], ROUND(SUM(sales),2)  AS Total_Sales, ROUND(SUM(profit),2) AS Total_Profit
FROM sales_data
GROUP BY category, [sub-category];


-- Q7) Which are the top 10 highest revenue-generating products?
SELECT TOP 10 product_name AS Products
FROM sales_data
GROUP BY product_name
ORDER BY SUM(sales) DESC;


-- Q8) Which customer segment contributes the most sales?

SELECT TOP 1 segment AS Segment
FROM sales_data
GROUP BY segment
ORDER BY SUM(sales) DESC;


-- Q9) What is the monthly sales trend over time?

SELECT year AS Years, month AS Months, SUM(sales) AS [Total Sales]
FROM sales_data
GROUP BY year, month
ORDER BY Years DESC, Months ASC;


-- Q10) Which region has the highest average profit per order

SELECT TOP 1 region AS [Region with highest avg profit]
FROM sales_data
GROUP BY region
ORDER BY AVG(profit) DESC;

-- Q11) Which sub-categories are loss-making (negative profit)?

SELECT [sub-category] AS [Sub-Category], ROUND(SUM(profit),2) AS [Total_Loss]
FROM sales_data
GROUP BY [sub-category]
HAVING SUM(profit)<0;


-- Q12) What is the profit margin for each category?

SELECT category AS Category, ROUND((SUM(profit)/SUM(sales)*100),2) AS Profit_Margin
FROM sales_data
GROUP BY category;


-- Q13) Find top 5 customers by sales in each region

SELECT region AS Region, customer_name AS Customer
FROM (
	SELECT region, customer_name,
	DENSE_RANK() OVER(PARTITION BY region ORDER BY SUM(SALES) DESC) AS Ranks
	FROM sales_data
	GROUP BY region, customer_name) AS X
WHERE RANKS <=5;


-- Q14) Identify repeat vs one-time customers

SELECT customer_name AS Customer,Type_of_Customer
FROM 
	(SELECT customer_name, COUNT(customer_id) AS Frequency,
	CASE WHEN COUNT(customer_id)>1 THEN 'Repeated_Customer'
	ELSE 'One_Time_Customer'
	END AS "Type_of_Customer"
	FROM sales_data
	GROUP BY customer_name) AS X

-- Q15) Which shipping mode is mainly used?

SELECT ship_mode AS Shipping_Mode, COUNT(*) AS Total_Number
FROM sales_data
GROUP BY ship_mode
ORDER BY Total_Number DESC;

-- Q16) What is the average delivery period of each shipping mode?
SELECT ship_mode AS Shipping_Mode, AVG(DATEDIFF(Day,order_date,ship_date) ) AS Total_Days
FROM sales_data
GROUP BY ship_mode
ORDER BY Total_Days;
