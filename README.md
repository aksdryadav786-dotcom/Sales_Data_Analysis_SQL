# 📊 Sales Data Analysis using SQL

## 📌 Project Overview
This project focuses on analyzing sales data using MySQL and SQL queries to generate business insights.

## 🛠 Technologies Used
- MySQL
- SQL
- MySQL Workbench

## 📂 Database Information
Database Name: `sales_analysis`

Table Name: `sales`

Columns:
- order_id
- customer_name
- product_name
- category
- quantity
- price
- order_date
- city

## 🔍 SQL Operations Performed
- Create Database & Table
- Insert Data
- Filtering Data (`WHERE`)
- Sorting (`ORDER BY`)
- Aggregate Functions (`SUM`, `MAX`, `MIN`, `AVG`)
- Grouping (`GROUP BY`)
- Pattern Matching (`LIKE`)
- Data Analysis Queries

## 📈 Business Insights
- Total Revenue Calculation
- Highest & Lowest Price Product
- Category-wise Sales
- City-wise Sales
- Customer Filtering
- Product Filtering

## 🚀 Sample Queries

```sql
SELECT SUM(quantity * price) AS total_revenue
FROM sales;
SELECT product_name, price
FROM sales
WHERE price > 10000;
