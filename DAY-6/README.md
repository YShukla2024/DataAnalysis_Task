# Sales Trend Analysis - SQL Project

## 📌 Project Overview

This project analyzes sales trends using SQL queries on a sample e-commerce dataset containing customer, product, and order information. The analysis focuses on monthly revenue patterns, product category performance, and customer purchasing behavior.

## 🗃️ Database Schema

### Tables Structure

1. **Customers**
   ```sql
   CREATE TABLE Customers (
       customer_id INT,
       customer_name VARCHAR(50),
       age INT,
       gender VARCHAR(50),
       city VARCHAR(50)
   );
   ```

2. **Products**
   ```sql
   CREATE TABLE Products (
       product_id INT,
       product_name VARCHAR(50),
       category VARCHAR(50),
       price DECIMAL(10, 2)
   );
   ```

3. **Orders**
   ```sql
   CREATE TABLE Orders (
       order_id INT,
       customer_id INT,
       product_id INT,
       quantity INT,
       order_date DATE,
       sales DECIMAL(10, 2)
   );
   ```

## 🔍 Key Analysis Queries

### 1. Monthly Sales Trend Analysis
```sql
SELECT 
    DATE_FORMAT(order_date, '%Y-%m') AS month,
    SUM(sales) AS total_revenue,
    COUNT(DISTINCT order_id) AS order_count,
    SUM(quantity) AS items_sold
FROM Orders
GROUP BY DATE_FORMAT(order_date, '%Y-%m')
ORDER BY month;
```

### 2. Product Category Performance
```sql
SELECT 
    p.category,
    SUM(o.sales) AS revenue,
    COUNT(o.order_id) AS orders,
    SUM(o.quantity) AS units_sold,
    ROUND(SUM(o.sales)/SUM(o.quantity), 2) AS avg_price
FROM Orders o
JOIN Products p ON o.product_id = p.product_id
GROUP BY p.category
ORDER BY revenue DESC;
```

### 3. Customer Segmentation Analysis
```sql
SELECT 
    c.city,
    c.gender,
    COUNT(DISTINCT o.customer_id) AS customers,
    SUM(o.sales) AS revenue,
    ROUND(SUM(o.sales)/COUNT(DISTINCT o.customer_id), 2) AS avg_spend
FROM Orders o
JOIN Customers c ON o.customer_id = c.customer_id
GROUP BY c.city, c.gender
ORDER BY revenue DESC;
```

## 📊 Sample Insights

1. **Revenue Trends**:
   - Highest revenue months
   - Seasonal patterns
   - Month-over-month growth

2. **Product Analysis**:
   - Best performing categories
   - Average selling prices
   - Units sold per category

3. **Customer Behavior**:
   - Geographic distribution
   - Gender spending patterns
   - Average order value

## 🛠️ Setup Instructions

1. Create database and tables using the schema above
2. Insert sample data provided in the SQL scripts
3. Execute analysis queries to generate insights

## 📈 Visualization Recommendations

1. **Monthly Trends**:
   - Line chart of revenue over time
   - Bar chart of order volume by month

2. **Category Performance**:
   - Pie chart of revenue by category
   - Scatter plot of price vs units sold

3. **Customer Segmentation**:
   - Heatmap of revenue by city/gender
   - Bar chart of average spend by demographic

## 📝 Notes

- All queries are MySQL-compatible
- Date formatting uses '%Y-%m' for standard YYYY-MM format
- Calculations handle NULL values appropriately
- Results can be exported to CSV for further analysis

## 🤝 Contribution

Feel free to:
- Add additional analysis dimensions
- Improve query performance
- Suggest new visualizations
- Report any issues
