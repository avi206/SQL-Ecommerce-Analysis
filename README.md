# SQL E-Commerce Data Analysis & Power BI Dashboard

A practical data analytics project using **MySQL, SQL, and Power BI** to analyze e-commerce sales performance, customer spending, product performance, revenue, and profitability.

![E-Commerce Power BI Dashboard](Dashboard.png)

## Project Overview

This project demonstrates an end-to-end analytics workflow:

1. Create an e-commerce database and relational tables.
2. Load customer, product, order, and transaction data.
3. Use SQL to calculate business metrics and answer analytical questions.
4. Connect the data to Power BI.
5. Present findings through an interactive dashboard.

## Tools & Technologies

- MySQL
- SQL
- Power BI
- Data analysis and KPI reporting

## Business Questions

- What is the total revenue from completed orders?
- Which product categories generate the highest revenue?
- Which customers spend the most?
- How does revenue change month by month?
- Which products generate the highest profit?

## Dashboard KPIs

| KPI | Value |
|---|---:|
| Total Revenue | ₹190.9K |
| Total Profit | ₹33.4K |
| Total Orders | 5 |
| Average Order Value | ₹38.2K |

## SQL Analysis Performed

### 1. Total Revenue

Calculated revenue from completed orders using:

`quantity × selling price`

### 2. Revenue by Category

Compared revenue across product categories using joins, aggregation, and grouping.

### 3. Top Customers

Ranked customers by total spending on completed orders.

### 4. Monthly Revenue Trend

Grouped completed-order revenue by month using `DATE_FORMAT()`.

### 5. Profit per Product

Calculated product profit using:

`(selling price − product cost) × quantity`

## SQL Techniques Used

- `JOIN`
- `SUM()`
- `GROUP BY`
- `ORDER BY`
- `WHERE`
- `DATE_FORMAT()`
- Calculated expressions
- Primary keys and foreign keys

## Key Insights

- **Electronics** generated the highest revenue among the product categories.
- **Laptops and smartphones** were the top-performing products by revenue.
- **March** recorded the highest monthly revenue in the analyzed period.
- A **small number of customers** accounted for a significant portion of total revenue.

These findings are based on the dataset included in this repository.

## Database Structure

The project uses four related tables:

- `customers` — customer details
- `products` — product details and cost
- `orders` — order dates, customers, and order status
- `order_items` — products, quantities, and selling prices

## Repository Structure

```text
SQL-Ecommerce-Analysis/
├── schema.sql       # Database and table creation
├── data.sql         # Data loading statements
├── queries.sql      # SQL analysis queries
├── Dashboard.png    # Power BI dashboard preview
└── README.md        # Project documentation
```

## How to Run

1. Open MySQL Workbench or another MySQL client.
2. Run `schema.sql` to create the database and tables.
3. Run `data.sql` to load the data.
4. Run the queries in `queries.sql`.
5. Open the Power BI dashboard preview included in this repository.

## Project Files

- [Database schema](schema.sql)
- [Data loading script](data.sql)
- [SQL analysis queries](queries.sql)
- [Power BI dashboard](Dashboard.png)

## Author

**Avinash Madhu**  
Data Analyst | Business Analytics

[GitHub Profile](https://github.com/avi206)
