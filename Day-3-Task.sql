-- Products that are often ordered together
SELECT
    a.productCode AS product1,
    b.productCode AS product2,
    COUNT(*) AS times_ordered_together
FROM
    orderdetails a
JOIN
    orderdetails b ON a.orderNumber = b.orderNumber
    AND a.productCode < b.productCode
GROUP BY
    product1, product2
ORDER BY
    times_ordered_together DESC
LIMIT 10;