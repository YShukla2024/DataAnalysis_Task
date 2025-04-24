-- Top customers by purchase amount
SELECT
    c.customerName,
    COUNT(o.orderNumber) AS total_orders,
    SUM(od.quantityOrdered * od.priceEach) AS total_spent
FROM
    customers c
JOIN
    orders o ON c.customerNumber = o.customerNumber
JOIN
    orderdetails od ON o.orderNumber = od.orderNumber
GROUP BY
    c.customerNumber
ORDER BY
    total_spent DESC
LIMIT 10;