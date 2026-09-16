/*
  SQL E-Commerce Data Analysis
  Repository: avi206/SQL-Ecommerce-Analysis

  Purpose:
  Analyze revenue, customer spending, monthly sales trends,
  category performance, and product profitability.
*/

/* =========================================================
   1. Total Revenue — Completed Orders Only
   ========================================================= */
SELECT
    SUM(oi.quantity * oi.price) AS total_revenue
FROM orders AS o
JOIN order_items AS oi
    ON o.order_id = oi.order_id
WHERE o.order_status = 'Completed';


/* =========================================================
   2. Revenue by Product Category
   ========================================================= */
SELECT
    p.category,
    SUM(oi.quantity * oi.price) AS revenue
FROM orders AS o
JOIN order_items AS oi
    ON o.order_id = oi.order_id
JOIN products AS p
    ON oi.product_id = p.product_id
WHERE o.order_status = 'Completed'
GROUP BY p.category;


/* =========================================================
   3. Top Customers by Total Spend
   ========================================================= */
SELECT
    c.customer_name,
    SUM(oi.quantity * oi.price) AS total_spent
FROM customers AS c
JOIN orders AS o
    ON c.customer_id = o.customer_id
JOIN order_items AS oi
    ON o.order_id = oi.order_id
WHERE o.order_status = 'Completed'
GROUP BY c.customer_name
ORDER BY total_spent DESC;


/* =========================================================
   4. Monthly Revenue Trend
   ========================================================= */
SELECT
    DATE_FORMAT(o.order_date, '%Y-%m') AS month,
    SUM(oi.quantity * oi.price) AS revenue
FROM orders AS o
JOIN order_items AS oi
    ON o.order_id = oi.order_id
WHERE o.order_status = 'Completed'
GROUP BY month
ORDER BY month;


/* =========================================================
   5. Profit per Product
   ========================================================= */
SELECT
    p.product_name,
    SUM((oi.price - p.cost) * oi.quantity) AS profit
FROM orders AS o
JOIN order_items AS oi
    ON o.order_id = oi.order_id
JOIN products AS p
    ON oi.product_id = p.product_id
WHERE o.order_status = 'Completed'
GROUP BY p.product_name;
