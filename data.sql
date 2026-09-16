/*
  SQL E-Commerce Data Analysis
  Sample Dataset

  Inserts sample records into the ecommerce_analysis database.
  Run schema.sql before running this file.
*/

USE ecommerce_analysis;

/* =========================================================
   1. Customers
   ========================================================= */
INSERT INTO customers (
    customer_id,
    customer_name,
    city,
    state,
    country
)
VALUES
    (1, 'Amit Sharma', 'Mumbai', 'Maharashtra', 'India'),
    (2, 'Rahul Verma', 'Delhi', 'Delhi', 'India'),
    (3, 'Sneha Iyer', 'Bengaluru', 'Karnataka', 'India'),
    (4, 'Anjali Mehta', 'Ahmedabad', 'Gujarat', 'India'),
    (5, 'Rohit Singh', 'Pune', 'Maharashtra', 'India');

/* =========================================================
   2. Products
   ========================================================= */
INSERT INTO products (
    product_id,
    product_name,
    category,
    cost
)
VALUES
    (101, 'Laptop', 'Electronics', 45000),
    (102, 'Smartphone', 'Electronics', 20000),
    (103, 'Office Chair', 'Furniture', 5000),
    (104, 'Running Shoes', 'Footwear', 3000),
    (105, 'Backpack', 'Accessories', 1500);

/* =========================================================
   3. Orders
   ========================================================= */
INSERT INTO orders (
    order_id,
    customer_id,
    order_date,
    order_status
)
VALUES
    (1001, 1, '2024-01-10', 'Completed'),
    (1002, 2, '2024-01-15', 'Completed'),
    (1003, 3, '2024-02-05', 'Cancelled'),
    (1004, 1, '2024-02-18', 'Completed'),
    (1005, 4, '2024-03-01', 'Completed'),
    (1006, 5, '2024-03-12', 'Completed');

/* =========================================================
   4. Order Items
   ========================================================= */
INSERT INTO order_items (
    order_item_id,
    order_id,
    product_id,
    quantity,
    price
)
VALUES
    (1, 1001, 101, 1, 55000),
    (2, 1001, 105, 2, 1800),
    (3, 1002, 102, 1, 25000),
    (4, 1003, 103, 2, 7000),
    (5, 1004, 104, 1, 3500),
    (6, 1004, 105, 1, 1800),
    (7, 1005, 101, 1, 54000),
    (8, 1006, 102, 2, 24000);

/*
  Load order:
  1. schema.sql
  2. data.sql
  3. queries.sql
*/
