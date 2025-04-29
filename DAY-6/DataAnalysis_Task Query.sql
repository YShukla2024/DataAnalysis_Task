use online_sales;

show tables;

SELECT 
    EXTRACT(YEAR FROM order_date) AS year,
    EXTRACT(MONTH FROM order_date) AS month,
    SUM(sales) AS monthly_revenue,
    COUNT(DISTINCT order_id) AS order_volume,
    SUM(quantity) AS total_items_sold
FROM 
    Orders
GROUP BY 
    year, month
ORDER BY 
    year, month;
    
    # 2. Product Performance Analysis
    SELECT 
    p.product_name,
    p.category,
    COUNT(o.order_id) AS total_orders,
    SUM(o.quantity) AS total_units_sold,
    SUM(o.sales) AS total_revenue,
    ROUND(SUM(o.sales) / SUM(o.quantity), 2) AS avg_price_per_unit
FROM 
    Orders o
JOIN 
    Products p ON o.product_id = p.product_id
GROUP BY 
    p.product_name, p.category
ORDER BY 
    total_revenue DESC;
    
    
   # 3. Customer Segmentation Analysis
   SELECT 
    c.gender,
    c.city,
    COUNT(DISTINCT o.customer_id) AS unique_customers,
    COUNT(o.order_id) AS total_orders,
    SUM(o.sales) AS total_spend,
    ROUND(SUM(o.sales) / COUNT(DISTINCT o.customer_id), 2) AS avg_spend_per_customer
FROM 
    Orders o
JOIN 
    Customers c ON o.customer_id = c.customer_id
GROUP BY 
    c.gender, c.city
ORDER BY 
    total_spend DESC;
    
    
   # 4. Time-Based Analysis (Daily Patterns)
   SELECT 
    DAYNAME(order_date) AS day_of_week,
    COUNT(order_id) AS orders_count,
    SUM(sales) AS daily_revenue,
    ROUND(SUM(sales) / COUNT(order_id), 2) AS avg_order_value
FROM 
    Orders
GROUP BY 
    day_of_week
ORDER BY 
    FIELD(day_of_week, 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday');
    
    
    #5. Customer Purchase Frequency
    SELECT 
    c.customer_name,
    c.city,
    COUNT(o.order_id) AS order_count,
    SUM(o.sales) AS total_spend,
    DATEDIFF(MAX(o.order_date), MIN(o.order_date)) AS days_active,
    ROUND(COUNT(o.order_id) / (DATEDIFF(MAX(o.order_date), MIN(o.order_date)) / 30), 2) AS orders_per_month
FROM 
    Orders o
JOIN 
    Customers c ON o.customer_id = c.customer_id
GROUP BY 
    c.customer_id, c.customer_name, c.city
HAVING 
    COUNT(o.order_id) > 1
ORDER BY 
    order_count DESC;
    
    
   # 6. Product Category Performance Over Time
SELECT 
    DATE_FORMAT(o.order_date, '%Y%m') AS year,
    p.category,
    SUM(o.sales) AS category_revenue,
    ROUND(SUM(o.sales) * 100 / (
        SELECT SUM(sales)
        FROM Orders o2
        WHERE DATE_FORMAT(o2.order_date, '%Y%m') = DATE_FORMAT(o.order_date, '%Y%m')
    ), 2) AS revenue_percentage
FROM 
    Orders o
JOIN 
    Products p ON o.product_id = p.product_id
GROUP BY 
    DATE_FORMAT(o.order_date, '%Y%m'),
    p.category
ORDER BY 
    year, 
    category_revenue DESC;
    
    
    
    