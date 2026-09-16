/*
  SQL E-Commerce Data Analysis
  Database Schema

  Creates the ecommerce_analysis database and its related tables.
*/

-- Create and select the database
CREATE DATABASE ecommerce_analysis;
USE ecommerce_analysis;

/* =========================================================
   1. Customers
   Stores customer information.
   ========================================================= */
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    city VARCHAR(50),
    state VARCHAR(50),
    country VARCHAR(50)
);

/* =========================================================
   2. Products
   Stores product details and product cost.
   ========================================================= */
CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    cost DECIMAL(10, 2)
);

/* =========================================================
   3. Orders
   Stores order-level information.
   Each order belongs to one customer.
   ========================================================= */
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    order_status VARCHAR(20),
    FOREIGN KEY (customer_id)
        REFERENCES customers(customer_id)
);

/* =========================================================
   4. Order Items
   Stores the products included in each order.
   Each item belongs to one order and one product.
   ========================================================= */
CREATE TABLE order_items (
    order_item_id INT PRIMARY KEY,
    order_id INT,
    product_id INT,
    quantity INT,
    price DECIMAL(10, 2),
    FOREIGN KEY (order_id)
        REFERENCES orders(order_id),
    FOREIGN KEY (product_id)
        REFERENCES products(product_id)
);

/*
  Relationship summary:

  customers 1 ──── many orders
  orders    1 ──── many order_items
  products  1 ──── many order_items
*/
