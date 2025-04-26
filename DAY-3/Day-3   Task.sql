-- Monthly sales trends
SELECT
    YEAR(orderDate) AS year,
    MONTH(orderDate) AS month,
    SUM(od.quantityOrdered * od.priceEach) AS monthly_revenue
FROM
    orders o
JOIN
    orderdetails od ON o.orderNumber = od.orderNumber
GROUP BY
    YEAR(orderDate), MONTH(orderDate)
ORDER BY
    year, month;