# SQL E-Commerce Data Analysis

## Project Overview
This project analyzes an e-commerce dataset using SQL to uncover sales trends, customer behavior, and product performance.

The objective is to practice SQL queries commonly used by data analysts for business insights.

## Tools Used
- MySQL
- SQL (JOIN, GROUP BY, Aggregations)
- Data Analysis Techniques

## Dataset
The dataset contains information about:
- Orders
- Customers
- Products
- Sales transactions

## Key Analysis Performed
1. Total sales by product category
2. Top-performing products
3. Customer purchase behavior
4. Monthly sales trends
5. Revenue contribution by category

## Sample SQL Queries
Example:

```sql
SELECT category, SUM(sales) AS total_sales
FROM orders
GROUP BY category
ORDER BY total_sales DESC;
